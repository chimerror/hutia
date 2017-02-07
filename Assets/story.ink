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

// ------------------------------------------------------------------------------------------------
// DEBUG MODE
// ------------------------------------------------------------------------------------------------
VAR debug = true
{ debug:
    IN DEBUG MODE!
    * [Beginning...] -> intro
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
Latoya L: {latoya_lewd}, O: {latoya_object}
Clara L: {clara_lewd}, O: {clara_object}
Ramsey L: {ramsey_lewd}, O: {ramsey_object}
0xF0C5 L: {f0c5_lewd}, O: {f0c5_object}
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
Modifying {name}. L: {lewd_var} O: {object_var}
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
    ~ x = x - 1

=== function raise(ref x)
    ~ x = x + 1

// ------------------------------------------------------------------------------------------------
// SCRIPT
// ------------------------------------------------------------------------------------------------

=== intro ===
// background: black
blueena: Present day... Present time... #smug
bluenna: hee hee hee heh... #grin
blueena: HA HA HA HA HA HA HA HA! #laugh
blueena: ;3 #smug
// exeunt
title: hutia
// fade to black
-> wake_up_day1

=== wake_up_day1 ===
// music: main theme
// image: blue cell phone on bed screen shows an alarm ringing
// a hand grabs the phone
// left-character: latoya, sleep clothes
Latoya: Ungh... #sleepy
Latoya: Waking up is a pain...
// music stops
// music: latoya's theme, morning
Latoya: ...Better.
Latoya: #sigh
Latoya: I might should've gotten my sleep schedule right when I had the chance last week.
Latoya: But what is your first real day of work without being too damn tired? #miffed
// scene: Latoya showering, only seen through shower curtain.
// bg: Latoya's room
// left-character: latoya, sleep clothes
Latoya: Whew... That's better. #sigh
Latoya: OK, what to wear? #bored
<- debug_options(-> wake_up_day1)
* [Probably best to go with something conservative.]
  Latoya: Good ol' reasonable Latoya Miller, she's such a proper lady... #sigh
  ~ raise(latoya_object)
* [Hmmm, I remember looking pretty hot in this skirt...]
  Latoya: Yeah, I'd probably give my coworkers a heart attack... #sly
  ~ raise(latoya_lewd)
  Latoya: ...if any blood could get away from their dicks!
  Latoya: #sigh
  Latoya: No, I'd better play it safe.
- Latoya: Oh well...
// Fade to black
-> living_room_morning_day1

=== living_room_morning_day1
// bg: Living Room
// left-character: latoya, button-up shirt
Latoya: Well, here we go... #bored
Latoya: Oh! #surprised
Latoya: It looks like Clara fell asleep out here...
// scene: Clara, sleeping on couch
<- debug_options(-> living_room_morning_day1)
* (angry) [How dare she!]
  Latoya: Aren't girlfriends supposed to sleep in bed with you? #miffed
  <- debug_options(-> angry)
  * * [Oh well...]
      ~ lower(latoya_lewd)
      Latoya: Anyway...
  * * [She'd be better as a toy...]
      ~ raise(latoya_lewd)
      ~ raise(clara_object)
      Latoya: Maybe I should make her a nice Speedy Toy with handles to carry her around... #sly
      Latoya: hee hee hee... #lewd
  - - ~ raise(clara_object)
* [I missed her...]
  ~ lower(latoya_lewd)
  ~ raise(latoya_object)
  Latoya: I wonder if our relationship is falling apart... #sad
  // beat
  Latoya: Can't dwell on that now...
* (pleased) [My little Speedy...]
  Latoya: I really hope she got some good work done on her art. #slight-smile
  <- debug_options(-> pleased)
  * * [Such a good girlfriend...]
      ~ lower(clara_object)
      ~ lower(latoya_object)
      ~ lower(latoya_lewd)
      Latoya: She's really been good to me given how flaky I've been about... everything.
      Latoya: I guess she usually depends on me to be the reliable one, so she understands...
      Latoya: When I'm not. #miffed
  * * [Such a good girl...]
      ~ raise(latoya_object)
      ~ raise(latoya_lewd)
      Latoya: Speedy really makes such a sweet toy for me to play with... #lewd
      Latoya: I'm glad she lets me... #slight-smile
  - - ~ lower(clara_object)
        Latoya: She's really been such a good girlfriend.
- Latoya: *gurgle* #surprised
-> pizza

= pizza
Latoya: Huh, guess I'm kind of hungry... #embarassed
Latoya: Clara has some leftover pizza there...
<- debug_options(-> pizza)
* (steal_pizza) [Yoink!]
  ~ raise(latoya_object)
  ~ raise(clara_object)
  Latoya: Stolen pizza is the best pizza! #sly
* [Nah.]
  ~ lower(latoya_object)
  ~ lower(clara_object)
  Latoya: Nah, I'll just get something from the cafe.
- Latoya: Hmmm...
-> wake_her_up

= wake_her_up
Latoya: I wonder if I should wake her up?
<- debug_options(-> wake_her_up)
* (wake_up_clara) [Yeah.]
  Latoya: Yeah, it's a good idea...
  <- debug_options(-> wake_up_clara)
  * * [It's for her own good.]
      ~ raise(clara_object)
      Latoya: She'd sleep the entire day away otherwise!
      Latoya: Hey, sleepy-butt, wake up! #annoyed
  * * [She'd like that.]
      ~ lower(clara_object)
      Latoya: She'd probably like to see me check up on her before I go...
      Latoya: Hey, sleepy-butt, wake up! #sly
  - - Clara: Huh, what...?
* [Nah.]
  ~ lower(clara_object)
  Latoya: Nah, I'll let her sleep.
  Clara: Like, uh... Are you totes trying to sneak off without me noticing? #latoya-surprised
- Latoya: Good Morning, Speedy.
// right-character: Clara
Clara: Good Morning, Giggles. #sleepy
{ steal_pizza:
    Clara: And, like, uh don't think I didn't see you totally stealing my pizza, my little scavenger. #sly
    Latoya: Uh... #surprised
    Clara: You'll owe me...
}
Clara: So uh, you're off to, like, the code mines?
Latoya: Yep, this is probably going to be my first day of real work. #slight-smile
Clara: Oh my God, totes exciting! #big-smile
Latoya: It's not really that exciting. #bored
Clara: Like, whatever, Giggles. We totally know you can make anything like... #eye-roll
Clara: Totes exciting! #victory-pose
Latoya: If you say so...
Clara: I do! #smug
-> punch_or_kiss

= punch_or_kiss
She's just sitting there smiling, so proud of herself...
<- debug_options(-> punch_or_kiss)
* [I could kiss her...] #latoya-lewd #clara-lewd #latoya-subject
  ~ raise(latoya_lewd)
  ~ raise(clara_lewd)
  ~ lower(latoya_object)
  Latoya: *kiss* #kiss
  Clara: ! #surprised
  Latoya: #sly
  // beat
  Clara: #happy-blushing
* [I could punch her...]
  ~ lower(latoya_lewd)
  ~ lower(clara_lewd)
  Latoya: #miffed
  { latoya_lewd > 0:
      Clara: *kiss* #kiss
      Latoya: ! #surprised
      Clara: #sly
      // beat
      Latoya: #happy-blushing
  }
- Latoya: Thanks for the vote of confidence...
Clara: You're welcome. Have fun!
Latoya: I'll try.
-> END
