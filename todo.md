- want a "print" function
- want a "debug print" function
- want a list of specs and their IDs like https://github.com/herotc/hero-lib/blob/thewarwithin/HeroLib/Core.lua#L56
- determine if you are in an "encounter" with an encounterID like a boss fight, or just regular combat
- determine if there's a priority mob
- allocate defensive cooldowns if (you're going to die, or, if you would be less than some health buffer after an attack)
- determine time to die with "confidence score" (very confident it is X seconds to die, less confident that it is Y seconds to die, etc)
- special case mobs that don't die at zero or have shields or take extra damage or other weird circumstances
- want distance to target
- want in flight spells to target
- want impact time for spells in flight to target
- want if target is moving or not
- want bounded distance for all units (hard math problem?)

- figure out if we should register for PLAYER_TARGET_CHANGED or just check the current target
  - what is PLAYER_SOFT_ENEMY_CHANGED

- register for nameplate updates? or just check current ones in a loop (probably events?)

- architecture:
- once per ... second? we do a full scan of the environment
- between full scans, we do the periodic event tracking? to prevent us from getting out of sync with the environment?
- clear enemies that die from the game state

- need to keep track of enemies that are on screen AS WELL as any enemies that are NOT on screen (remove them when they die)
- track "should stop casting" events?
- need good POWER estimation into the future (next global, global after that if you press the button we suggest, etc)