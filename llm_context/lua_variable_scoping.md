[[Addons]] in ''World of Warcraft'' share a single execution environment. As a result, all Addons have access to the same global variables. If one Addon creates a global variable named "foo", then all other addons can use (or overwrite) that same variable. This allows for some really useful things to happen; the most frequently used tactic that takes advantage of this feature is [[Hooking functions|hooking]]. Unfortunately, this can also cause some problems in addons. They will conflict if more than one Addon tries to use the same name for a variable. As a result, Addon authors must ensure that their Addons don't conflict by doing one (or more) of the following:
#Using assuredly-unique names for variables, such as MyAddon_MyFrame_OnLoad
#Making their addons [[Object_Oriented_Programming|object-oriented]] 
#Using variable ''scope'' to the author's advantage.

==What is scope?==
No, it's not just a mouthwash. A variable's ''scope'' defines how visible it is to the rest of the program. The feature exists in most high-level languages and [[Lua]] is no exception.

Variables can exist in two forms: "global" or "local." A global variable is accessible to everything and is not limited. This is the default functionality in Lua. This is unlike many other languages, such as PHP and C, where a variable is always local unless declared global. This difference is important to note. A global variable is not limited to its file, function, or code block:

   foo = 1;
   function bar()
      foo = 2;
   end
   bar();
   DEFAULT_CHAT_FRAME:AddMessage(foo);  -- Will output "2"

   foo = 1;
   if (true) then
      foo = 2;
   end
   DEFAULT_CHAT_FRAME:AddMessage(foo); -- Will output "2"

   -- File #1
   foo = 2;
   -- File #2 (run after File #1)
   DEFAULT_CHAT_FRAME:AddMessage(foo); -- Will output "2"

This is precisely the opposite functionality of a local variable, which is limited in scope. Take the following examples, where variable scope comes into play. The reasoning behind this functionality will be explained a bit later, but for now these are shown as a general overview of what scope is:

   local foo = 1;
   function bar()
      local foo = 2;
   end
   bar();
   DEFAULT_CHAT_FRAME:AddMessage(foo); -- Will output "1"

   local foo = 1;
   if (true) then
      local foo = 2;
   end
   DEFAULT_CHAT_FRAME:AddMessage(foo); -- Will output "1"

   -- File #1
   local foo = 1;
   -- File #2
   DEFAULT_CHAT_FRAME:AddMessage(foo); -- Fails; foo does not exist (is nil)


Whenever writing addons, it is important to understand the concept of a variable's scope, because it tells the author where a variable is defined (and in some cases, which variable will be used). In general, it is best, in most programming languages, to keep a limited-scope approach, that is, to minimize variable visibility. If a variable does not need to be accessed by other addons and files, it should be kept local. Excessive, unnecessary use of global variables is called "polluting the global namespace" and is often looked upon as a messy or sloppy programming practice.

===Out of scope and garbage collection===
A variable is said to have gone "out of scope" when it is no longer accessible by the currently executing code block. If a variable is out of scope, it is eligible for garbage collection. If no accessible references exist to the variable anymore, the variable will be garbage collected at some point in the future. Take note that this implies that global variables will never be garbage collected unless they are overwritten because they never go out of scope.

==Local variables==
Local variables exist in many forms. What's important to remember is that local variables exist in a minimal-scope context. That is, they only exist for the block in which they are defined. Although they are all declared in the same fashion, local variables can effectively be split into four types. These types are listed below, ordered from most visible to least visible:
#File-local variables
#Function-local variables
#Block-local variables
#Addon-local variables

===File-local variables===
File-local variables, as their name suggests, are local to the file in which they are declared. To be accessible throughout the entire file, they must be declared outside of any function or code blocks, otherwise they will become function-local or block-local, respectively. These variables are not accessible in any other file. Addons can make extensive use of these types of local variables because it ensures that variable names will not conflict with other addons. These types of local variables are especially effective for variables which may need to be accessed throughout the file in which they are declared (often times, this is the entire addon), but never needed outside of that file. This can allow an author to use very simple, easy-to-remember variable names, without worrying about conflicting with other addons. Take the following examples:

   --MyAddon.lua
   local name = "MyAddon";  -- File local variable; not accessible outside MyAddon.lua
   function MyAddon()
      DEFAULT_CHAT_FRAME:AddMessage(name); -- Always Outputs "MyAddon"
   end
   --MyAddon2.lua
   local name = "MyAddon2"; -- Does not conflict with MyAddon.lua's name. This is a different variable.
   function MyAddon2()
      DEFAULT_CHAT_FRAME:AddMessage(name); -- Always outputs "MyAddon2"
   end

