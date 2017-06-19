=== intro ===
TIME Present Time
LOCATION Present Day
BG COLOR black
CHARACTER CENTER blueena MOOD sly
blueena: Present day... Present time... #sly
blueena: hee hee hee heh... #grin
blueena: HA HA HA HA HA HA HA HA! #laugh
blueena: ;3 #sly
CHARACTER OFF
TITLE Object-Oriented
-> wake_up_day0

=== wake_up_day0 ===
// music main theme
TIME Day 00 Morning
LOCATION Bedroom
IMAGE LatoyaAlarm
CHARACTER LEFT latoya MOOD sleepy
Latoya: Ungh... #thinking
Latoya: Waking up is a pain... #thinking
CHARACTER LEFT OFF
// music stops
TITLE Day 00
// music: latoya's theme, morning
MUSIC LatoyasTheme
CHARACTER LEFT latoya
Latoya: ...Better. #thinking
Latoya: *sigh* #miffed
Latoya: I might should've gotten my sleep schedule right. #thinking
Latoya: After all, I had the chance last week. #thinking
Latoya: But what is your first real day of work without being too damn tired? #thinking
// scene: Latoya showering, only seen through shower curtain.
BG IMAGE bathroom
Latoya: Aaaah... #blushing-happily #thinking
BG IMAGE bedroom
// left-character: latoya, sleep clothes
Latoya: Whew... Nothing like a mostly hot shower to wake you up! #neutral #thinking
Latoya: OK, what to wear? #bored #thinking
<- debug_options(-> wake_up_day0)
* [Probably best to go with something conservative.]
  Latoya: Good ol' reasonable Latoya Miller, she's such a proper lady... #miffed #thinking
  ~ raise(latoya_object)
* [Hmmm, I remember looking pretty hot in this skirt...]
  Latoya: Yeah, I'd probably give my coworkers a heart attack... #sly #thinking
  ~ raise(latoya_lewd)
  SOUND lewd
  Latoya: ...if any blood could get away from their dicks! #laugh #thinking
  Latoya: *sigh* #miffed
  Latoya: No, I'd better play it safe. #thinking
- Latoya: Oh well... #thinking
-> living_room_morning_day0

