INCLUDE day0.ink
INCLUDE CoffeeMinigame.ink
INCLUDE day1.ink
INCLUDE day2.ink

// ------------------------------------------------------------------------------------------------
// VARIABLES
// ------------------------------------------------------------------------------------------------

// Character variables. Two axes, lewdness and object-subject (roughly self-control)
VAR latoya_lewd = 0
VAR latoya_object = 0
VAR clara_lewd = 0
VAR clara_object = 0
VAR ramsey_lewd = 0
VAR ramsey_object = 0
VAR f0c5_lewd = 0
VAR f0c5_object = 0

CHAR_COLOR \#1fc4c4 Latoya
CHAR_COLOR \#1cb3b3 blueena
CHAR_COLOR \#ffac43 Clara
CHAR_COLOR \#a4d648 Ramsey
CHAR_COLOR \#c378ff 0xF0C5

// Story variables.
VAR demo_mode = false
VAR kissed_clara_day0 = false
VAR flirted_with_ramsey_day0 = false
VAR made_out_with_ramsey_day0 = false
VAR made_out_with_clara_day0 = false
VAR played_with_f0c5_day0 = false
VAR wore_punk_clothes_day1 = false
VAR went_to_bathroom_day1 = false
VAR sex_with_clara_day1 = false

// ------------------------------------------------------------------------------------------------
// DEBUG MODE
// ------------------------------------------------------------------------------------------------
VAR debug = true
{ debug:
    IN DEBUG MODE!
    * [Beginning...] -> intro
    * [Day 1...] -> morning_day1
    * [Day 2...] -> morning_day2
    * [Latest] -> ramsey_sex_scene_day2
  - else:
    -> intro
}

=== debug_options(-> return_to)
{ debug:
    + [Debug Options]
      -> show_debug_options ->
      -> return_to
}

=== show_debug_options
0xF0C5: dont tell anyone about these 1337 hax!!!
0xF0C5: who do you want to modify?
+ [Latoya]
  -> modify_character("Latoya", latoya_lewd, latoya_object) ->
+ [Clara]
  -> modify_character("Clara", clara_lewd, clara_object) ->
+ [Ramsey]
  -> modify_character("Ramsey", ramsey_lewd, ramsey_object) ->
+ [0xF0C5]
  -> modify_character("0xF0C5", f0c5_lewd, f0c5_object) ->
+ [Done]
  -> done_with_opts
- -> show_debug_options
= done_with_opts
->->

=== modify_character(name, ref lewd_var, ref object_var)
Modifying {name}. L- {lewd_var} O- {object_var}
+ [Make Lewder]
  ~ raise(lewd_var)
+ [Make Purer]
  ~ lower(lewd_var)
+ [Objectify More]
  ~ raise(object_var)
+ [Subjectify More]
  ~ lower(object_var)
+ [Done]
  -> done_with_modification
- -> modify_character(name, lewd_var, object_var)
= done_with_modification
->->

// ------------------------------------------------------------------------------------------------
// FUNCTIONS
// ------------------------------------------------------------------------------------------------

=== function lower(ref x)
    ~ alter(x, -1)

=== function raise(ref x)
    ~ alter(x, 1)

=== function alter(ref x, k)
    ~ x = x + k

