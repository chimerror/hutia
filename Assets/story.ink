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

CHAR_COLOR \#25dddd Latoya
CHAR_COLOR \#1cb3b3 blueena
CHAR_COLOR \#ffac43 Clara
CHAR_COLOR \#a4d648 Ramsey
CHAR_COLOR \#c378ff 0xF0C5

// ------------------------------------------------------------------------------------------------
// DEBUG MODE
// ------------------------------------------------------------------------------------------------
VAR debug = false
{ debug:
    IN DEBUG MODE!
    * [Beginning...] -> intro
    * [To Work...] -> work_day1
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
    ~ alter(x, -1)

=== function raise(ref x)
    ~ alter(x, 1)

=== function alter(ref x, k)
    ~ x = x + k

// ------------------------------------------------------------------------------------------------
// SCRIPT
// ------------------------------------------------------------------------------------------------

=== intro ===
BG COLOR black
CHARACTER CENTER blueena sly
blueena: Present day... Present time... #sly
blueena: hee hee hee heh... #grin
blueena: HA HA HA HA HA HA HA HA! #laugh
blueena: ;3 #sly
CHARACTER OFF
TITLE hutia
-> wake_up_day1

=== wake_up_day1 ===
// music main theme
IMAGE LatoyaAlarm
CHARACTER LEFT latoya sleepy
Latoya: Ungh...
Latoya: Waking up is a pain...
CHARACTER LEFT OFF
// music stops
TITLE Day 00
// music: latoya's theme, morning
MUSIC LatoyasTheme ONCE
CHARACTER LEFT latoya
Latoya: ...Better.
Latoya: *sigh*
Latoya: I might should've gotten my sleep schedule right when I had the chance last week.
Latoya: But what is your first real day of work without being too damn tired? #miffed
// scene: Latoya showering, only seen through shower curtain.
BG IMAGE bedroom
// left-character: latoya, sleep clothes
Latoya: Whew... That's better. #neutral
Latoya: OK, what to wear? #bored
<- debug_options(-> wake_up_day1)
* [Probably best to go with something conservative.]
  Latoya: Good ol' reasonable Latoya Miller, she's such a proper lady... #miffed
  ~ raise(latoya_object)
* [Hmmm, I remember looking pretty hot in this skirt...]
  Latoya: Yeah, I'd probably give my coworkers a heart attack... #sly
  ~ raise(latoya_lewd)
  Latoya: ...if any blood could get away from their dicks! #laugh
  Latoya: *sigh* #miffed
  Latoya: No, I'd better play it safe.
- Latoya: Oh well...
// Fade to black
-> living_room_morning_day1

=== living_room_morning_day1
// bg: Living Room
// left-character: latoya, button-up shirt, work badge
Latoya: Well, here we go... #bored
Latoya: Oh! #nervous
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
      Latoya: hee hee hee...
  - - ~ raise(clara_object)
* [I missed her...]
  ~ lower(latoya_lewd)
  ~ raise(latoya_object)
  Latoya: I wonder if our relationship is falling apart... #sad
  // beat
  Latoya: Can't dwell on that now...
* (pleased) [My little Speedy...]
  Latoya: I really hope she got some good work done on her art. #neutral
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
      Latoya: Speedy really makes such a sweet toy for me to play with... #sly
      Latoya: I'm glad she lets me... #neutral
  - - ~ lower(clara_object)
        Latoya: She's really been such a good girlfriend.
- Latoya: *gurgle* #nervous
-> pizza

= pizza
Latoya: Huh, guess I'm kind of hungry... #blushing-happily
Latoya: Clara has some leftover pizza there...
<- debug_options(-> pizza)
* (steal_pizza) [Yoink!]
  ~ raise(latoya_object)
  ~ raise(clara_object)
  Latoya: Stolen pizza is the best pizza! #sly
* [Nah.]
  ~ lower(latoya_object)
  ~ lower(clara_object)
  Latoya: Nah, I'll just get something from the cafe. #miffed
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
      Latoya: Hey, sleepy-butt, wake up! #angry
  * * [She'd like that.]
      ~ lower(clara_object)
      Latoya: She'd probably like to see me check up on her before I go...
      Latoya: Hey, sleepy-butt, wake up! #sly
  - - Clara: Huh, what...?
* [Nah.]
  ~ lower(clara_object)
  Latoya: Nah, I'll let her sleep.
  CHARACTER LEFT latoya nervous
  Clara: Like, uh... Are you totes trying to sneak off without me noticing?
- Latoya: Good Morning, Speedy.
CHARACTER RIGHT clara sleepy
Clara: Good Morning, Giggles.
{ steal_pizza:
    Clara: And, like, uh don't think I didn't see you totally stealing my pizza, my little scavenger. #sly
    Latoya: Uh... #nervous
    Clara: You'll owe me...
}
Clara: So uh, you're off to, like, the code mines?
Latoya: Yep, this is probably going to be my first day of real work. #neutral
Clara: Oh my God, totes exciting! #smile
Latoya: It's not really that exciting. #bored
Clara: Like, whatever, Giggles. We totally know you can make anything like... #sly
Clara: Totes exciting! #laugh
Latoya: If you say so...
Clara: I do! #smile
-> punch_or_kiss

= punch_or_kiss
Latoya: She's just sitting there smiling, so proud of herself...
<- debug_options(-> punch_or_kiss)
* [I could kiss her...]
  ~ raise(latoya_lewd)
  ~ raise(clara_lewd)
  ~ lower(latoya_object)
  Latoya: *kiss* #smile
  Clara: ! #nervous
  Latoya: . #sly
  // beat
  Clara: ! #blushing-happily
* [I could punch her...]
  ~ lower(latoya_lewd)
  ~ lower(clara_lewd)
  Latoya: #miffed
  { latoya_lewd > 0:
      Clara: *kiss* #smile
      Latoya: ! #nervous
      Clara: #sly
      // beat
      Latoya: #blushing-happily
  }
- Latoya: Thanks for the vote of confidence...
Clara: You're welcome. Have fun! #laugh
Latoya: I'll try. #bored
CHARACTER RIGHT OFF
-> work_day1

=== work_day1
// bg: Bus
CHARACTER LEFT latoya
Latoya: Ugh, the number 8 is always so packed at this time.
Latoya: This is why I took that sabbatical from Glaistig anyway.
Latoya: But then again, having money to buy things was pretty nice... #bored
Latoya: But is it really worth being packed in like sardines by a bunch of tech bros? #miffed
// bg: Office
Latoya: Ah, I've got a few minutes before stand-up... #bored
Latoya: Maybe I'll just try to enjoy my coffee-- #sly
CHARACTER RIGHT ramsey
Ramsey: Good morning, Latoya. #neutral
Latoya: Oh, it's Ramsey. He's an old college buddy, though right now, he's more like my boss. #neutral
Latoya: Huh, how should I say hi?
<- debug_options(-> work_day1)
* [Professional]
  ~ alter(ramsey_object, 1)
  ~ alter(ramsey_lewd, -3)
  ~ alter(latoya_object, 1)
  ~ alter(latoya_lewd, -2)
  Latoya: Good morning! #neutral
* [Friendly]
  ~ alter(ramsey_object, -1)
  ~ alter(latoya_object, -1)
  Latoya: Mornin', Rams! #smile
  Ramsey: Heh. Unfortunately, I don't think any one calls me that on this team. #smile
  Latoya: Ah, rats. No one calls you that yet, but I'll fix that!
  Ramsey: Good luck! Maybe it'll take off.
* [Silly]
  ~ alter(ramsey_object, -3)
  ~ alter(ramsey_lewd, 1)
  ~ alter(latoya_object, -2)
  ~ alter(latoya_lewd, 1)
  Latoya: Hiya, Rams! #smile
  Latoya: Lt. Giggles reporting for our offensive against the tyrannical bug empire, sir! #sly
  Ramsey: Uh, heh. #blushing-happily
  Ramsey: At ease, soldier. #sly
  Latoya: Roger! #sly
* (flirt) {latoya_lewd > 2} [Flirty]
  Latoya: Good morning, Rams. You look rather delicious today... #sly
  Ramsey: ... #nervous
  Ramsey: Uh... that might not be quite work appropriate behavior... #blushing-happily
  Latoya: Huh, how should I play this? #nervous
  <- debug_options(-> flirt)
  * * {latoya_object < 0} [Pivot with a joke]
    ~ alter(ramsey_object, -2)
    ~ alter(ramsey_lewd, 2)
    ~ alter(latoya_object, 1)
    Latoya: Oh, uh, sorry, I was talking to the coffee! #sly
    Latoya: Not every brown thing I talk about is you, Rams.
    Ramsey: Right. #miffed
  * * {latoya_object < 2} [Apologize]
    ~ alter(ramsey_object, -5)
    ~ alter(ramsey_lewd, -2)
    ~ alter(latoya_object, -1)
    Latoya: I'm sorry, Ramsey. It's just easy to fall into familar patterns.
    Ramsey: That's OK. It's just I have to be careful about that sort of stuff as a manager. #miffed
    Ramsey: You understand, right?
    Latoya: Yes. #neutral
    Ramsey: Good. #neutral
  * * [Cut it out.]
    Latoya: Oh, oops. #miffed
    Ramsey: Right. #miffed
  * * [Keep going!]
    ~ alter(ramsey_lewd, 2)
    ~ alter(ramsey_object, 2)
    ~ alter(latoya_lewd, 2)
    ~ alter(latoya_object, 5)
    Latoya: It isn't?
    Latoya: Oh, I haven't watched those compliance videos yet. #sly
    Latoya: You may need to discuss it with me in private.
    Ramsey: Right... #blushing-happily
  - - Latoya: That was smooth...
  ~ alter(ramsey_lewd, 3)
  ~ alter(ramsey_object, 3)
  ~ alter(latoya_object, -3)
  ~ alter(latoya_lewd, 3)
- Ramsey: Ah, OK. Everyone is here. #neutral
Ramsey: Let's get started.
-> ramsey_introduction

= ramsey_introduction
Latoya: Ramsey and I dated for a while last time I was working for Glaistig.
Latoya: The benefits of dating a woman who is a relationship anarchist! #sly
{ latoya_lewd > 0:
    Latoya: Sometimes a girl needs a man who can boss her around.
    Latoya: Can't always be playing with my submissive little Speedy toy.
}
Latoya: I got moved onto his team, and well, we had to end that. #miffed
Latoya: I haven't seen him much since I came back, but before I left...
Latoya: ...I was pretty sure he wasn't really over me yet.
Latoya: And honestly, Seattle can be a tough place to date if you're a tech bro.
Latoya: But maybe they should try some queerness on for size? #sly
Latoya: Silly boys.
Latoya: Oh, it's almost my turn. #bored
CHARACTER LEFT jake bored
Jake: ...so yeah, hopefully I can get Ramsey to teach me how to use a profiler.
Ramsey: Hmm. I think I can do that. Is that all for your status?
Jake: Yep.
Ramsey: OK, Latoya?
CHARACTER LEFT latoya bored
Latoya: Right. Well, I was hoping today would be my first day of real work.
Latoya: Orientation is done, and it looks like my permissions have gone through.
Latoya: So you can move those to done.
Ramsey: Right.
Latoya: Next in my ramp-up is pulling the code down and seeing if it builds.
Latoya: I'm not too worried, it doesn't look like they changed anything while I was gone.
Latoya: No estimate updates. #neutral
Ramsey: Good. Chat with Jake if you have questions, he just cut his teeth on the build last month.
CHARACTER RIGHT jake smile
Jake: Yeah, I'm an expert now, I guess.
Latoya: An expert? I've written code that's probably older than you, kid. #miffed
CHARACTER RIGHT ramsey neutral
Latoya: OK, will do. #bored
Ramsey: That's everyone. Stand-up's over.
-> END