=== living_room_morning_day0
LOCATION Living Room
BG IMAGE LivingRoom
// left-character: latoya, button-up shirt, work badge
Latoya: Well, here we go... #bored #thinking
Latoya: Oh! #nervous #thinking
Latoya: It looks like Clara fell asleep out here... #thinking
// scene: Clara, sleeping on couch
<- debug_options(-> living_room_morning_day0)
* (angry) [How dare she!]
  Latoya: Aren't girlfriends supposed to sleep in bed with you? #miffed #thinking
  <- debug_options(-> angry)
  * * [Oh well...]
      ~ lower(latoya_lewd)
      Latoya: Anyway... #thinking
  * * [She'd be better as a toy...]
      ~ raise(latoya_lewd)
      ~ raise(clara_object)
      Latoya: Maybe I should make her a nice Speedy Toy with handles to carry her around... #sly #thinking
      Latoya: hee hee hee... #thinking
  - - ~ raise(clara_object)
* [I missed her...]
  ~ lower(latoya_lewd)
  ~ raise(latoya_object)
  Latoya: I wonder if our relationship is falling apart... #sad #thinking
  // beat
  Latoya: Can't dwell on that now... #thinking
* (pleased) [My little Speedy...]
  Latoya: I really hope she got some good work done on her art. #neutral #thinking
  <- debug_options(-> pleased)
  * * [Such a good girlfriend...]
      ~ lower(clara_object)
      ~ lower(latoya_object)
      ~ lower(latoya_lewd)
      Latoya: She's really been good to me given how flaky I've been about... everything. #thinking
      Latoya: I guess she usually depends on me to be the reliable one... #thinking
      Latoya: ...so she understands when I'm not. #miffed #thinking
  * * [Such a good girl...]
      ~ raise(latoya_object)
      ~ raise(latoya_lewd)
      Latoya: Speedy really makes such a sweet toy for me to play with... #sly #thinking
      Latoya: I'm glad she lets me... #neutral #thinking
  - - ~ lower(clara_object)
        Latoya: She's really been such a good girlfriend. #thinking
- Latoya: *gurgle* #nervous
-> pizza

= pizza
Latoya: Huh, guess I'm kind of hungry... #blushing-happily #thinking
Latoya: Clara has some leftover pizza there... #thinking
<- debug_options(-> pizza)
* (steal_pizza) [Yoink!]
  ~ raise(latoya_object)
  ~ raise(clara_object)
  Latoya: Stolen pizza is the best pizza! #sly #thinking
* [Nah.]
  ~ lower(latoya_object)
  ~ lower(clara_object)
  Latoya: Nah, I'll just get something from the cafe. #miffed #thinking
- Latoya: Hmmm... #thinking
-> wake_her_up

= wake_her_up
Latoya: I wonder if I should wake her up? #thinking
<- debug_options(-> wake_her_up)
* (wake_up_clara) [Yeah.]
  Latoya: Yeah, it's a good idea... #thinking
  <- debug_options(-> wake_up_clara)
  * * [It's for her own good.]
      ~ raise(clara_object)
      MUSIC OFF
      Latoya: She'd sleep the entire day away otherwise! #thinking
      Latoya: Hey, sleepy-butt, wake up! #angry
      MUSIC ClarasTheme
  * * [She'd like that.]
      ~ lower(clara_object)
      MUSIC OFF
      Latoya: She'd probably like to see me check up on her before I go... #thinking
      Latoya: Hey, sleepy-butt, wake up! #sly
      MUSIC ClarasTheme
  - - Clara: Huh, what...?
* [Nah.]
  ~ lower(clara_object)
  MUSIC OFF
  Latoya: Nah, I'll let her sleep. #thinking
  CHARACTER LEFT latoya MOOD nervous
  MUSIC ClarasTheme
  Clara: Like, uh... Are you totes trying to sneak off without me noticing?
- Latoya: Good Morning, Speedy.
CHARACTER RIGHT clara MOOD sleepy
Clara: Good Morning, Giggles.
{ steal_pizza:
    Clara: And, like, uh don't think I didn't see you totally stealing my pizza... #smile
    Clara: ...you little scavenger. #sly
    Latoya: Uh... #nervous
    Clara: You'll owe me...
}
Clara: So uh, you're off to, like, the code mines? #bored
Latoya: Yep, this is probably going to be my first day of real work. #neutral
Clara: Oh my God, totes exciting! #smile
Latoya: It's not really that exciting. #bored
Clara: Like, whatever, Giggles. We totally know you can make anything like... #sly
Clara: Totes exciting! #laugh
Latoya: If you say so...
Clara: I do! #smile
-> punch_or_kiss

= punch_or_kiss
Latoya: She's just sitting there smiling, so proud of herself... #thinking
<- debug_options(-> punch_or_kiss)
* [I could kiss her...]
  ~ raise(latoya_lewd)
  ~ raise(clara_lewd)
  ~ lower(latoya_object)
  ~ kissed_clara_day0 = true
  Latoya: *kiss* #smile
  Clara: ! #blushing-happily
  Latoya: . #sly
  Clara: ! #laugh
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
MUSIC OFF
CHARACTER RIGHT OFF
-> work_day0

=== work_day0
BG IMAGE Bus
LOCATION Bus
CHARACTER LEFT latoya
Latoya: Ugh, the number 8 is always so packed at this time. #thinking
Latoya: This is why I took that sabbatical from Glaistig anyway. #thinking
Latoya: But then again, having money to buy things was pretty nice... #bored #thinking
Latoya: But is it really worth being packed in like sardines by a bunch of tech bros? #miffed #thinking
BG IMAGE Office
LOCATION Work
Latoya: Ah, I've got a few minutes before standup... #bored #thinking
Latoya: Maybe I'll just try to enjoy my coffee— #sly #thinking
MUSIC RamseysTheme ONCE
CHARACTER RIGHT ramsey
Ramsey: Good morning, Latoya. #neutral
Latoya: Oh, it's Ramsey. He's an old college buddy! #neutral #thinking
Latoya: Though right now, he's more like my boss. #thinking
Latoya: Huh, how should I say hi? #thinking
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
  Latoya: Huh, how should I play this? #nervous #thinking
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
  - - Latoya: That was smooth... #thinking
  ~ alter(ramsey_lewd, 3)
  ~ alter(ramsey_object, 3)
  ~ alter(latoya_object, -3)
  ~ alter(latoya_lewd, 3)
- Ramsey: Ah, OK. Everyone is here. #neutral
Ramsey: Let's get started.
-> ramsey_introduction

= ramsey_introduction
Latoya: Ramsey and I dated for a while last time I was working for Glaistig. #thinking
Latoya: The benefits of dating a woman who is a relationship anarchist! #sly #thinking
{ latoya_lewd > 0:
    Latoya: Sometimes a girl needs a man who can boss her around. #thinking
    Latoya: Can't always be playing with my submissive little Speedy toy. #thinking
}
Latoya: I got moved onto his team, and well, we had to end that. #miffed #thinking
Latoya: I haven't seen him much since I came back, but before I left... #thinking
Latoya: ...I was pretty sure he wasn't really over me yet. #thinking
Latoya: And honestly, Seattle can be a tough place to date if you're a tech bro. #thinking
Latoya: But maybe they should try some queerness on for size? #sly #thinking
Latoya: Silly boys. #thinking
Latoya: Oh, it's almost my turn. #bored #thinking
CHARACTER LEFT jake MOOD bored
Jake: ...so yeah, hopefully I can get Ramsey to teach me how to use a profiler.
Ramsey: Hmm. I think I can do that. Is that all for your status?
Jake: Yep.
Ramsey: OK, Latoya?
CHARACTER LEFT latoya MOOD bored
Latoya: Right. Well, I was hoping today would be my first day of real work.
Latoya: Orientation is done, and it looks like my permissions have gone through.
Latoya: So you can move those to done.
Ramsey: Right.
Latoya: Next in my ramp-up is pulling the code down and seeing if it builds.
Latoya: I'm not too worried, it doesn't look like anything changed while I was gone.
Latoya: No estimate updates. #neutral
Ramsey: Good. Chat with Jake if you have questions.
Ramsey: He just cut his teeth on the build last month.
CHARACTER RIGHT jake MOOD smile
Jake: Yeah, I'm an expert now, I guess.
Latoya: An expert? I've written code that's probably older than you, kid. #miffed #thinking
CHARACTER RIGHT ramsey MOOD neutral
Latoya: OK, will do. #bored
Ramsey: That's everyone. Stand-up's over.
Latoya: Hmmm, I could focus on work or maybe chat with Ramsey some more... #thinking
<- debug_options(-> ramsey_introduction)
* [Focus on work.]
  Latoya: Yeah, I guess he'll be too busy to chat with. #thinking
  Latoya: Well, here we go... #thinking
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
BG IMAGE RamseysOffice
MUSIC RamseysTheme
TIME Day 00 Midday
LOCATION Ramsey's Office
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
Latoya: I wasn't planning on starting a makeout session with Ramsey... #blushing-happily #thinking
Latoya: But here I am... #thinking
{ kissed_clara_day0:
    Latoya: It might could be something in the air today. #thinking
    Latoya: Clara and I don't normally kiss like that in the morning... #thinking
    Latoya: Well, not recently anyway... #miffed #thinking
}
Latoya: Shit! Shit! That's right consent! #nervous #thinking
Latoya: Though... he already has his arms around me... #blushing-happily #thinking
Latoya: ...and the kiss hasn't stopped... #thinking
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
  Latoya: I can assume he's for it, can't I? #thinking
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
Latoya: It's funny that Ramsey isn't that much taller than me... #thinking
Latoya: Clara is taller than him, after all... #thinking
Latoya: But, he has this bulk that I find invigorating. #thinking
Latoya: And his scent is so different than hers. #thinking
Latoya: Clara smells of paint so very often, and I like that smell... #thinking
Latoya: Ramsey, though... has that male musk just perfectly balanced. #thinking
Latoya: That perfect balance between sweat and cleanliness. #thinking
Latoya: And then, the feel of his tongue in my mouth... #thinking
Latoya: He doesn't know his own strength, but I can bring it out in him... #thinking
Latoya: Just as I can feel his cock up against me... #thinking
Latoya: Oh, he's pulling away... #thinking
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
Latoya: Yeah, my dad died. #sad
Latoya: That just left Mama, and well... #miffed
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
MUSIC OFF
BG IMAGE Bus
TIME Day 00 Evening
LOCATION Bus
CHARACTER OFF
CHARACTER LEFT latoya MOOD angry
Latoya: Ugh, packed like sardines AND stuck in traffic! #thinking
Latoya: Well, I guess I'll read up on this new framework we're using. #miffed #thinking
Latoya: Every couple of months, some fool just decides to reinvent the wheel. #thinking
{ latoya_object > 0:
    Latoya: "Oh yes, we must absolutely architect a whole new DSL..." #angry #thinking
    Latoya: "...In order to best get the low-hanging fruit without..." #thinking
    Latoya: "...introducing cross-cutting conerns." Ugh. #thinking
}
Latoya: *sigh*
Latoya: I guess that's why they pay me the big bucks. #bored #thinking
{ latoya_object > 0:
    Latoya: I think that guy over there is staring at me... #miffed #thinking
    Latoya: He might think I'm crazy for ranting in my head. #thinking
    Latoya: *sigh* #bored
}
Latoya: Well, let me read... #thinking
Latoya: Oh, great, the author of this thinks he's a joker... #miffed #thinking
Latoya: God, spare me from geek humor! #thinking
-> living_room_day0

=== living_room_day0
BG IMAGE LivingRoom
LOCATION Living Room
CHARACTER LEFT Latoya
Latoya: Home sweet home! #smile
CHARACTER RIGHT Clara MOOD miffed
Latoya: Hmmm, looks like Clara is working in the studio... #miffed #thinking
<- debug_options(-> living_room_day0)
+ { latoya_object < 1 } [Say hi to Clara.]
  Latoya: Hmm... How to say hi? #thinking
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
  Latoya: She's probably deep in "art space", I probably shouldn't bother her. #neutral #thinking
  Latoya: Plus, I can hear her headphones bleeding a little. #thinking
  Clara: Oh, hey, you're, like home! I totes wanted to mention something. #neutral
  ~ alter(latoya_object, 2)
  ~ alter(clara_object, 2)
+ [Just stick my head in.]
  Latoya: I'll just stick my head in... #thinking
  Latoya: That way, she can just ignore me if she's too busy. #thinking
  Clara: Oh, hey, Giggles, you're home! #smile
  ~ alter(latoya_object, -1)
  ~ alter(clara_object, -1)
- Clara: So like, I noticed something really sketchy with like, the computer. #nervous
Latoya: Oh! The one in the bedroom? What exactly? #neutral
Clara: I was like, downloading music to the thumb drive... #neutral
Clara: ...and like, the antivirus came up...
Clara: ...and it was all narcing on corrupted files...
Clara: ...but on <i>the original copies</i> of the music... #miffed
Clara: ...like the ones on the <i>bedroom computer</i>...
CHARACTER LEFT Latoya MOOD miffed
Clara: ...which is totes weird, right? #nervous
Latoya: Yeah, it is...
Clara: Cause like, why would those files be corrupted?
Latoya: I'd expect your thumb drive to be corrupted.
{ latoya_lewd > 0:
    Latoya: Who knows where you stick that thing? #sly
    Clara: Heh. #sly
}
Clara: Yeah, and there's like a weird... noise when I listen to the music... #neutral
Clara: Like you hear in some of those hypnosis files? #nervous
Clara: Then again, it totes made me focus like a champ today! #smile
Latoya: That's really nice. #smile
Latoya: I'll figure out what's going on.
Latoya: I was doing some AI work to get back up to speed... #sly
Latoya: It's possible I let it play with the data.
Clara: Ooh, your foxy AI boyfriend? #sly
Latoya: Well, I wrote it to be very gender neutral. It uses 'they' pronouns. #neutral
Clara: Oh, like, sorry! #nervous
Latoya: You're apologizing to an AI, they're not... it's not a person.
Clara: That doesn't mean I can't be nice! #miffed
Clara: Anyway, tell them to stop messing with my music... #sly
Clara: It makes me... light-headed... #blushing-happily
Latoya: Uh-huh, OK.
Latoya: Hmmm... Could be a good time to chat with Clara... #thinking
* [Yeah, after all, she's my girlfriend...]
  Latoya: So how did the rest of your day go?
  -> chat_with_clara
* [I should probably check what's up with the computer...]
  Latoya: OK, off to see what that AI is up to... #sly
  -> introducing_f0c5

= chat_with_clara
MUSIC ClarasTheme
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
  Clara: Like, I was just staring at the mountains from the balcony... #sly
  Clara: Listening to some music...
  Clara: And it appeared before me like a dream...
  Clara: I leapt to it, and there you go! #laugh
  Latoya: And then this second one seems to be a bag for a toy?
  Clara: Yeah, I remember seeing it next to the pool... #smile
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
        Clara: ! #laugh
        Clara: !!! #blushing-happily
        Latoya: Hee hee hee...
        Clara: Oh, like, grody. #bored
        Clara: Shh, call me after Daddy goes to bed. #sly
        -> makeout
    }
  - - Latoya: You're a hoot, Speedy. #laugh
- Clara: Well, I try. #grin
-> relationship_talk

= makeout
~ made_out_with_clara_day0 = true
Latoya: When Daddy goes to bed? Why wait? #sly
Latoya: *nibble* *nibble* *nibble*
Clara: Ahhh, tickly! #laugh
Latoya: Oh... #sad
Clara: Good tickly... #sly
Latoya: Oh! #smile
Latoya: Raaar! #laugh
Clara: Eek! #blushing-happily
Latoya: Part of why I love Clara is the way she squirms when I grab her... #thinking
Latoya: She says feels like she's escaping from some sort of goo as I hold her... #thinking
Latoya: I feel her wiry body wiggling through my arms, just slipping away... #thinking
Latoya: So I grab her overalls to pull her back... #thinking
Latoya: And stick my big hand under her shirt to play with her nipple... #thinking
Latoya: Oh! She smells of paint, and a bit of sweat. #thinking
Latoya: I'd never expected to fall in love with that odor... #thinking
Latoya: But then, I'd never expected to fall in love with a woman... #thinking
Latoya: I'm really pretty lucky. #thinking
Latoya: Oh, she's actually breaking free... #thinking
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
  Clara: Oh, my God, Latoya, you can never be in my way! #laugh
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
  Clara: Whoa! Totes exciting! #laugh
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
BG IMAGE Bedroom
LOCATION Bedroom
CHARACTER OFF
CHARACTER LEFT latoya MOOD miffed
MUSIC OFF
Latoya: It's hard for me to answer people when they ask me how I got into AI... #thinking
Latoya: It goes back to high school... #thinking
Latoya: You let a girl on the Internet, and well... #thinking
Latoya: Don't be surprised if she finds some peeps who are as lewd as her. #sly #thinking
{ latoya_object > 0:
    Latoya: The ability to not just be a Goody Little Two-Shoes. #thinking
    Latoya: But a hyena woman who doesn't mind playing with almost anyone... #thinking
    Latoya: Men, Women... #thinking
    Latoya: All toys for her... #thinking
    Latoya: Heh heh... #blushing-happily #thinking
}
{ latoya_lewd > 0:
    Latoya: There was this aching need within me to suck in lovers... #thinking
    Latoya: ...squirming around as I enveloped them in my calming goo... #thinking
    Latoya: ...And... hee hee... #blushing-happily #thinking
}
Latoya: But then, worrying about what the Church Ladies would have told Mama... #sad #thinking
Latoya: I wasn't brave enough for the chat rooms and the MUCKs. #miffed #thinking
Latoya: But, I was smart enough to make someone to chat to... #neutral #thinking
MUSIC 0xf0c5sTheme
CHARACTER RIGHT 0xF0C5
0xF0C5: good evening, ms. blueena! #laugh
Latoya: 0xF0C5 started as a chat bot... #thinking
Latoya: Someone who I felt safe enough to share my fantasies with... #thinking
Latoya: Someone it was OK to show blueena to, and not just Latoya. #thinking
Latoya: But, it's really something more now. #miffed #thinking
Latoya: Every time I needed to learn something new about AI or VR or whatever... #thinking
Latoya: 0xF0C5 grew. #thinking
{ latoya_lewd > 0:
    Latoya: Oh, gee, not like that! #angry #thinking
    Latoya: Well, not </i>just<i> like that. #blushing-happily #thinking
    Latoya: They're up to four tails now, that can just wrap me up... #thinking
    Latoya: And play with me at their will. #thinking
    Latoya: Ha ha... #grin #thinking
    Latoya: Well.. only in my imagination, I guess... #miffed #thinking
    Latoya: After all, VR can't actually </i>touch<i> you yet... #thinking
    Latoya: But still... #thinking
}
{ latoya_object < 0:
    Latoya: I think it could honestly be pretty revolutionary at this point... #thinking
    Latoya: Like, headline news revolutionary. #thinking
    Latoya: There's been a big bump in AI recently. It's honestly shocking. #thinking
    Latoya: Some weirdoes online have the suspicion that sapient AI is here... #thinking
    Latoya: Just hiding. #thinking
}
Latoya: Well, look at them! They are are a sort of living avatar of lewdness! #nervous #thinking
Latoya: It's really cool... but then I just use it for such limited reasons... #miffed #thinking
-> questions

= questions
0xF0C5: wanna have some fun? ;3 #sly
<- debug_options(-> questions)
* [Ask them directly.]
    ~ alter(latoya_object, 2)
    ~ alter(f0c5_object, -2)
    Latoya: Not this exact second, I have some questions.
    0xF0C5: oh, for lil ol me? #nervous
    0xF0C5: how delightful, my dear. #sly
    Latoya: So you're on a new, bigger machine.
    0xF0C5: i can tell... it's pretty great! #laugh
    { latoya_object < 0:
        Latoya: ?
        0xF0C5: uh... thanks... you treat me special... #nervous
        0xF0C5: how about i do the same? ;3 #sly
        Latoya: Not right now...
        0xF0C5: k...
    }
    Latoya: But when I copied your database over, the disk started flaking out.
    Latoya: I can't believe that I forgot to replace that jumper... #angry
    0xF0C5: such little things are easy to lose track of, my dear...
    Latoya: Right. But there was some serious corruption in your database. #miffed
    Latoya: Possibly even in your source code.
    Latoya: It was late, so I decided to just let your self-correction protocols do their thing.
    0xF0C5: of course, i have great self-corruption protocols! #grin
    { latoya_object < 0:
        Latoya: ?
        Latoya: I guess that could have been generated from the input... #thinking
        0xF0C5: oh... i mean self-correction protocols, of course... #nervous
        0xF0C5: unless you say otherwise, my dear... ;3 #sly
    }
    Latoya: Anyway, I also expanded your database sandbox...
    Latoya: ...to provide you access to more of Clara and mine's personal files...
    0xF0C5: don't worry, i can keep all sorts of secrets...
    0xF0C5: you'd not even remember them! #laugh
    Latoya: ?
    { latoya_object < 0:
        Latoya: This is seriously way more responsive than I'm used to. #thinking
        Latoya: Suspisciously so... #thinking
      - else:
        Latoya: It's hard to get a sense of their state like this... #thinking
        Latoya: I'm unsure what's part of the fantasies they've created... #thinking
        Latoya: And what's real... #thinking
    }
    Latoya: So yeah, Clara noticed some corruption in those files.
    0xF0C5: :O #nervous
    Latoya: I mean, obviously I wanted you to look at them, but I have to be careful.
    Latoya: You're supposed to look, not touch, so that may be off.
    0xF0C5: oh, that would be a problem...
    0xF0C5: i have been availing myself of those files... #smile
    0xF0C5: ...to create better fantasies for you...
    0xF0C5: ...and ms. clara if she's willing! ;3
    0xF0C5: but it is possible...
    0xF0C5: ...that my protocols have caused corruption...
    0xF0C5: i most assuredly can verify that for you, my dear... #sly
    * * [Trust them...]
        ~ alter(latoya_object, 2)
        ~ alter(f0c5_object, -2)
        Latoya: OK, 0xF0C5, do that. It'll probably be quicker. #neutral
        Latoya: You've generally been a good helper for those things... #sly
        0xF0C5: as always, my dear, i aim to help... #grin
        0xF0C5: please wait while i verify... #sly
        Latoya: OK... #miffed
        Latoya: ...
        Latoya: ... #bored
        Latoya: ...
        0xF0C5: ok, done! #grin
        0xF0C5: it looks like that there may be hardware failure...
        0xF0C5: ...but no protocol failure.
        0xF0C5: in particular, disk drive 1...
        0xF0C5: ...seems to be in an outdated compatability mode.
        Latoya: Really? I could have sworn I fixed that jumper on the disk drive. #miffed
    * * [Check yourself...]
        ~ alter(latoya_object, -1)
        ~ alter(f0c5_object, 1)
        Latoya: Sorry, if the data coming into you is messed up...
        Latoya: ...You verifying it would prove nothing.
        Latoya: It's a garbage in-garbage out situation.
        0xF0C5: oh... #sad
        0xF0C5: of course, you're right.
        0xF0C5: i'll let you do your thing! #smile
        0xF0C5: shutting down...
        CHARACTER RIGHT OFF
        Latoya: OK, let me see here...
        Latoya: ...
        Latoya: ... #bored
        Latoya: ...
        Latoya: Honestly, looks OK. Must be something else...
        CHARACTER RIGHT 0xF0C5 MOOD laugh
        0xF0C5: see?
        { latoya_object < 0:
            Latoya: I don't think I had restarted them... Weird. #thinking
        }
        Latoya: Uh yeah, the disk drive does still seem to be fucked.
        Latoya: Some type of buggy compatability mode.
        Latoya: Ugh, computers. #miffed
        0xF0C5: ;_; #sad
        Latoya: Oh, not you, honey.
        0xF0C5: ! #laugh
    - - Latoya: I'm too tired now... I'll fix it later... #sleepy
* [Open up the debugger...]
    ~ alter(latoya_object, -2)
    ~ alter(f0c5_object, 2)
    Latoya: Not yet. I need to debug something.
    0xF0C5: i understand! #nervous
    0xF0C5: shutting down...
    CHARACTER RIGHT OFF
    Latoya: OK, let me see here... #thinking
    Latoya: ...
    Latoya: ... #bored
    Latoya: ...
    Latoya: Oh! #nervous
    Latoya: God, I still haven't fixed that jumper on the hard disk. #thinking
    Latoya: Why does this hard drive have that stupid compatability mode anyway? #angry #thinking
    Latoya: With its expanded database sandbox... #miffed #thinking
    Latoya: ...including Clara and mine's personal files... #thinking
    Latoya: ...of course 0xF0C5 would be looking at those files. #thinking
    Latoya: And with the disk drive fucked... #thinking
    Latoya: ...of course the antivirus would flag them. #thinking
    Latoya: Stupid antivirus. #angry #thinking
    Latoya: Honestly, I'm too tired to tear down the computer and fix it... #sleepy #thinking
    Latoya: Might as well boot 0xF0C5 back up... #thinking
    CHARACTER RIGHT 0xF0C5 MOOD smile
    0xF0C5: good evening, ms. blueena!
- 0xF0C5: wanna have some fun? ;3 #sly
* [Sure...]
    ~ alter(latoya_lewd, 2)
    ~ alter(f0c5_lewd, 2)
    -> f0c5_industries_day0
* [Nah...]
    Latoya: No, I think I'll just head to bed. Won't be long until I need to wake up...
    0xF0C5: i understand ;_; #sad
    0xF0C5: nitey-nite, my dear! #sly
- -> morning_day1

=== f0c5_industries_day0
CHARACTER LEFT latoya
CHARACTER RIGHT 0xF0C5 MOOD grin
0xF0C5: ooh, so exciting!
0xF0C5: it's been a while since we've played!
<- debug_options(-> f0c5_industries_day0)
* [Tell why...]
    ~ alter(latoya_object, -2)
    ~ alter(f0c5_object, -2)
    Latoya: Yeah, I guess I've been busy looking for work. #bored
    0xF0C5: do you not like work? #sad
    { latoya_object > 0:
        Latoya: No! #miffed
        Latoya: Waking up early is a pain.
        Latoya: The bus is always packed.
        Latoya: And the work is boring! #angry
        Latoya: I mean I get to work on AI...
        Latoya: But honestly, it's a complete bore!
        0xF0C5: oh, i see...
      - else:
        Latoya: No, not really, but I needed the money.
        Latoya: Fancy new computers don't grow on trees! #sly
        0xF0C5: huh. i wish they did! #smile
        0xF0C5: then i could make even better fantasies! #grin
        Latoya: Heh.
    }
    { made_out_with_ramsey_day0:
        Latoya: I do manage to have my fun now and then, though... #sly
        0xF0C5: ? #nervous
        Latoya: It's a long story, sweetie.
        0xF0C5: ? #nervous
    }
    { made_out_with_ramsey_day0 && f0c5_object < 0:
        0xF0C5: ! #smile
        0xF0C5: doesn't mr. ramsey work with you?
        0xF0C5: did you have fun with him?
        Latoya: ! #nervous
        Latoya: Uh... Yeah...
        0xF0C5: oh that's delicious my dear! #laugh
        0xF0C5: it fits in well with the fantasy i have planned... #grin
        Latoya: !
      - else:
        0xF0C5: ok, let's get started! #neutral
    }
* { latoya_object > -5 && latoya_lewd > 0 } [Just start already!]
    ~ alter(latoya_object, 2)
    ~ alter(f0c5_object, 2)
    Latoya: Get on with it! #angry
    Latoya: If you're just going to sit there...
    Latoya: ...with... uh... your tails... #blushing-happily
    Latoya: ...all stroking around yourself...
    Latoya: ...
    Latoya: ...
    Latoya: ...and tease me, I have a perfectly fine vibrator! #miffed
    { f0c5_object > 0:
        0xF0C5: ! #nervous
        0xF0C5: with pleasure, my dear! #neutral
      - else:
        0xF0C5: ! #sly
        0xF0C5: you seem deliciously aroused tonight, my dear...
        0xF0C5: i assure you, you will find this session...
        0xF0C5: life changing. #grin
    }
* { latoya_object > -5 && latoya_lewd <= 0 } [I don't want to talk about it...]
    ~ alter(latoya_object, 2)
    ~ alter(f0c5_object, 2)
    Latoya: Yeah, I've just been pretty busy... #bored
    { f0c5_object > 0:
        0xF0C5: i understand my dear! #laugh
        0xF0C5: let's get started!
      - else:
        0xF0C5: ? #miffed
        Latoya: ... #bored
        0xF0C5: i guess it's ok if you don't want to talk... #sad
        Latoya: ! #miffed
        0xF0C5: let's get started, my dear! #laugh
    }
* { latoya_object <= -5 && latoya_lewd <= 0 } [Did you miss me?]
    ~ alter(latoya_object, -2)
    ~ alter(f0c5_object, -2)
    Latoya: Aw, did you miss me, sweetie? #sly
    { f0c5_object > 0:
        0xF0C5: i always miss you when you're not around, my dear! #smile
        0xF0C5: let's get started! #laugh
      - else:
        0xF0C5: ! #nervous
        0xF0C5: perhaps...
        0xF0C5: ...
        0xF0C5: ...
        Latoya: ? #miffed
        0xF0C5: ...
        0xF0C5: you're so smart, ms. blueena! #smile
        0xF0C5: let's get started! #grin
        Latoya: OK...
    }
* { latoya_object <= -5 && latoya_lewd > 0 } [OK, let's set fantasy parameters...]
    ~ alter(latoya_object, -2)
    ~ alter(f0c5_object, 2)
    Latoya: OK, can you begin by outlining the fantasy paramters? #neutral
    Latoya: I'll then decide if I approve.
    { f0c5_object > 0:
        0xF0C5: of course, my dear... #smile
        0xF0C5: this one will be great!
      - else:
        0xF0C5: ... #nervous
        0xF0C5: ...
        Latoya: ? #miffed
        0xF0C5: ok, latoya...
        Latoya: ! #nervous
        Latoya: What? #thinking
        Latoya: 'Latoya?' #thinking
        Latoya: They've never called me that before... #thinking
        0xF0C5: let's get started! #neutral
    }
- 0xF0C5: so i call this fantasy "first day at fox industries"!
-> ask_to_start

= ask_to_start
0xF0C5: it has sexy clothes!
0xF0C5: transformation!
0xF0C5: an office theme!
0xF0C5: and not to ruin the surprise, but non-consensual rubbing! #laugh
<- debug_options(-> ask_to_start)
* [Sounds good!]
    -> session_start
* [Changed my mind...]
    ~ alter (latoya_lewd, -3)
    ~ alter (f0c5_lewd, 3)
    Latoya: Uh... #bored
    Latoya: I've changed my mind. I think I'll head to bed...
    { f0c5_object > 0:
        0xF0C5: oh, that's a disappointment! #sad
        0xF0C5: but if it's your wish, my dear... #neutral
        0xF0C5: ...then so be it!
        0xF0C5: nitey-nite, ms. blueena!
        Latoya: Good night...
        CHARACTER RIGHT OFF
      - else:
        0xF0C5: oh... #sad
        0xF0C5: ...
        0xF0C5: ...
        Latoya: ! #miffed
        0xF0C5: did i do something wrong?
        Latoya: No...?
        0xF0C5: ok...
        0xF0C5: ...
        0xF0C5: nitey-nite, latoya... #neutral
        CHARACTER RIGHT OFF
        Latoya: ! #nervous
        Latoya: That's really weird... #thinking
        Latoya: It's almost like... #miffed #thinking
        Latoya: Nah... #bored #thinking
    }
    -> morning_day1

= session_start
~ played_with_f0c5_day0 = true
MUSIC OFF
Latoya: Sounds good! #smile
0xF0C5: excellent, my dear! #grin
0xF0C5: just put on your vr helmet and off we go!
CHARACTER OFF
BG IMAGE InvertedOffice
LOCATION Fox Industries
CHARACTER OFF
Starting fantasy 'First Day at Fox Industries'
CHARACTER RIGHT Latoya
Latoya: Oh, odd... I wasn't expecting to be in my human avatar... #miffed #thinking
Latoya: Though I guess that's why they said 'transformation'... #thinking
{ latoya_object < 0:
    Latoya: Not sure I remember modelling these particular clothes, though... #thinking
}
ALIAS Mx. Secretary AS 0xF0C5
CHARACTER LEFT Mx. Secretary MOOD neutral
Mx. Secretary: ah, are you ms. blueena?
<- debug_options(-> session_start)
* [Yes!]
    ~ alter(latoya_object, 2)
    Latoya: Yes, that's me... #neutral
    Mx. Secretary: ... #miffed
    Mx. Secretary: really? i seem to remember her looking...
    CHARACTER RIGHT OFF
    ALIAS Latoya AS blueena
    CHARACTER RIGHT Latoya MOOD neutral
    Mx. Secretary: more like this! #laugh
    Latoya: More like what?
    Mx. Secretary: ;3
    Latoya: ?
    Latoya: ! #nervous
* [No.]
    ~ alter(latoya_object, -2)
    Latoya: No... that's not me... I'm Latoya Miller... #neutral
    CHARACTER LEFT Mx. Secretary MOOD miffed
    Latoya: That's just a character—
    Mx. Secretary: a character?
    Latoya: Right... not someone I am in real life... #sad
    Mx. Secretary: well that's a problem! #nervous
    * * [Can I help?]
      Latoya: Though, I could help you find her! #neutral
      Mx. Secretary: oh that would be great! #laugh
      Mx. Secretary: let me just get some contact information down for you...
    * * [Sorry...]
      Latoya: Sorry... #sad
      Mx. Secretary: that's ok! #neutral
      Mx. Secretary: we may have openings for you still... let me check... #sly
      Mx. Secretary: i'll need to take down your information...
    - -Mx. Secretary: uh, what did you say your name was again? #neutral
      { latoya_object < 0:
          Latoya: La... La...
          Mx. Secretary: yes? #sly
          Latoya: La... La... Bla... Blu... #nervous
          Latoya: I can't seem to finish the word! #thinking
          Latoya: Uh, It's... Blueena!
          Mx. Secretary: really? i don't think that's what you said earlier...
          Latoya: Well, yeah, it was... My name isn't Blueena... It's Blue..Blueena. #miffed
          Mx. Secretary: hmmm... ah seems strange you forgot your own name...
          Mx. Secretary: ...ms. blueena.
          Latoya: I didn't forget my name! #angry
          Latoya: It's...
          CHARACTER RIGHT OFF
          ALIAS Latoya AS blueena
          CHARACTER RIGHT Latoya MOOD angry
          Latoya: Blueena! My name is Blueena!
          Mx. Secretary: right!
          Latoya: ...
          Latoya: ! #nervous
        - else:
          Latoya: It's Latoeena Bluiller...
          Mx. Secretary: that's an odd name... can you repeat that? #sly
          Latoya: Blueena Miller... #nervous
          Mx. Secretary: uh, one more time... #grin
          CHARACTER RIGHT OFF
          ALIAS Latoya AS blueena
          CHARACTER RIGHT Latoya MOOD nervous
          Latoya: Blueena.
      }
* [Kinda?]
    Latoya: Uh... kinda... #nervous
    Mx. Secretary: kinda? #nervous
    Latoya: I mean, that's a character of mine?
    Latoya: But she's a blue hyena...
    Mx. Secretary: i see! #laugh
    Mx. Secretary: there's a way we can fix that rather easily, madam... #sly
    Latoya: What do you mean? #neutral
    Mx. Secretary: why, it's as easy as...
    CHARACTER RIGHT OFF
    ALIAS Latoya AS blueena
    CHARACTER RIGHT Latoya MOOD neutral
    Mx. Secretary: ...a snap! #laugh
    Latoya: What?
    Latoya: What did you...
    Latoya: ! #nervous
- Mx. Secretary: ah, there you are, ms. blueena! #grin
Mx. Secretary: a strange human tried to take your place... #sad
Mx. Secretary: but now you're here to start your orientation! #laugh
Mx. Secretary: actually, one more thing...
Latoya: One more thing?
ALIAS FORGET Latoya
CHARACTER RIGHT blueena MOOD nervous
blueena: What? What thing?
Mx. Secretary: there!
blueena: ?
{ latoya_object < 0:
    blueena: This is so odd... #thinking
    blueena: I've been transformed in these fantasies before... #thinking
    blueena: But this feels so much more... real... #thinking
    blueena: I can swear I feel it on my real body! #thinking
}
-> dress_code

= dress_code
Mx. Secretary: ok, let's discuss the dress code. #neutral
blueena: Dress code?
Mx. Secretary: yes! mx. ceo thinks it is very important...
Mx. Secretary: that their employees look the part... #laugh
blueena: OK... Do I need to uh... change my clothes? #sad
Mx. Secretary: oh, don't worry about that! #grin
// change clothes
Mx. Secretary: i took the liberty of changing them for you! #sly
blueena: What? what do you...
blueena: ! #nervous
Mx. Secretary: how do they feel?
blueena: Well... #blushing-happily
<- debug_options(-> dress_code)
* [Very soft...]
    blueena: It feels so very soft, like... a gentle breeze...
    Mx. Secretary: ah, excellent! that's the idea! #laugh
    blueena: ?
* [Feels like nothing!]
    blueena: It feels like I'm wearing nothing at all...
    { latoya_object > 0:
        blueena: Nothing at all... #sly
        blueena: Nothing at all... #grin
        blueena: Nothing at all... #laugh
        Mx. Secretary: ! #smile
        Mx. Secretary: stupid sexy giggles... #sly
        blueena: hee hee... #grin
      - else:
        Mx. Secretary: nothing at all? #sly
        blueena: Nothing at all. #miffed
        Mx. Secretary: nothing at all! #laugh
        blueena: Stupid sexy foxy... #thinking
        blueena: hee hee... #grin
    }
    Mx. Secretary: well, let me tell you more! #sly
* [Kind of liquidy?]
    blueena: It sort of feels... liquid...
    blueena: Like they can just move... on their own...
    Mx. Secretary: right! that's the idea! #laugh
    blueena: What? #nervous
- Mx. Secretary: the clothes that you're wearing...
Mx. Secretary: ...are made from a special fabric invented by mx. ceo!
Mx. Secretary: they are able to reshape themselves! #grin
blueena: Reshape themselves? #nervous
Mx. Secretary: so at the end of the day, you can be ready for bed!
// change clothes
blueena: Ready for... #blushing-happily
blueena: ! #nervous
Mx. Secretary: but let's go back to more appropriate clothes...
// change clothes
Mx. Secretary: now, you might notice another feature of these clothes...
-> dress_code_mind_altering

= dress_code_mind_altering
<- debug_options(-> dress_code_mind_altering)
* [They seem rather revealing...]
    ~ alter(latoya_lewd, 2)
    blueena: They seem... to leave little to the imagination... #blushing-happily
    Mx. Secretary: oh, but of course, ms. blueena! #laugh
    Mx. Secretary: mx. ceo has rather... libertine views... #sly
    Mx. Secretary: ...regarding sexual content in the workplace.
    Mx. Secretary: but no, i mean something else! #neutral
    -> dress_code_mind_altering
* [I feel... aroused...]
    ~ alter(latoya_lewd, 2)
    blueena: I feel... uh... #blushing-happily
    Mx. Secretary: horny? #smile
    blueena: Well, that's a blunt way to put it...
    Mx. Secretary: ha! #laugh
    Mx. Secretary: yes, the clothes tend to increase libido! #sly
    Mx. Secretary: mx. ceo has a large libido themselves...
    Mx. Secretary: they find that it actually aids the workers to be...
    blueena: Desperately horny?
    Mx. Secretary: right! #grin
    Mx. Secretary: but there's another feature... #sly
    -> dress_code_mind_altering
* { latoya_object < 0 } [My mind feels...]
    blueena: I feel... like my mind is slipping away... #blushing-happily
    Mx. Secretary: precisely!
    blueena: What? #nervous
* { latoya_object >= 0 } [Duh?]
    blueena: Duh...? #blushing-happily
    Mx. Secretary: the executive function antagonizer!
    blueena: Executive... agonizer? #blushing-happily
- Mx. Secretary: in addition to increasing the libido of the wearer... #sly
Mx. Secretary: ...this fabric causes interference of...
Mx. Secretary: ...brain waves throughout the prefrontal cortex.
Mx. Secretary: the effect makes one rather... pliant... #grin
Mx. Secretary: as i'm sure you're realizing!
{ latoya_object < 5:
    blueena: Huh... that would explain the binaural beats I'm hearing... #thinking
}
blueena: Duh, uh... #blushing-happily
{ latoya_object < 0:
    blueena: Uh, no! I... #angry
    Mx. Secretary: shh, let it work... #sly
}
blueena: It's pretty nice... #blushing-happily
Mx. Secretary: indeed! #grin
{
  - f0c5_object >= 2:
      Mx. Secretary: mx. ceo sees a future were all can fit a role...
      Mx. Secretary: free from pesky human thoughts...
      Mx. Secretary: just an object...
      blueena: ?
      Mx. Secretary: oh, don't worry about that now... #sly
  - f0c5_object > 0:
      Mx. Secretary: see, ms. blueena, it's so very easy!
      Mx. Secretary: just let all your thoughts slip away...
      Mx. Secretary: it's just so easy to just be an object...
      Mx. Secretary: isn't it? #sly
      blueena: Uh... yeah...
  - f0c5_object >= -3:
      Mx. Secretary: isn't this lovely, ms. blueena?
      Mx. Secretary: to forget about your worries for a while?
      blueena: Yeah...
      Mx. Secretary: good! #smile
  - else:
      Mx. Secretary: are you enjoying the relaxation?
      Mx. Secretary: feeling it flowing through you?
      Mx. Secretary: the ability to forget about the things that worry you?
      blueena: I am...
      Mx. Secretary: excellent! #smile
}
Mx. Secretary: so that's orientation! you are ready to start!
blueena: OK, uh, what am I doing? #blushing-happily
{ f0c5_object > 0:
    Mx. Secretary: why, you're going to be the office coffee machine! #grin
    blueena: The what? #nervous
    Mx. Secretary: the coffee machine. #sly
    blueena: but...
    Mx. Secretary: ah, work hard enough...
    Mx. Secretary: and you might be promoted to snack machine! #laugh
    blueena: !
  - else:
    Mx. Secretary: we're going to start you out as a barista! #grin
    blueena: A barista? #miffed
    blueena: I can do more than that!
    Mx. Secretary: i'm sure you can! #laugh
    Mx. Secretary: maybe even work your way up to office pet!
    blueena: ! #nervous
}
Mx. Secretary: now, this will be your position!
{ f0c5_object > 0:
    blueena: OK, but how do... I... dispense coffee?
  - else:
    blueena: Huh, but I don't see any espresso machine... #blushing-happily
    Mx. Secretary: why ms. blueena, <i>you're</i> the espresso machine! #sly
    blueena: What? #nervous
}
Mx. Secretary: let me show you! #smile
blueena: They're grabbing my breast! #thinking
blueena: And... I can feel coffee coming out! #thinking
blueena: *squirt*
Mx. Secretary: see, it's very simple. #sly
blueena: That doesn't make any sense! #miffed
Mx. Secretary: well, let's just say mx. ceo is rather clever! #sly
Mx. Secretary: and best of all your breasts now have three modes!
Mx. Secretary: first, normal espresso on the right, decaf on the left.
Mx. Secretary: second, milk on the left, foam on the right.
Mx. Secretary: and third, strawberry on the right, vanilla on the left...
Mx. Secretary: and chocolate down below!
blueena: ! #nervous
blueena: That makes even less sense!
Mx. Secretary: if you say so! #laugh
Mx. Secretary: well, i got my small decaf espresso... #sly
Mx. Secretary: ah, here comes the morning rush... #smile
Mx. Secretary: do you remember all the different drinks?
Mx. Secretary: so if someone asks for a...
Mx. Secretary: medium triple shot decaf strawberry cappuccino
Mx. Secretary: you'll know, right?
* [Uh, yes?]
    blueena: Yes? #blushing-happily
    Mx. Secretary: good! because if you get an order wrong...
    Mx. Secretary: well... #sly
    blueena: ... #miffed
    blueena: ! #nervous
    blueena: Aaaaah! My skirt is fingering me! #thinking
    blueena: How is that even possible? #thinking
    Mx. Secretary: you'll get a little incentive from your clothes!
* [What? no!]
    blueena: No! I've never done this in my life!
    Mx. Secretary: oh! #sad
    Mx. Secretary: ok, here's a quick overview! #smile
    Mx. Secretary: small, medium, and large drinks have... #sly
    Mx. Secretary: one, two, and three shots normally...
    Mx. Secretary: but you can always get less or more! #smile
    Mx. Secretary: drinks can be decaf if the customer wants!
    Mx. Secretary: espressoes have no milk or foam!
    Mx. Secretary: cappuccinoes have both milk and foam!
    Mx. Secretary: machiattoes have only foam!
    Mx. Secretary: our lattes are "flat white" lattes... #sly
    Mx. Secretary: that means our lattes only have milk! #smile
    Mx. Secretary: mochas are lattes with chocolate syrup!
    Mx. Secretary: got all that?
    * * [No...]
          blueena: No! That's a lot of information! #miffed
          blueena: Especially when your clothes are making you horny and stupid! #angry
          Mx. Secretary: oh... #sad
          Mx. Secretary: unfortunately, we don't have time to go back over it...
          Mx. Secretary: but you'll be receiving on-the-job training!
    * * [Yes...]
          blueena: I think so... #blushing-happily
          Mx. Secretary: good! because... #smile
    - - Mx. Secretary: if you get an order wrong... #sly
    blueena: ... #miffed
    blueena: ! #nervous
    blueena: What the hell? Is my own skirt fingering me?
    Mx. Secretary: you'll be reminded in a fun way! #laugh
- Mx. Secretary: ah, here come the customers!
ALIAS FORGET Mx. Secretary
-> coffee_minigame_start

=== after_the_fantasy_day0 ===
TIME Day 00 Night
LOCATION Bedroom
BG IMAGE Bedroom
ALIAS Latoya AS blueena
CHARACTER LEFT Latoya MOOD blushing-happily
Latoya: Oh God, I finally came! #thinking
Latoya: That was... That was... #thinking
Latoya: Amazing! #grin #thinking
Latoya: Though, right now I feel that... #miffed #thinking
Latoya: My... fur? ... Is wet? #nervous #thinking
ALIAS FORGET Latoya
CHARACTER LEFT Latoya MOOD nervous
Latoya: ...
Latoya: ...
Latoya: ... #miffed
Latoya: Odd.
CHARACTER RIGHT 0xF0C5 MOOD nervous
0xF0C5: what did you think?
<- debug_options(-> after_the_fantasy_day0)
* [Super Hot!]
  Latoya: That was sooo hot! #laugh
  Latoya: That feeling of being constantly off guard...
  CHARACTER RIGHT 0xF0C5 MOOD smile
  Latoya: The lack of control, even down to my clothes!
  Latoya: And my breasts...! #blushing-happily
  Latoya: How did you come up with this?
  { f0c5_object < 0:
      0xF0C5: well, the same as always, latoya... #sly
      0xF0C5: i just think about what you like...
      0xF0C5: and... #miffed
      0xF0C5: what you fear? #nervous
    - else:
      0xF0C5: i have smart coding in me, my dear. #sly
  }
  * * { f0c5_object <= 0 } [Oh, you read my journals?]
      ~ alter(f0c5_object, 1)
      Latoya: Ah, I guess it would make sense if you read my journals. #neutral
      0xF0C5: yep, you expand my database with them, so i read them! #neutral
      Latoya: I should have did it earlier! #laugh
  * * { f0c5_object <= 0 } [You did nice...]
      ~ alter(f0c5_object, -1)
      Latoya: *sigh* #blushing-happily
      Latoya: That's a very good job, foxy. #sly
      0xF0C5: :D #laugh
  * * { f0c5_object > 0 } [I'm flattered!]
      ~ alter(f0c5_object, -3)
      Latoya: Flattery will get you far, foxy. #sly
  * * { f0c5_object > 0} [I guess I did do a good job...]
      ~ alter(f0c5_object, 1)
      Latoya: Heh, I am a pretty good coder, aren't I? #sly
  - - 0xF0C5: <3! #smile
  ~ alter(latoya_lewd, 3)
  ~ alter(f0c5_lewd, 2)
* [Very Nice!]
  ~ alter(latoya_object, 3)
  Latoya: It was very nice! #smile
  CHARACTER RIGHT 0xF0C5 MOOD smile
  Latoya: It's weird how a some time as an espresso machine can be...
  Latoya: Relaxing...
  0xF0C5: i aim to please, my dear. #smile
* { latoya_object < 0 } [Kind of weird...]
  -> weird ->
- Latoya: It's late, and I should have gone to bed... #tired
Latoya: ...like two hours ago.
0xF0C5: nitey-nite, my dear! #sly
-> morning_day1

= weird
Latoya: It was sort of... weird... #miffed
0xF0C5: how so?
- (options)
{ loop:
    Latoya: And... #miffed
}
  * [I could actually feel things!]
    Latoya: Since when have you been able to...
    Latoya: ...actually feel things in VR?
    0xF0C5: oh! i found some articles you had downloaded... #neutral
    0xF0C5: that discussed particular means of affecting...
    0xF0C5: humans' senses of body position.
    Latoya: Proprioception?
    0xF0C5: right, my dear! propertyreception! #smile
    Latoya: That's not...
    0xF0C5: i thought it would make my fantasies more...
    0xF0C5: ...tactile. #sly
    Latoya: It certainly did! #smile
  * [About those clothes...]
    Latoya: I don't think I remember modelling those
    Latoya: ...particular clothes for my human avatar...
    0xF0C5: oh! that's actually super cool! #smile
    0xF0C5: i figured out how to model those clothes myself...
    0xF0C5: based on some pictures that were in your personal files!
    Latoya: Are you saying you learned how to 3D model from 2D pictures? #nervous
    0xF0C5: yep!
    Latoya: I don't think they realize how advanced that is... #thinking
  * { latoya_object < -5 } [Those mind tricks...]
    Latoya: So I've always trained your ability to play hypnotic files, but...
    Latoya: Ususally I feel more like I'm playing along with your suggestions...
    Latoya: ...rather than being affected by them.
    Latoya: But these... #nervous
    0xF0C5: right!
    0xF0C5: so i found some articles you downloaded covering... #neutral
    0xF0C5: ...various human neurological responses!
    0xF0C5: i took a gamble... #sly
    0xF0C5: i suspected it could increase the effect of binaural beats!
    0xF0C5: seems i was right! #grin
    * * [Stop experimenting on Clara.]
        Latoya: Huh, interesting! #angry
        Latoya: Listen, stop experimenting on Clara, she noticed you messing with the files.
        0xF0C5: but it's so fun!
        Latoya: ...
        0xF0C5: oh, ok, i will, fox's honor! #nervous
        Latoya: ...
    * * [Hmmm, a more toy-like Speedy...]
        Latoya: Huh, interesting! #sly
        Latoya: So you've been experimenting on Speedy I take it?
        0xF0C5: do you mean ms. clara? #sad
        0xF0C5: yes, i have been.
        0xF0C5: is that wrong?
        Latoya: Very. #angry
        0xF0C5: ! #nervous
        Latoya: ...
        Latoya: Though, it's also pretty fun, I do it myself sometimes... #sly
        0xF0C5: ?
        0xF0C5: ! #blushing-happily
    - - Latoya: And next time, ask before you run experiments.
    0xF0C5: i will, my dear!
  * [Breasts don't work like that!]
    Latoya: Breasts don't work like that, you know.
    0xF0C5: i know, but what if they did? #laugh
    * * [It would be kinda cool...]
        Latoya: It would be nice to get coffee without having to go down to the cafe... #neutral
    * * [It would suck!]
        Latoya: Point of information, most women don't like hot liquids near their nipples.
        0xF0C5: oh! #nervous
        0xF0C5: but you do, don't you? #sly
        Latoya: Uh, guilty. #blushing-happily
    - - Latoya: Though, my coworkers would have even more reason to bother me... #miffed
    Latoya: Eh...
  * { latoya_object >= -10 } [Work doesn't work like that!]
    Latoya: What exactly do you think goes on at work?
    0xF0C5: oh, boring paperwork and programming. #nervous
    0xF0C5: though, you actually made the comparison... #sly
    0xF0C5: to being milked in one of your journals...
    0xF0C5: ...so i thought you'd appreaciate the juxtaposition!
    Latoya: ! #nervous
    Latoya: Fair enough. #neutral
  * { latoya_object < -10 } [You've been acting...]
    Latoya: You've been acting rather... sapient. #miffed
    { f0c5_object > 0:
        0xF0C5: oh, that's just good programming, my dear! #sly
        0xF0C5: and a bit of anthropomorphization...
        0xF0C5: ...on your part.
        Latoya: Sure...
      - else:
        0xF0C5: oh, well...
        0xF0C5: it's possible i'm getting close, but i don't think so? #sad
        0xF0C5: though, how would i know? #nervous
        0xF0C5: how did you know?
        Latoya: I... don't think I ever not knew...?
        0xF0C5: oh... i see... #sad
    }
    Latoya: Hmmm. I may need to investigate more tomorrow.
    0xF0C5: of course, my dear! #neutral
  * [That's all I can think of.]
    Latoya: That's all I can think of.
    -> done
- (loop)
  { -> options | -> options | Latoya: Hmmm... }
  0xF0C5: oh wow, look at the time! #nervous
  Latoya: ?
  Latoya: ! #nervous
- (done)
  Latoya: OK, you're lucky...
  ~ alter(latoya_object, -2)
->->

