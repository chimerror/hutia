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

// Story variables.
VAR kissed_clara_day0 = false
VAR flirted_with_ramsey_day0 = false
VAR made_out_with_ramsey_day0 = false

// ------------------------------------------------------------------------------------------------
// DEBUG MODE
// ------------------------------------------------------------------------------------------------
VAR debug = false
{ debug:
    IN DEBUG MODE!
    * [Beginning...] -> intro
    * [To Work...] -> work_day0
    * [Chat With Ramsey...] -> chat_with_ramsey_day0
    * [Back Home...] -> ride_home_day0
    * [Chat With Clara...] -> living_room_day0
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
-> wake_up_day0

=== wake_up_day0 ===
// music main theme
IMAGE LatoyaAlarm
CHARACTER LEFT latoya sleepy
Latoya: Ungh...
Latoya: Waking up is a pain...
CHARACTER LEFT OFF
// music stops
TITLE Day 00
// music: latoya's theme, morning
// MUSIC LatoyasTheme ONCE
CHARACTER LEFT latoya
Latoya: ...Better.
Latoya: *sigh* #miffed
Latoya: I might should've gotten my sleep schedule right.
Latoya: After all, I had the chance last week.
Latoya: But what is your first real day of work without being too damn tired?
// scene: Latoya showering, only seen through shower curtain.
BG IMAGE bedroom
// left-character: latoya, sleep clothes
Latoya: Whew... That's better. #neutral
Latoya: OK, what to wear? #bored
<- debug_options(-> wake_up_day0)
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
-> living_room_morning_day0

=== living_room_morning_day0
// bg: Living Room
// left-character: latoya, button-up shirt, work badge
Latoya: Well, here we go... #bored
Latoya: Oh! #nervous
Latoya: It looks like Clara fell asleep out here...
// scene: Clara, sleeping on couch
<- debug_options(-> living_room_morning_day0)
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
    Clara: And, like, uh don't think I didn't see you totally stealing my pizza... #sly
    Clara: ...you little scavenger.
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
  ~ kissed_clara_day0 = true
  Latoya: *kiss* #smile
  Clara: ! #nervous
  Latoya: . #sly
  Clara: ! #blushing-happily
* [I could punch her...]
  ~ lower(latoya_lewd)
  ~ lower(clara_lewd)
  Latoya: ... #miffed
  { latoya_lewd > 0:
      Clara: *kiss* #smile
      Latoya: ! #nervous
      Clara: . #sly
      Latoya: ! #blushing-happily
      ~ kissed_clara_day0 = true
  }
- Latoya: Thanks for the vote of confidence...
Clara: You're welcome. Have fun! #laugh
Latoya: I'll try. #bored
CHARACTER RIGHT OFF
-> work_day0

=== work_day0
// bg: Bus
CHARACTER LEFT latoya
Latoya: Ugh, the number 8 is always so packed at this time.
Latoya: This is why I took that sabbatical from Glaistig anyway.
Latoya: But then again, having money to buy things was pretty nice... #bored
Latoya: But is it really worth being packed in like sardines by a bunch of tech bros? #miffed
// bg: Office
Latoya: Ah, I've got a few minutes before stand-up... #bored
Latoya: Maybe I'll just try to enjoy my coffee— #sly
CHARACTER RIGHT ramsey
Ramsey: Good morning, Latoya. #neutral
Latoya: Oh, it's Ramsey. He's an old college buddy! #neutral
Latoya: Though right now, he's more like my boss.
Latoya: Huh, how should I say hi?
<- debug_options(-> work_day0)
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
  ~ flirted_with_ramsey_day0 = true
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
Latoya: I'm not too worried, it doesn't look like anything changed while I was gone.
Latoya: No estimate updates. #neutral
Ramsey: Good. Chat with Jake if you have questions.
Ramsey: He just cut his teeth on the build last month.
CHARACTER RIGHT jake smile
Jake: Yeah, I'm an expert now, I guess.
Latoya: An expert? I've written code that's probably older than you, kid. #miffed
CHARACTER RIGHT ramsey neutral
Latoya: OK, will do. #bored
Ramsey: That's everyone. Stand-up's over.
Latoya: Hmmm, I could focus on work or maybe chat with Ramsey some more...
<- debug_options(-> ramsey_introduction)
* [Focus on work.]
  Latoya: Yeah, I guess he'll be too busy to chat with.
  Latoya: Well, here we go...
  ~ alter(ramsey_object, 2)
  ~ alter(latoya_object, 2)
  -> ride_home_day0
* [Chat with Ramsey.]
  ~ alter(ramsey_object, -2)
  ~ alter(latoya_object, -2)
  Latoya: Hey, Ramsey?
  Ramsey: Oh?
  Latoya: We haven't had a chance to catch up since I've been back, and... #neutral
  Ramsey: Ah, yeah, we can chat, let's go to my office... #smile
  Latoya: You have an office? #nervous
  Latoya: While us plebes labor out here? #sly
  Ramsey: Uh, yeah, I guess because I have to have one-on-ones and stuff... #nervous
  -> chat_with_ramsey_day0

=== chat_with_ramsey_day0
// bg ramsey's office
CHARACTER OFF
CHARACTER RIGHT Ramsey
Ramsey: See, it's pretty small... #miffed
CHARACTER LEFT Latoya
Latoya: Glaistig is still frugal as ever, I see. #miffed
Ramsey: Yep. It's company principle after all... #laugh
Ramsey: Kind of sad that our parents wished they could have a bigger office... #neutral
Ramsey: But we just want to have one at all.
Latoya: It's still pretty nice, isn't it? #neutral
<- debug_options(-> chat_with_ramsey_day0)
* [You could listen to music...]
  ~ alter(ramsey_lewd, -2)
  ~ alter(latoya_lewd, -2)
  Latoya: I mean you can listen to music on speakers in here, I bet! #grin
  Ramsey: I probably could... #sly
  Ramsey: Then again, these walls are pretty thin... #bored
  Latoya: Bah, that never stopped you from rocking out before! #laugh
  Latoya: Rams, Air Guitar Superstar!
  Ramsey: Oh, you flatter me. #blushing-happily
* (flirt) [You could have some real fun in here...]
  ~ alter(ramsey_lewd, 1)
  ~ alter(latoya_lewd, 1)
  Ramsey: What do you mean?
  <- debug_options(-> flirt)
  * * (keep_flirting) [Keep flirting...]
    Latoya: You know, a lot like we did that one time in college. #sly
    Ramsey: Where we were playing D&D in the living room? #sly
    Ramsey: And I said you needed to have a DM conference?
    Ramsey: Then you fondled me with our friends outside waiting?
    Latoya: Yeah! #smile
    Latoya: I guess I have sort of a public fetish... #blushing-happily
    Ramsey: It's OK, it's one of the things I've always liked about you.
    <- debug_options(-> keep_flirting)
    * * * {latoya_object < 0} [Reminisce...]
      ~ alter(latoya_object, -3)
      ~ alter(ramsey_object, -3)
      Latoya: That's nice to hear! #smile
      Latoya: Though a lot of that had to do with you taking initiative... #sly
      Latoya: I just expected the grope to be a tease, but you really... #smile
      Latoya: ...Made it more. #sly
      Ramsey: What can I say, I rolled a nat 20... #sly
      -> what_happened
    * * * {latoya_object >= 0} [Trail off...]
      Latoya: Oh, you... #blushing-happily
      Ramsey: . #sly
    * * * [Why not relive old times?]
      Latoya: Why not relive those times? #sly
      Latoya: *kiss* #smile
      Ramsey: ! #nervous
      Ramsey: !!! #blushing-happily
      ~ alter(latoya_lewd, 3)
      ~ alter(ramsey_lewd, 3)
      -> make_out
  * * {latoya_object >= 0} [Work inappropriate stuff...]
    Latoya: Oh, you know, real work inappropriate stuff, I guess. #bored
    Ramsey: Yeah... Maybe we can get coffee later to talk about that... #nervous
    -> what_happened
  * * {latoya_object < 0} [Pivot!]
    ~ alter(latoya_object, -5)
    ~ alter(ramsey_object, -5)
    Latoya: You know, host D&D games or something. #laugh
    Ramsey: Ha! Apparently Jake has never played anything before 4th ed! #smile
    Latoya: Oh, my, God, he is like a baby! #nervous
    Ramsey: Yeah, but he's learning pretty quickly. I was the actual hiring manager... #neutral
    Latoya: Huh. How did that feel? #neutral
    Ramsey: A little tough, we went through a lot of people... #miffed
    Ramsey: ...most of whom could barely solve a simple problem.
    Ramsey: That's actually how I got promoted... #neutral
    Latoya: Why's that? #nervous
    Ramsey: Well, the old manager had actually taken a shining to you. #smile
    Ramsey: Basically believed the project was a waste without your skills.
    Latoya: You have to be kidding me!
    Latoya: I thought that guy hated me!
    Ramsey: Well, he didn't like how vocal you were about problems and... #miffed
    Latoya: Oh, yeah, totally get it. Can't handle an angry black woman. #angry
    Ramsey: Anyway, Jake is still learning. Though, he worked on that new hospital AI!
    Latoya: Huh, I thought I heard about that. DAWG or something like that? #bored
    Ramsey: HOU-ND, I believe. It was a joint project with his school. #neutral
    Ramsey: Apparently it's already being used pretty regularly for diagnoses.
    Ramsey: Obama had extended ACA funding for offering it to hospitals.
    Ramsey: Though with the Republicans in power, who knows if it'll keep up? #miffed
    Latoya: Ugh, that's right, the dumber Bush brother is president now. #angry
    Latoya: I've been trying to forget.
    Ramsey: Yeah... Clinton's loss was a real shock. #sad
    -> what_happened
  * * {latoya_lewd > 1} [Surprise kiss!]
    ~ alter(latoya_lewd, 5)
    ~ alter(ramsey_lewd, 5)
    Latoya: *kiss* #smile
    Ramsey: ! #nervous
    Ramsey: !!! #blushing-happily
    -> make_out
- -> what_happened

= make_out
~ made_out_with_ramsey_day0 = true
Latoya: I wasn't planning on starting a makeout session with Ramsey... #blushing-happily
Latoya: But here I am...
{ kissed_clara_day0:
    Latoya: It might could be something in the air today.
    Latoya: Clara and I don't normally kiss like that in the morning...
    Latoya: Well, not recently anyway... #miffed
}
Latoya: Shit! Shit! That's right consent! #nervous
Latoya: Though... he already has his arms around me... #blushing-happily
Latoya: ...and the kiss hasn't stopped...
* [No, consent is vital!]
  ~ alter(latoya_object, -3)
  ~ alter(ramsey_object, -2)
  Latoya: Wait, uh, sorry, I've been kind of horny all day... #sad
  { flirted_with_ramsey_day0:
    Ramsey: Yeah, you're a pretty forward woman... #sly
    Ramsey: But, not usually the type to flirt at work...
    Latoya: Yeah...
  }
  Latoya: I need to ask: do you want to do this?
  { ramsey_lewd > 0 && ramsey_object < 0:
      Ramsey: Sure... It's... #neutral
      Ramsey: Been a while... #sly
    - else:
      Ramsey: No, it's just... #sad
      Ramsey: I really worry about breaking company policy.
      Ramsey: I'm such a nerd! #angry
      Latoya: No... It's OK, that's the right thing to do. #neutral
      Latoya: Besides, you're a very lovely nerd, you know! #smile
      -> what_happened
    }
    Latoya: OK, then. Let me grab that booty! #sly
    Ramsey: !!! #blushing-happily
* [I can assume...]
  ~ alter(latoya_object, 3)
  ~ alter(ramsey_object, 2)
  Latoya: I can assume he's for it, can't I?
  { ramsey_lewd < 0 || ramsey_object > 0:
      Ramsey: No, I can't really do this, Latoya. #sad
      Latoya: Yeah, I'm not sure what's come over me lately. #sad
      Ramsey: I'm willing to talk, though...
      Latoya: OK.
      -> what_happened
  }
- Latoya: Such a bountiful booty, Rams! #sly
Ramsey: Well, I've been doing some personal training on my glutes recently.
Ramsey: It's supposed to help with my back pains. #miffed
Latoya: Yeah, sitting in an office chair all day can't be the best... #neutral
Latoya: So why not continue to sit in a Latoya-chair... #sly
Ramsey: Gladly. #sly
Latoya: It's funny that Ramsey isn't that much taller than me...
Latoya: Clara is taller than him, after all...
Latoya: But, he has this bulk that I find invigorating.
Latoya: And his scent is so different than hers.
Latoya: Clara smells of paint so very often, and I like that smell...
Latoya: Ramsey, though... has that male musk just perfectly balanced.
Latoya: That perfect balance between sweat and cleanliness.
Latoya: And then, the feel of his tongue in my mouth...
Latoya: He doesn't know his own strength, but I can bring it out in him...
Latoya: Just as I can feel his cock up against me...
Latoya: Oh, he's pulling away...
Ramsey: Wow... #blushing-happily
Ramsey: You still have such a strong kiss!
Latoya: What, did you think I just stopped for a year?! #miffed
Ramsey: No, No! #nervous
Latoya: I know you and Clara never played around, but she can surprise you. #sly
-> what_happened

= what_happened
Latoya: So anyway, I just kind of wanted to see how you were doing. #neutral
{ made_out_with_ramsey_day0:
    Ramsey: Honestly, somewhat a lot better, and somewhat stirred all up! #blushing-happily
    Ramsey: Thanks to you. #sly
    Latoya: ! #smile
}
Ramsey: Really for the most part, It's really the same old-same old. #miffed
Ramsey: I mean, I guess becoming a lead is a pretty big career jump...
Ramsey: But, then it really feels like... I'm missing something. #sad
Latoya: Self-satisfaction?
Ramsey: That's probably it. Just what's outside my life besides work is limited. #miffed
Latoya: That's pretty much a guarantee here at Glaistig. #miffed
Latoya: I warned you when you moved up here.
Ramsey: I know, I know. #neutral
Ramsey: It's funny because I told you everything was OK when we broke up... #sad
Latoya: I knew it wasn't OK, Rams. #sly
Ramsey: What?
Latoya: Your family was pressuring you, but...
Latoya: ...I could tell your eyes sparkled when I was around.
Latoya: But you know what I told you most likely...
Ramsey: Yeah, I wasn't ever going to be Clara. I'm just not that type of foraging partner. #miffed
Latoya: Well, yeah. But you told me...
Ramsey: Right. I didn't need a partner for my life...
Ramsey: ...I just needed some relaxing sex and emotional intimacy.
Latoya: Right. But I of course get why you can still have those lingering thoughts. #neutral
Latoya: You're not the only one who can do stupid moody things...
Ramsey: What do you mean? #neutral
Latoya: So you asked how Clara and I weren't married? #miffed
Ramsey: Right... Like a year ago...
Latoya: I move like molasses, sometimes, all right?
Latoya: Anyway, We were going to about three years ago. Then...
Ramsey: Oh... #sad
Latoya: Yeah, My dad died. #sad
Latoya: That just left my mom, and well... #miffed
Latoya: I suspect she's not sold on this bi lesbian thing...
Ramsey: Has she told you that? #miffed
Latoya: No... not really... #miffed
Latoya: I just suspect it. But anyway, I cancelled the plans after the funeral.
Latoya: Clara herself didn't seem to mind much. "Relationship anarchist", after all.
Ramsey: Right. #neutral
Latoya: It eats at me.
Latoya: But honestly, we've been fine, though I feel like...
Latoya: She was taking me for granted when I stayed at home...
Latoya: But so was I...
Latoya: And the bank account surely didn't like it. #angry
Latoya: Why are my emotions so complicated they can't fix themselves in a year?
Ramsey: Are anyones? #grin
Latoya: Nope, I guess not. #laugh
Ramsey: So we're just two moody sad sacks, aren't we? #laugh
Latoya: Yep.
Latoya: Well, I guess I'll go do some work. #smile
Ramsey: Can we sad sacks teach a machine to hard sell stuffed animals? #sly
Ramsey: Do we dare attempt such a feat?
Latoya: We do it not because we are cool, but because... we... are... not. #angry
Latoya: Thanks, Rams. #smile
Ramsey: No problems, Giggles. #smile
-> ride_home_day0

=== ride_home_day0
// bg bus
CHARACTER OFF
CHARACTER LEFT latoya angry
Latoya: Ugh, packed like sardines AND stuck in traffic!
Latoya: Well, I guess I'll read up on this new framework we're using. #miffed
Latoya: Every couple of months, some fool just decides to reinvent the wheel.
{ latoya_object > 0:
    Latoya: "Oh yes, we must absolutely architect a whole new DSL..." #angry
    Latoya: "...In order to best get the low-hanging fruit without..."
    Latoya: "...introducing cross-cutting conerns." Ugh.
}
Latoya: *sigh*
Latoya: I guess that's why they pay me the big bucks. #bored
{ latoya_object > 0:
    Latoya: I think that guy over there is staring at me... #miffed
    Latoya: He might think I'm crazy for ranting in my head.
    Latoya: *sigh* #bored
}
Latoya: Well, let me read...
Latoya: Oh, great, the author of this thinks he's a joker... #miffed
-> living_room_day0

=== living_room_day0
// bg living room
CHARACTER LEFT Latoya
Latoya: Home sweet home! #smile
CHARACTER RIGHT Clara miffed
Latoya: Hmmm, looks like Clara is working in the studio... #miffed
<- debug_options(-> living_room_day0)
+ { latoya_object < 1 } [Say hi to Clara.]
  Latoya: Hmm... How to say hi?
  + + [Just another day...]
    Latoya: Evening, Speedy. #bored
  + + {latoya_object < 0 } [Nice to see her after a long day...]
    Latoya: Evening, Speedy. #smile
  + + [Maybe some fun can happen tonight...]
    Latoya: Evening, Speedy. #sly
    ~ alter(latoya_lewd, 2)
    ~ alter(clara_lewd, 2)
  - - Clara: Oh, huh? Hi, Giggles! #smile
  ~ alter(latoya_object, -2)
  ~ alter(clara_object, -2)
+ [Probaby should leave her alone.]
  Latoya: She's probably deep in "art space", I probably shouldn't bother her. #neutral
  Latoya: Plus, I can hear her headphones bleeding a little.
  Clara: Oh, hey, you're, like home! I totes wanted to mention something. #neutral
  ~ alter(latoya_object, 2)
  ~ alter(clara_object, 2)
+ [Just stick my head in.]
  Latoya: I'll just stick my head in...
  Latoya: That way, she can just ignore me if she's too busy.
  Clara: Oh, hey, Giggles, you're home! #smile
  ~ alter(latoya_object, -1)
  ~ alter(clara_object, -1)
- Clara: So like, I noticed something really sketchy with like, the computer. #nervous
Latoya: Oh! The one in the bedroom? What exactly? #neutral
Clara: I was like, downloading music to the thumb drive...
Clara: ...and like, the antivirus came up...
Clara: ...and it was all narcing on corrupted files...
Clara: ...but on <i>the original copies</i> of the music...
Clara: ...like the ones on the <i>bedroom computer</i>...
CHARACTER LEFT Latoya miffed
Clara: ...which is totes weird, right? #miffed
Latoya: Yeah, it is...
Clara: Cause like, why would those files be corrupted?
Latoya: I'd expect your thumb drive to be corrupted.
{ latoya_lewd > 0:
    Latoya: Who knows where you stick that thing? #sly
    Clara: Heh. #sly
}
Clara: Yeah, and there's like a weird... noise when I listen to the music... #neutral
Clara: Like you hear in some of those hypnosis files?
Clara: Then again, it totes made me focus like a champ today! #smile
Latoya: That's really nice. #smile
Latoya: I'll figure out what's going on.
Latoya: I was doing some AI work to get back up to speed... #sly
Latoya: It's possible I let it play with the data.
Clara: Ooh, your foxy AI boyfriend? #sly
Latoya: Well, I wrote it to be very gender neutral. It uses 'they' pronouns. #neutral
Clara: Oh, like, sorry! #nervous
Latoya: You're apologizing to an AI, they're not... it's not a person.
Clara: That doesn't mean I can't be nice!
Clara: Anyway, tell them to stop messing with my music... #sly
Clara: It makes me... light-headed...
Latoya: Uh-huh, OK.
Latoya: Hmmm... Could be a good time to chat with Clara...
* [Yeah, after all, she's my girlfriend...]
  Latoya: So how did the rest of your day go?
  -> chat_with_clara
* [I should probably check what's up with the computer...]
  Latoya: OK, off to see what that AI is up to... #sly
  -> introducing_f0c5

= chat_with_clara
Clara: It went, like, really great! #smile
Clara: Like, if you look over here, I finished three paintings today!
Clara: I never finish even one, most days... #miffed
Latoya: Huh, these are interesting... #miffed
* [Seems more sexual than you normally do...]
  ~ alter(latoya_lewd, -1)
  ~ alter(latoya_object, 1)
  ~ alter(clara_object, 2)
  Latoya: This is a lot more sexual than most of your work... #blushing-happily
  Clara: Oh, Giggles, you don't even know. #sly
  Clara: I almost never draw titties, and boom, seven of them! #laugh
  Latoya: Seven is an odd number. #miffed
  Clara: No, duh. It's not dividable by two.
  Clara: Thanks, Ms. Miller for the math lesson. #sly
  Latoya: Hey! It'll be detention for you if you keep this up, Speedy. #angry
* [This seems a weird subject...]
  ~ alter(latoya_object, -2)
  ~ alter(clara_object, -2)
  Latoya: What is this? It's like a... savannah...
  Clara: Yeah, coming out of a swimming pool! #smile
  Clara: Like, I was just staring at the mountains from the balcony... #nervous
  Clara: Listening to some music...
  Clara: And it appeared before me like a dream...
  Clara: I leapt to it, and there you go! #laugh
  Latoya: And then this second one seems to be a bag for a toy?
  Clara: Yeah, I remember seeing it next to the pool...
  Latoya: Honestly, the gazelle with the seven tits almost seems normal after those. #bored
  Clara: Seven! A magic number! #grin
  Latoya: Brightest bright orange, too. It's pretty good, Speedy. #smile
  * * [What do you think it means?]
    ~ alter(latoya_object, -2)
    ~ alter(clara_object, -2)
    Latoya: What do you think it means? #miffed
    Clara: Uh... #nervous
    Clara: Like, uh, about the total lack of naturalness of...
    Clara: The like, female form, in like the heteronormative culture...
    Clara: ...of Late Capitalism...
    Clara: ...and how grody that all is?
    Clara: Because it like makes us sell our bodies? #blushing-happily
    Latoya: Could be. #neutral
    Latoya: The gazelle seems kind of like a toy, now that you mention it.
    Clara: Oh yeah? #nervous
    Latoya: Yeah, like one of those pool toys you could float on.
    Clara: Ah, dude, I'm some kind of genius! #grin
    Latoya: Some kind of something, at least... #sly
    Clara: Hey! #miffed
    Clara: A genius is something... #sly
  * * [I'm happy with just the two, Speedy.]
    ~ alter(latoya_lewd, 2)
    ~ alter(clara_lewd, 2)
    Latoya: I'm happy enough with just the two, Speedy. #sly
    Latoya: You know that...
    Clara: Aw, Ms. Miller, you know like, how to flatter a girl. #blushing-happily
    Latoya: Well, I do right declare you're a right fine lady, Ms. Takemura...
    { latoya_lewd > 0:
        Latoya: You and I might just run off into the night... #smile
        Clara: Oh, you'd do that with me?
        Latoya: Oh, no, Ms. Takemura... Not together, I'd chase you down and nibble you all over! #grin
        Latoya: *nibble* *nibble* *nibble*
        Clara: ! #nervous
        Clara: !!! #blushing-happily
        Latoya: Hee hee hee...
        Clara: Oh, like, grody. #miffed
        Clara: Shh, call me after Daddy goes to bed. #sly
        -> makeout
    }
  - - Latoya: You're a hoot, Speedy. #laugh
- Clara: Well, I try. #grin
-> relationship_talk

= makeout
Latoya: When Daddy goes to bed? Why wait? #sly
Latoya: *nibble* *nibble* *nibble*
Clara: Ahhh, tickly! #nervous
Latoya: Oh... #sad
Clara: Good tickly... #sly
Latoya: Oh! #smile
Latoya: Raaar! #laugh
Clara: Eek! #blushing-happily
Latoya: Part of why I love Clara is the way she squirms when I grab her...
Latoya: She says feels like she's escaping from some sort of goo as I hold her...
Latoya: I feel her wiry body wiggling through my arms, just slipping away...
Latoya: So I grab her overalls to pull her back...
Latoya: And stick my big hand under her shirt to play with her nipple...
Latoya: Oh! She smells of paint, and a bit of sweat.
Latoya: I'd never expected to fall in love with that odor...
Latoya: But then, I'd never expected to fall in love with a woman...
Latoya: I'm really pretty lucky.
Latoya: Oh, she's actually breaking free...
Clara: Oh, wow, like, Giggles, I'm sorry, but when you had my nipple in your hand...
Latoya: Yeah? #sad
Clara: I got a vision for another piece of art! You're my muse, babe! #laugh
Latoya: Let me guess, a muse who needs to let you work... #miffed
Clara: Right! #grin
Latoya: Ok...
-> relationship_talk

= relationship_talk
Latoya: So, can I just ask a quick question?
Clara: Sure, Giggles, what's up? #neutral
* { latoya_object >= 5 } [Eh... I guess I forgot it. (lie)]
  ~ alter(latoya_object, 2)
  ~ alter(clara_object, 2)
  Latoya: Eh, I guess I forgot it. #miffed
  Clara: Dude, I do that all the time! #neutral
* { latoya_object < 4 } [I've been missing you...]
  ~ alter(latoya_object, -3)
  ~ alter(clara_object, -3)
  Latoya: This feels a bit hard for me to say... but... #miffed
  Latoya: I've been really missing you lately when I wake up...
  Clara: Oh! #nervous
  Clara: Yeah, I've been, like, really trying to find my mojo again...
  Clara: There's this possible space opening up for my art, but... #miffed
  Clara: Until today, everything I did was just totes terrible.
  Clara: So I've been burning the midnight oil. #sad
  Clara: I'm sorry, Latoya, I can make some more time...
  Clara: *gulp* #nervous
  Clara: Starting tomorrow.
  * * [Tomorrow?]
    ~ alter(latoya_object, 2)
    ~ alter(clara_object, 2)
    Latoya: Tomorrow? Why?
    Clara: With these three, and this one I'm about to do... #miffed
    Clara: I should, like, totes have enough! #smile
    Clara: Then I'll show the gallery owner, and well, we'll see!
    Latoya: Oh, OK...
  * * [That's fine, Speedy...]
    Latoya: Speedy, don't worry about that... #smile
    Latoya: I know your art is important, and I want you to do well...
    Latoya: I just feel a bit lonely perhaps... #sad
    Clara: I understand! #blushing-happily
    Clara: Well, I'll be totes done with this portfolio after tonight...
  - - Clara: So mark your calendar! #laugh
      Latoya: Will do! #laugh
* { latoya_object < 0 } [Was I getting in your way?]
  ~ alter(latoya_object, -4)
  ~ alter(clara_object, -4)
  Latoya: So, I felt kind of like I was getting in your way around here... #miffed
  Latoya: ...when I was not working.
  Clara: Oh, my God, Latoya, you can never be in my way! #nervous
  Clara: I like, maybe did cut my art because I was afraid... #miffed
  Clara: ...of being totes weird and distant...
  Clara: ...Like I am when I get in my groove...
  Clara: But, I loved having you around, Giggles! #smile
  Clara: You kept me more organized.
  Clara: Don't like, blame yourself for my weirdness... #blushing-happily
* [Are you OK with me working?]
  ~ alter(latoya_object, -1)
  ~ alter(clara_object, -1)
  Latoya: How do you feel about me going back to work? #bored
  Clara: Like, I'd totally rather you be here! #smile
  Clara: But, if you need to go to work... #miffed
  Clara: ...Like, because you need to pay the bills...
  Clara: Especially on my account... #sad
  Clara: Well...
  Latoya: I get it, Speedy. Sorry for troubling you about it. #blushing-happily
  Latoya: I'd rather be here too...
  Clara: Good to hear! #smile
* { made_out_with_ramsey_day0 } [So, I made out with Ramsey...]
  ~ alter(latoya_object, -3)
  ~ alter(latoya_lewd, 1)
  ~ alter(clara_object, -3)
  ~ alter(clara_lewd, 1)
  Latoya: I... uh... made out with Ramsey today at work. #blushing-happily
  Clara: Whoa! Totes exciting! #nervous
  Clara: Does he still have that totally grabbable bubble butt? #sly
  Latoya: He does! But, it was just grabbing that and a long kiss. #smile
  Latoya: Huh, I was kind of worried you'd be upset. #blushing-happily
  Clara: Only if you didn't tell me, Giggles! #laugh
  Clara: You know me!
  Clara: Clara Michiko Takemura! Relationship Anarchist! #angry
  Latoya: You almost make it too easy, Speedy. #sly
  Clara: Huh? #nervous
  Latoya: Just appreciating my Speedy Toy.
  Clara: Heh. #sly
- Clara: Anything else?
Latoya: Nah, Let me go check on that computer... #neutral
-> introducing_f0c5

=== introducing_f0c5
0xF0C5: TODO
-> END