These two addons use the same variable name, but in different scopes, so they do not conflict. As a result, everything runs smoothly. Depending on which function you call, it will output the correct value. If the variables ''weren't'' declared as local, then we would run into problems:

   --MyAddon.lua (loaded first)
   name = "MyAddon";
   function MyAddon()
      DEFAULT_CHAT_FRAME:AddMessage(name);
   end
   --MyAddon2.lua (loaded second)
   name = "MyAddon2";
   function MyAddon2()
      DEFAULT_CHAT_FRAME:AddMessage(name);
   end

Now, note that in this example, no matter which function we call, we will always see "MyAddon2" output. This is because MyAddon2.lua was loaded second, and overwrote MyAddon.lua's name. They both use the same global scope, and as such, they are the same variable. Thus, using file-local variables for those variables which only the addon is concerned about is always considered a best-practice, as it limits visibility and overall prevents conflicts. This practice allows you to use much simpler names without needing to worry about whether or not the same name will be used by another addon.

===Function-local variables===
Function-local variables are not declared, but are still local variables nonetheless. They are created when a function is called, and are the parameters of a function. Take the following example function:

   function foo(bar, baz)
      -- Code block
   end

Two local variables, bar and baz, are created. They are not accessible outside of the function, however they can be used within the function as if they were any other variable. The following code segment demonstrates this system:

   function foo(bar, baz)
      local n = bar + baz;
      DEFAULT_CHAT_FRAME:AddMessage(tostring(bar).." + "..tostring(baz).." = "..tostring(n));
   end
   foo(1,2)                                                           -- Prints 1 + 2 = 3
   DEFAULT_CHAT_FRAME:AddMessage(tostring(bar).." + "..tostring(baz).." = "..tostring(n)); -- Prints nil + nil = nil (out of scope)

Function-local parameter variables are not directly declared by the author (though they are essentially created by the author, as the author created the function), but they operate in the same manner. They are still local variables and should be treated as such. Besides the parameters the author can still explicitly declare local variables inside the function that are function-local variables.

===Block-local variables===
Block-local variables, like their name suggests, are variables which are accessible only within the code block in which they are defined. These are often used for simplistic names which only need to be quickly accessed within that function and nowhere else. These are often counters or temporary variables which are no longer necessary once the function returns. Take the following function, for example, which adds two numbers together:

   function add(a, b)
      local n = a + b;
      return n;
   end
   DEFAULT_CHAT_FRAME:AddMessage(tostring(add(1,2))); -- Prints 3
   DEFAULT_CHAT_FRAME:AddMessage(tostring(n));        -- Prints nil (n is out of scope)

Similar to the way this code segment works, the following segment also demonstrates how a code block can limit scope (without a function). Keep in mind that if..then..end, do..while..end, for..do..end, and other such blocks all create a limited variable scope:

   local a = 1;          -- File local
   local b = 2;          -- File local
   if (a+b > 2) then
      local n = a + b;   -- Block local
      DEFAULT_CHAT_FRAME:AddMessage(a.."+"..b.."="..tostring(n)); -- Prints 1+2=3
   end
   DEFAULT_CHAT_FRAME:AddMessage(a.."+"..b.."="..tostring(n)); -- Prints 1+2=nil

Block-local variables are especially useful as counters and other variables which will only be useful for a particularly small section of code. One extra advantage to doing this is an author can use extremely simple variable names such as "a," "n," or "key," which can then be reused several times within the same function, each time not conflicting with the other version of it. This greatly simplifies code without the need to make esoteric variable names.

===Addon-local variables===
Addon-local variables, like their name suggests, are variables which are accessible from any code in any files run from a single .toc file and only within these files. These are useful for addons that are spread across multiple file and want to have access to all or some of the variables that another file creates but without creating a global variable that can be accessed by other addons. They are called in a simalar way to a function-local variable if you asume that each lua file is a function that has been passed two variables.
#The addon's name which is the addon directory name or .toc file name. For example if your .toc file's path is: "../Addons/MyAddon/MyAddon.toc" the variable will be a string with = "MyAddon"
#An empty table. This is the addon-local variable. Any changes to this will be seen by all addon files.

An example of how to use these addon-local variables:
   --------------------------------
   -- MyAddon.toc
   --------------------------------
     ## Interface: {{API_LatestInterface}}
     ## Title: My Super Addon
     ## Author: Author1
     ## Version: 1.1.1
 
     MyAddon1.lua
     MyAddon2.lua
   --------------------------------


   --------------------------------
   -- MyAddon1.lua
   --------------------------------
     local addonName, addonTable = ... -- Pulls back the Addon-Local Variables and store them locally.
     -- addonName = "MyAddon"
     -- addonTable = {}
     
     addonTable.AddonAuthor = "Author1"
     addonTable.Description = {
       DesTitle = "Addon Description:",
       Description = "This is some addon that does something",
     }
     
     local function MyAddon()
        DEFAULT_CHAT_FRAME:AddMessage("Addon's Name is "..addonName)
     end
   --------------------------------


   --------------------------------
   -- MyAddon2.lua
   --------------------------------
     local addonName, addonTable = ... -- Pulls back the Addon-Local Variables and store them locally.
     -- addonName = "MyAddon"
     -- addonTable = {}
     
     local function MyAddon2()
        DEFAULT_CHAT_FRAME:AddMessage(addonTable.Description.DesTitle..": "..addonTable.Description.Description)
     end
   --------------------------------

