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
VAR debug = false
{ debug:
    IN DEBUG MODE!
    * [Beginning...] -> intro
  - else:
    -> intro
}

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
Latoya: "...Better.
Latoya: #sigh
Latoya: I might should've gotten my sleep schedule right when I had the chance last week.
Latoya: But what is your first real day of work without being too damn tired? #miffed
// scene: Latoya showering, only seen through shower curtain.
// bg: Latoya's room
// left-character: latoya, sleep clothes
Latoya: Whew... That's better. #sigh
Latoya: OK, what to wear? #bored
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
* [How dare she!]
  Latoya: Aren't girlfriends supposed to sleep in bed with you? #miffed
  ~ raise(clara_object)
  * * [Oh well...]
      ~ lower(latoya_lewd)
      Latoya: Anyway...
  * * [She'd be better as a toy...]
      ~ raise(latoya_lewd)
      ~ raise(clara_object)
      Latoya: Maybe I should make her a nice Speedy Toy with handles to carry her around... #sly
      Latoya: hee hee hee... #lewd
* [I missed her...]
  ~ lower(latoya_lewd)
  ~ raise(latoya_object)
  Latoya: I wonder if our relationship is falling apart... #sad
  // beat
  Latoya: Can't dwell on that now...
* [My little Speedy...]
  Latoya: I really hope she got some good work done on her art. #slight-smile
  ~ lower(clara_object)
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
  - - Latoya: She's really been such a good girlfriend.
- Latoya: *gurgle* #surprised
Latoya: Huh, guess I'm kind of hungry... #embarassed
Latoya: Clara has some leftover pizza there...
* (steal_pizza) [Yoink!]
  ~ raise(latoya_object)
  ~ raise(clara_object)
  Latoya: Stolen pizza is the best pizza! #sly
* [Nah.]
  ~ lower(latoya_object)
  ~ lower(clara_object)
  Latoya: Nah, I'll just get something from the cafe.
- Latoya: I wonder if I should wake her up?
* (wake_up_clara) [Yeah.]
  Latoya: Yeah, it's a good idea...
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
