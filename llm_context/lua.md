These are standard '''Lua functions''' available in most Lua parsers. Arguably, we could just refer to the [http://www.lua.org Lua web site], but a few functions differ slightly in Blizzard's implementation. They are all documented here for consistency.

==Lua API==
Note that the [[World of Warcraft API]] does ''not'' provide all standard Lua functions. Notably, operating system and file I/O libraries are not present.

===Basic functions===
These functions are part of the Lua programming language (v5.1), described in the [http://www.lua.org/manual/5.1/manual.html Lua 5.1 Reference Manual].

In addition to this list, see also [[World of Warcraft API#Debugging|Debugging Functions]].

: [[API assert|assert]](<span class="apiarg">value[, errormsg]</span>) - asserts a value evaluates to true. If it is, returns value, otherwise causes a Lua error to be thrown.
: [[API collectgarbage|collectgarbage]]() - Forces garbage collection. (Added in 1.10.1)
: [[API date|date]](<span class="apiarg">format, time</span>) - Returns the current date according to the user's machine.
: [[API difftime|difftime]](<span class="apiarg">t1, t2</span>) - Calculate the number of seconds between time t1 to time t2.
: [[API error|error]](<span class="apiarg">"error message",level</span>) - Throws an error with the given error message. Use pcall() (see below) to catch errors.
: [[API gcinfo|gcinfo]]() - Returns the number of kB of add-on memory in use and the current garbage collection threshold (in kB). (Function gcinfo is deprecated; use collectgarbage("count") instead.<ref>http://www.lua.org/manual/5.1/manual.html</ref>)
: [[API getfenv|getfenv]](<span class="apiarg">function or integer</span>) - Returns the table representing the environment of the given function or stack level.
: [[API getmetatable|getmetatable]](<span class="apiarg">obj, mtable</span>) - Returns the metatable of the given table or userdata object.
: [[API ipairs|ipairs]](<span class="apiarg">table</span>) - Returns an iterator of type integer to traverse a table.
: [[API loadstring|loadstring]](<span class="apiarg">"Lua code"</span>) - Parse the string as Lua code and return it as a function reference.
: [[API next|next]](<span class="apiarg">table, index</span>) - Returns the next key, value pair of the table, allowing you to walk over the table.
: [[API newproxy|newproxy]](<span class="apiarg">boolean or proxy</span>) - Creates a userdata with a sharable metatable.
: [[API pairs|pairs]](<span class="apiarg">table</span>) - Returns an iterator to traverse a table.
: [[API pcall|pcall]](<span class="apiarg">func [, ...]</span>) - Returns a boolean value indicating successful execution of func and the error message or func's results as additional values.
: [[API select|select]](<span class="apiarg">index, list</span>) - Returns the number of items in '''list''' or a subset of the list beginning at index and running to the end of the list.
: [[API setfenv|setfenv]](<span class="apiarg">function or integer, table</span>) - Sets the table representing the stack frame of the given function or stack level.
: [[API setmetatable|setmetatable]](<span class="apiarg">table, metatable</span>) - Sets the metatable of the given table.
: [[API time|time]](<span class="apiarg">table</span>) - Returns time in seconds since epoch (00:00:00 Jan 1 1970)
: [[API type|type]](<span class="apiarg">var</span>) - Returns the type of variable as a string, "nil", "boolean", "number", "string", "table", "function", "thread" or "userdata". (The only Lua data types.)
: [[API unpack|unpack]](<span class="apiarg">table[, start][, end]</span>) - Returns the contents of its argument as separate values.
: [[API xpcall|xpcall]](<span class="apiarg">func, err [, ...]</span>) - Returns a boolean indicating successful execution of func and calls err on failure, additionally returning func's or err's results.
: [[API rawequal|rawequal]](<span class="apiarg">value, value</span>) - Compares two values for equality without invoking metamethods.
: [[API rawget|rawget]](<span class="apiarg">table, index</span>) - Gets the value of a table item without invoking metamethods.
: [[API rawset|rawset]](<span class="apiarg">table, index, value</span>) - Sets the value of a table item without invoking metamethods.

===<code>math</code>===
Most of these functions are shorthand references to the Lua math library (which is available via "math.", see [http://lua-users.org/wiki/MathLibraryTutorial MathLibraryTutorial] for more info). 

The trigonometry functions are not just references; they have degree&rarr;radian conversion wrappers. Blizzard's versions work with degrees. Lua's standard math library works with radians.

: [[API abs|abs]](<span class="apiarg">value</span>) - Returns the absolute value of the number.
: [[API acos|acos]](<span class="apiarg">value</span>) - Returns the arc cosine of the value in degrees.
: [[API asin|asin]](<span class="apiarg">value</span>) - Returns the arc sine of the value in degrees.
: [[API atan|atan]](<span class="apiarg">value</span>) - Returns the arc tangent of the value in degrees.
: [[API atan2|atan2]](<span class="apiarg">y, x</span>) - Returns the arc tangent of Y/X in degrees.
: [[API ceil|ceil]](<span class="apiarg">value</span>) - Returns the ceiling of value.
: [[API cos|cos]](<span class="apiarg">degrees</span>) - Returns the cosine of the degree value.
: [[API deg|deg]](<span class="apiarg">radians</span>) - Returns the degree equivalent of the radian value.
: [[API exp|exp]](<span class="apiarg">value</span>) - Returns the exponent of value.
: [[API floor|floor]](<span class="apiarg">value</span>) - Returns the floor of value.
: [[API fmod|fmod]](<span class="apiarg">value,modulus</span>) - Returns the remainder of the division of value by modulus that rounds the quotient towards zero.
: [[API frexp|frexp]](<span class="apiarg">num</span>) - Extract mantissa and exponent from a floating point number.
: [[API ldexp|ldexp]](<span class="apiarg">value, exponent</span>) - Load exponent of a floating point number.
: [[API log|log]](<span class="apiarg">value</span>) - Returns the natural logarithm (log base e) of value.
: [[API log10|log10]](<span class="apiarg">value</span>) - Returns the base-10 logarithm of value.
: [[API max|max]](<span class="apiarg">value[, values...]</span>) - Returns the numeric maximum of the input values.
: [[API min|min]](<span class="apiarg">value[,values...]</span>) - Returns the numeric minimum of the input values.
: [[API mod|mod]](<span class="apiarg">value,modulus</span>) - Returns floating point modulus of value. (Function math.mod was renamed math.fmod)
: [[API rad|rad]](<span class="apiarg">degrees</span>) - Returns the radian equivalent of the degree value.
: [[API random|random]](<span class="apiarg">[ [lower,] upper]</span>) - Returns a random number (optionally bounded integer value)
: [[API sin|sin]](<span class="apiarg">degrees</span>) - Returns the sine of the degree value.
: [[API sqrt|sqrt]](<span class="apiarg">value</span>) - Return the square root of value.
: [[API tan|tan]](<span class="apiarg">degrees</span>) - Returns the tangent of the degree value.
: [[API fastrandom|fastrandom]](<span class="apiarg">[ [lower,] upper]</span>) {{apitag|wow}} - Returns a random number; faster than math.random.

===<code>string</code>===
These string functions are shorthand references to the Lua string library (which is available via "string.", see [http://lua-users.org/wiki/StringLibraryTutorial StringLibraryTutorial] for more info),
: [[API format|format]](<span class="apiarg">formatstring[, value[, ...]]</span>) - Return a formatted string using values passed in.
: [[API gmatch|gmatch]](<span class="apiarg">string, pattern</span>) - This returns a pattern finding iterator. The iterator will search through the string passed looking for instances of the pattern you passed.
: [[API gsub|gsub]](<span class="apiarg">string,pattern,replacement[, limitCount]</span>) - Globally substitute pattern for replacement in string.
: [[API strbyte|strbyte]](<span class="apiarg">string[, index]</span>) - Returns the internal numeric code of the i-th character of string
: [[API strchar|strchar]](<span class="apiarg">asciiCode[, ...]</span>) - Returns a string with length equal to number of arguments, with each character assigned the internal code for that argument.
: [[API strfind|strfind]](<span class="apiarg">string, pattern[, initpos[, plain]]</span>) - Look for match of pattern in string, optionally from specific location or using plain substring.
: [[API strlen|strlen]](<span class="apiarg">string</span>) - Return length of the string.
: [[API strlower|strlower]](<span class="apiarg">string</span>) - Return string with all upper case changed to lower case.
: [[API strmatch|strmatch]](<span class="apiarg">string, pattern[, initpos]</span>) - Similar to strfind but only returns the matches, not the string positions.
: [[API strrep|strrep]](<span class="apiarg">seed,count</span>) - Return a string which is count copies of seed.
: [[API strrev|strrev]](<span class="apiarg">string</span>) - Reverses a string; alias of string.reverse.
: [[API strsub|strsub]](<span class="apiarg">string, index[, endIndex]</span>) - Return a substring of string starting at index
: [[API strupper|strupper]](<span class="apiarg">string</span>) - Return string with all lower case changed to upper case.
: [[API tonumber|tonumber]](<span class="apiarg">arg[, base]</span>) - Return a number if arg can be converted to number. Optional argument specifies the base to interpret the numeral. Bases other than 10 accept only unsigned integers.
: [[API tostring|tostring]](<span class="apiarg">arg</span>) - Convert arg to a string.

These are custom string functions available in WoW but not normal Lua.
: [[API strcmputf8i|strcmputf8i]](<span class="apiarg">string, string</span>) {{apitag|wow}} - string comparison accounting for UTF-8 chars
: [[API strlenutf8|strlenutf8]](<span class="apiarg">string</span>) {{apitag|wow}} - Returns the number of characters in a UTF8-encoded string.
: [[API strtrim|strtrim]](<span class="apiarg">string[, chars]</span>) {{apitag|wow}} - Trim leading and trailing spaces or the characters passed to chars from string.
: [[API strsplit|strsplit]](<span class="apiarg">delimiter, string [, pieces</span>) {{apitag|wow}} - Splits a string using a delimiter.
: [[API strsplittable|strsplittable]](<span class="apiarg">delimiter, subject [, pieces]</span>) {{apitag|wow}}
: [[API strjoin|strjoin]](<span class="apiarg">delimiter, string, string[, ...]</span>) {{apitag|wow}} - Join string arguments into a single string, separated by delimiter.
: [[API strconcat|strconcat]](<span class="apiarg">...</span>) {{apitag|wow}} - Returns a concatenation of all number/string arguments passed.
: [[API tostringall|tostringall]](<span class="apiarg">...</span>) {{apitag|wow}} - Converts all arguments to strings and returns them in the same order that they were passed.
: [[API string.rtgsub|string.rtgsub]](<span class="apiarg">s, pattern, repl[, n]</span> {{apitag|framexml}} - A version of <code>string.gsub</code> which is able to be passed restricted tables.

===<code>table</code>===
These table functions are from the Lua table library, see [http://lua-users.org/wiki/TableLibraryTutorial TableLibraryTutorial] for more info).

Be also aware that many table functions are designed to work with tables indexed only with numerical indexes, starting with 1 and without holes (like {[1] = "foo", [3] = "bar"} --- recognize that [2] will be nil in this table). When working with any other tables behavior is not defined and might lead to unexpected results. Not being aware of this fact is one major causes for bugs in code written in Lua.

: [[API table.concat|table.concat]](<span class="apiarg">list [, sep, i, j]</span>) - Concatenates the contents of a table to a string.
: [[API table.insert|table.insert]] <small>|<code><font color="#71D5FF">tinsert</font></code></small>(<span class="apiarg">list [, pos], value</span>) - Insert value into the table at position pos (defaults to end of table).
: [[API table.maxn|table.maxn]](<span class="apiarg">list</span>) - Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices.
: [[API table.remove|table.remove]] <small>|<code><font color="#71D5FF">tremove</font></code></small>(<span class="apiarg">list [, pos]</span>) - Remove and return the table element at position pos (defaults to last entry in table).
: [[API table.removemulti|table.removemulti]](<span class="apiarg">list [, pos [, count]]</span>) {{apitag|wow}} - Removes <code>count</code> elements from a table starting at index <code>pos</code>.
: [[API table.sort|table.sort]] <small>|<code><font color="#71D5FF">sort</font></code></small>(<span class="apiarg">list [, comp]</span>) - Sort the elements in the table in-place, optionally using a custom comparator.
: [[API table.wipe|table.wipe]] <small>|<code><font color="#71D5FF">wipe</font></code></small>(<span class="apiarg">list</span>) {{apitag|wow}} - Restore the table to its initial value (like tab = {} without the garbage).

===<code>bit</code>===
World of Warcraft includes the Lua bitlib library (available via the "bit" table) which provides access to bit manipulation operators. It has been available since [[Patch 1.9]]. This library seems to work internally with standard 32-bit 'int' values, since bit.lshift(0x80000000, 1) == 0

: [[API bit.bnot|bit.bnot]](<span class="apiarg">a</span>) - binary 'not' - the one's complement of a
: [[API bit.band|bit.band]](<span class="apiarg">a1, ...</span>) - binary 'and' - the bitwise and of the values
: [[API bit.bor|bit.bor]](<span class="apiarg">a1, ...</span>) - binary 'or' - the bitwise or of the values
: [[API bit.bxor|bit.bxor]](<span class="apiarg">a1, ...</span>) - bitwise 'xor' - the bitwise exclusive or of the values
: [[API bit.lshift|bit.lshift]](<span class="apiarg">a, n</span>) - 'left shift' - a shifted left by n bits
: [[API bit.rshift|bit.rshift]](<span class="apiarg">a, n</span>) - 'right shift' - a shifted right by n bits
: [[API bit.arshift|bit.arshift]](<span class="apiarg">a, n</span>) - 'arithmetic right shift' - a shifted right arithmetically by n bits
: [[API bit.mod|bit.mod]](<span class="apiarg">a, n</span>) - signed 'modulus' - the signed value of a modulo n (result is the same sign as a)

Using these functions to pack data structures is fairly slow work. Unless you have a very large database and ''need'' to conserve memory, save your information in several, individual variables or table fields.

===<code>coroutine</code>===
Coroutine functions should be used sparingly because of the amount of memory they use. 
: [[API coroutine.create|coroutine.create]](<span class="apiarg">f</span>)
: [[API coroutine.resume|coroutine.resume]](<span class="apiarg">co [, val1, ...]</span>)
: [[API coroutine.running|coroutine.running]]()
: [[API coroutine.status|coroutine.status]](<span class="apiarg">co</span>)
: [[API coroutine.wrap|coroutine.wrap]](<span class="apiarg">f</span>)
: [[API coroutine.yield|coroutine.yield]](<span class="apiarg">...</span>)

===Deprecated functions===
: [[API table.foreach|table.foreach]] <small>|<code>foreach</code></small>(<span class="apiarg">table, function</span>) {{apitag|deprecated}} - Executes a function for each element in table. Deprecated, it is replaced by {{api|pairs}}.
: [[API table.foreachi|table.foreachi]] <small>|<code>foreachi</code></small>(<span class="apiarg">table, function</span>) {{apitag|deprecated}} - Executes a function for each sequential element in table. Deprecated, it is replaced by {{api|ipairs}}.
: [[API table.getn|table.getn]] <small>|<code>getn</code></small>(<span class="apiarg">table</span>) {{apitag|deprecated}} - Return the size of the table when seen as a list. Deprecated, it is replaced by the length operator <code>#</code>.
: [[API table.setn|table.setn]](<span class="apiarg">table, n</span>) {{apitag|obsolete}} - throws an error if called.
: [[API string.gfind|string.gfind]](<span class="apiarg">s, pattern</span>) {{apitag|obsolete}} - throws an error if called, it is replaced by {{api|string.gmatch}}.

==Details==
===String Functions===
* All strings have their metatable set to index the global string table, so any string function may be called through it with the colon syntax:
 -- This...
 local s = string.format(input, arg1, arg2, ...)
 
 -- ...can be written as this
 local s = input:format(arg1, arg2, ...)  -- input gets passed as the first argument, replicating the above code, as per the colon syntax
To make this work for string constants, you have to use parentheses. "%d":format(arg1) is not valid Lua code, you have to do
 ("%d"):format(arg1)

===Table Functions===
* Any function that takes a table as its first argument can be assigned to a method in said table and used thusly.
** There's no practical reason for doing this, but it's kinda fun to know these useless things.
** '''Notice''' that [[API wipe|table.wipe]] (and [[API wipe|wipe]]) will remove itself and all other methods assigned in this manner.
 tab = {}
 
 -- this works, of course.
 tinsert(tab, 1, value) -- change the value at index 1 to value.
 
 -- as does this
 tab.insert = tinsert
 tab:insert(1, value) -- change the value at index 1 to value (note the ":").

==See also==
* [[Lua]], which has plenty of links to other reference material.

==References==
<references/>