The first file (MyAddon1.lua) adds some strings and table variables to the Addon-Local Variable locally named "addonTable" in both functions (although it could be put into any variable name or even another table) and the second file "MyAddon2.lua" has a function "MyAddon2()" that can access these new strings although they couldn't be accessed by any other addon.

==Details==
* Since '''addonTable''' is a table, it can be assigned or passed by reference to any function or variable.
* The vararg expression (...) is only available in the main chunk of the '''Lua''' files and not anywhere in the XML files.
* '''addonName''' will be the folder's name where the addon is stored. It is ''not'' the value of the "Title" field in the TOC file.

==Static Variables==
The "static" keyword does not exist in Lua; therefore, it's not possible to create a static variable. Static variables are useful in that they are local to the function, but retain their value with subsequent calls to said function. You can simulate this functionality by encapsulating your function definition in a do...end block with the local variable declaration inside the do...end block and before the function definition. Like so:
<pre>do
    local myStaticFrame
    function(...)
        if not myStaticFrame then
            -- Don't create the frame until the function is called once and don't make it again.
            myStaticFrame = CreateFrame('Frame')
        end
        -- Do stuff to myStaticFrame
    end
end</pre>

This could be useful in OnUpdate scripts that must use a frame/table each time it's executed, which is horribly inefficient.

==Complex scope==
Yes, nothing's ever that simple, of course. Above, we have only looked at limiting scope one level at a time. Unfortunately, addons often are complex enough that an author will mix several levels of scope. But how does Lua know which local variable to use? Well, as stated before, Lua uses a rule system called "least visibility." That means, the variable which is "most local" to the current scope will be the one used. Global variables are only used in the event that a local variable does not exist at the current scope. The following block shows a very complex example which isolates the various cases that may occur. 

Note we create the function "p" as a synonym for DEFAULT_CHAT_FRAME:AddMessage because it is a long name to write. More importantly, note that we make this function file-local. Remember, in Lua, functions are variables too. As a result, it is equally possible to make a function local as well. In this case, the function is file-local, meaning that it will be used only within this file, and not be accessible outside of this file. This is often a good idea, especially with very simplistic names such as "p" which other authors may also choose.

   local function p(msg)
      DEFAULT_CHAT_FRAME:AddMessage(tostring(msg));
   end
   n = 0;                      -- Global variable
   function foo(n)             -- In comments, assuming parameter n = 1
      p(n);                    -- Prints 1
      local n = n + 1;         -- Creates a new n in block scope, equal to n + 1
      p(n);                    -- Prints 2
      if (true) then           -- Entering a new code block
         p(n);                 -- Prints 2
         local n = 15;         -- Creates a more local n, now
         p(n);                 -- Prints 15
         for x = 1, 10 do      -- Note x is implicitly declared as a local variable now, it is not accessible outside the for block
            -- Note each iteration is a separate block!
            p(n);              -- Prints 15 EVERY TIME (even on 2nd+ loop)
            local n = x;
            p(n);              -- Prints 1,2,...,10 (depending on iteration)
         end
         p(n);                 -- Prints 15 (n in for block is out of scope)
         p(x);                 -- Prints nil (x is local to the for block)
      end
      p(n);                    -- Prints 2
   end
   foo(1);
   p(n);                       -- Prints 0 (using global n, as there is no local n)

Now, is it a best-practice to use the same variable name for every variable you get your hands on? Most certainly not, but it does provide some extra functionality that can be useful. In general, you should avoid using names that are the same, especially as much as the above function foo(), where it can become very difficult to determine which version of "n" you are using, but it is useful on occasion to be able to localize variables. Always remember, however, that the most local variable will always be used, where possible. Global variables are a last resort.

==Scope de-resolution==
Sometimes it is necessary to use a global version of a variable instead of a local copy which may exist. Luckily, Lua provides a mechanism to do this. In general, it won't be necessary if you follow programming best-practices, but occasionally it can be useful to use. 

Lua also creates and maintains a table defined by the language which contains all global variables. This table is named _G. You access it similarly to getglobal() — its keys are the string representations of variable names. As such, the same block exemplified in the previous section could be rewritten thusly, with the exact same result:

 local global_n = n;       -- These two lines
 local global_n = _G["n"]; -- are functionally equivalent

This can allow authors to write much more compact code which performs the same operation, though it may be less readable. As always, use the appropriate tool for the situation to help maintain readability.

==Conclusion==
Understanding Lua's use of variable scope is vital to understanding the process in which Lua decides which variable to use. Correct use of limited scope will allow your addon to be less likely to conflict with others, and minimize global namespace pollution.

[[Category:Interface customization]]