=== morning_day1
{ demo_mode:
    -> teaser
}
CHARACTER OFF
BG COLOR black
TIME Day 01 Morning
LOCATION Bedroom
IMAGE LatoyaAlarm
CHARACTER LEFT latoya MOOD sleepy
Latoya: Ugh... Morning again...
CHARACTER LEFT OFF
TITLE Day 01
MUSIC LatoyasTheme
CHARACTER LEFT latoya MOOD sleepy
Latoya: OK, into the shower as quick as possible...
{ played_with_f0c5_day0 && latoya_object > 0:
    Latoya: I never even tried to clean myself off after last night...
    Latoya: "Ugh, grody," Clara would say...
    Latoya: ...if she was here instead of sleeping out in the living room again. #miffed
}
BG IMAGE bathroom
Latoya: OK, about ready to get in that warm, warm water... #blushing-happily
Latoya: ! #miffed
Latoya: My skin feels weird right above my butt...
Latoya: Huh, let me step out and check this in the mirror...
Latoya: ...
Latoya: ...
Latoya: Is that a bright neon blue speck of paint?
Latoya: Hmmm... I must have picked it up from Clara... #bored
-> wash_it_off

= wash_it_off
Latoya: How should I wash it off?
<- debug_options(-> wash_it_off)
* (water) [With Water]
  ~ alter(latoya_object, -1)
  { acetone:
      Latoya: I guess it's water based?
  }
  Latoya: OK, just take a little water, and...
  Latoya: Huh... still there. #miffed
  -> wash_it_off
* (acetone) [With Acetone]
  ~ alter(latoya_object, -1)
  { water:
      Latoya: Guess that wasn't enough...
  }
  Latoya: Right, probably need a little acetone to remove this... #bored
  Latoya: Luckily Clara keeps a can right under the sink...
  Latoya: ...because paint on our bodies isn't that uncommon.
  Latoya: Just dab a little on a rag...
  Latoya: ...
  Latoya: Huh. Still there. #miffed
  -> wash_it_off
* (scrape) [Scrape it off]
  Latoya: Huh, let me just get a finger nail under there...
  Latoya: ...
  Latoya: ... #nervous
  Latoya: !
  Latoya: That... really hurts!
  Latoya: It feels... fuzzy, and like it's... in... my skin?
* { latoya_object > 0 } [Eh, don't worry about it...]
  ~ alter(latoya_object, 1)
  Latoya: It's just a speck, let's not worry about it. #bored
- Latoya: Ugh, I don't have time to deal with this! #nervous
-> clothes_for_day1

= clothes_for_day1
BG IMAGE bedroom
Latoya: Well, at least my shirt should cover it up... #miffed
Latoya: What to wear?
* [Let's go with a conservative combo...]
  ~ alter(latoya_object, 1)
  ~ wore_punk_clothes_day1 = false
  Latoya: Yep, playing it safe again. #bored
* [There's not really a dress code, you know...]
  ~ alter(latoya_object, -1)
  ~ alter(latoya_lewd, 1)
  ~ wore_punk_clothes_day1 = true
  Latoya: Yeah, what's the point of having these cool clothes... #miffed
  Latoya: ...if I never wear them?
  Latoya: Watch out, World! Latoya's going Punk today! #laugh
- Latoya: See, you can't even see that speck!
-> living_room_morning_day1

=== living_room_morning_day1
ALIAS Clara AS clarahuman
CHARACTER LEFT latoya MOOD bored
BG IMAGE LivingRoom
Latoya: Ok...
Latoya: Ah! Clara is sleeping out here again... #nervous
Latoya: Oh, that's right, we're supposed to be having lunch later today... #smile
Latoya: I better make sure she's still coming.
Latoya: Good Morn--
Latoya: ! #nervous
Latoya: Wow, she's covered in neon orange specks!
{ latoya_object < -14:
    Latoya: Weird... if my speck is blue... #miffed
    Latoya: Why are hers orange?
    Latoya: Eh, she probably used more orange paint later... #bored
}
Clara: Huh, Latoya?
Latoya: Good morning, Speedy... #nervous
MUSIC ClarasTheme
CHARACTER RIGHT clara MOOD sleepy
Clara: Good morning, Giggles...
Clara: Like, why is the couch so uncomfortable?
* [It's not a bed, Speedy! (sarcastic)]
  ~ alter(clara_object, 3)
  Latoya: It's not a bed, Speedy! #angry
  Latoya: We spent the money on a nice bed.
  Latoya: Sometimes your nice girlfriend sleeps in it. #sly
  Clara: Yeah... Like, sorry. #nervous
* [It's not a bed, Speedy! (lovingly)]
  ~ alter(clara_object, -2)
  Latoya: It's not a bed, Speedy! #sly
  Clara: Well, like, duh, Giggles. #laugh
- Clara: But it <i>does</i> feel more uncomfortable than usual... #miffed
Latoya: Odd. Could be time for a new one. #neutral
Latoya: Anyway, remember that we have lunch together at 1.
Clara: Oh, wow! Cool! I will totally clean up and be pretty! #smile
* [Great! (lewd)]
  ~ alter(clara_lewd, 3)
  ~ alter(latoya_lewd, 3)
  Latoya: Great! You'll be a tasty lunch! #sly
  Clara: Hey! #blushing-happily
* [Great! (lovingly)]
  ~ alter(clara_lewd, -3)
  ~ alter(latoya_lewd, -3)
  Latoya: Great! Looking forward to it, Speedy. #smile
  Clara: ! #blushing-happily
- Clara: Anyway, shower time...
Clara: Just after I... sleep a little... longer... #sleepy
Clara: Zzzzzzz...
Latoya: She conked back out! #nervous
* [OK, see you then... (nervous)]
  ~ alter(clara_object, -2)
  Latoya: OK, see you then. #nervous
* [OK, see you then... (lovingly)]
  ~ alter(clara_object, 2)
  Latoya: OK, see you then. #smile
- Clara: Zzzz... Have fun, Giggles...
-> bus_morning_day1

=== bus_morning_day1
CHARACTER OFF
BG IMAGE Bus
CHARACTER LEFT latoya MOOD bored
Latoya: It's been less than a month, and I'm already tired of the bus... #thinking
<- debug_options(-> bus_morning_day1)
* [I should just walk...]
    Latoya: Maybe I could start walking! #thinking
* [I should wake up earlier so it's less packed...]
    Latoya: Maybe I could wake up earlier... #thinking
- Latoya: Yeah, right... #laugh #thinking
{ latoya_object > 0:
    Latoya: Heh!
    Latoya: Oh, huh, that came out a bit more raucous than I expected... #nervous #thinking
}
Latoya: OK... Back to reading... only 3 more chapters... #bored #thinking
Latoya: ...
Latoya: ...
Latoya: ! #grin
Latoya: Hee hee hee...
Latoya: HA HA HA HA HA! #laugh
Latoya: HA HA --
Latoya: ! #nervous
{ latoya_object > 0:
    Latoya: Hey, it's really funny, y'all!
    Latoya: Bah, these uptight yuppies wouldn't know funny if it bit them! #miffed #thinking
  - else:
    Latoya: Sorry...
    Latoya: It was a pretty funny joke...
}
{ latoya_object < 0:
    Latoya: Actually, why am I laughing at a Red Dwarf reference? #miffed
    Latoya: And not from one of the good seasons!
    Latoya: Eeeeh...
    Latoya: Let's just try to keep it together...
}
-> office_morning_day1

=== office_morning_day1
BG IMAGE Office
CHARACTER LEFT latoya MOOD blushing-happily
Latoya: Kind of glad to get out of that seat and into the office!
Latoya: You know, that speck itches...
<- debug_options(-> office_morning_day1)
* [Check it out...]
  ~ alter(latoya_object, -3)
  Latoya: Hmmm... #miffed
  Latoya: Is it getting bigger? #nervous
  Latoya: It feels wider than it did this morning, and it's poking out my skin a bit...
  { latoya_object > 0:
      Latoya: Eh, it's probably fine... I just scraped the skin or something... #blushing-happily
    - else:
      Latoya: I should probably ask the doctor about this tomorrow... #miffed
  }
* [Nah, standup is soon!]
  ~ alter(latoya_object, 3)
  Latoya: Eh, it's probably fine...
  Latoya: My shirt is still covering it... I think...
- Ramsey: Good morning, Latoya!
CHARACTER RIGHT ramsey
MUSIC RamseysTheme
Latoya: Morning! #smile
{ wore_punk_clothes_day1:
    ~ alter(ramsey_lewd, 3)
    Ramsey: Bitchin' threads! #smile
    Latoya: Thanks! Gotta be taking advantage of that lack of dress code... #sly
  - else:
    ~ alter(ramsey_lewd, -3)
}
Ramsey: OK, everyone's here. Latoya, why don't you start...
{ latoya_object > 0:
    Latoya: Sure... I'll stand up and man up! #sly
    Latoya: ...
    Latoya: ...
    CHARACTER RIGHT ramsey MOOD miffed
    Latoya: hee hee... #grin
    Latoya: Sorry, just trying to lighten the mood...
    Ramsey: Right...
}
Latoya: Yesterday was pretty boring. I built the code just fine. #bored
Latoya: I then began studying up on this new framework...
CHARACTER RIGHT jake MOOD bored
Jake: Oh, huh, I didn't realize it was new...
Latoya: Uh...
{ latoya_object > 0:
    Latoya: Probably because you're a noob! #grin
    Latoya: Ha! #laugh
    CHARACTER RIGHT jake MOOD smile
    Jake: You're technically the new... uh... gal.
    Latoya: Right...
  - else:
    Latoya: Probably because you're new... #grin #thinking
    Latoya: Hee hee hee...
}
- Latoya: I think it'll take some more study. #bored
{ latoya_object > 0:
    Latoya: But no problem, this author is hilarious! #laugh
}
CHARACTER RIGHT Ramsey MOOD miffed
Ramsey: Right. Any estimate updates?
Latoya: Oh, move that one to done, and knock a day off that one. #bored
Ramsey: Right! #neutral
Ramsey: OK, Jake, your turn...
{ played_with_f0c5_day0:
    Latoya: Man, being an espresso machine was way more fun than this. #thinking
}
{ latoya_object > 0:
    Latoya: Ugh, boring old work... But I guess I have to keep going. #thinking
    Latoya: After all, I need the money... #thinking
  - else :
    Latoya: I'm acting really odd... #miffed #thinking
    Latoya: Like I'm high or something... #thinking
    Latoya: But I've not had anything! #thinking
}
{ latoya_object < -7:
    Latoya: And... I think there's something weird with my music... #thinking
    Latoya: 0xF0C5 must have gotten into that too... #thinking
}
Ramsey: And as for me, there will be so many meetings... #bored
{ ramsey_object > 0:
    Ramsey: Heavy is the head that wears the crown, I guess... #neutral
  - else:
    Ramsey: *sigh* #bored
}
Ramsey: OK, guys, let's get it done!
-> latoya_notices_ramsey_day1

=== latoya_notices_ramsey_day1
BG IMAGE Office
CHARACTER LEFT latoya MOOD blushing-happily
CHARACTER RIGHT ramsey MOOD bored
Latoya: Wait a second... #miffed #thinking
Latoya: Does Ramsey have neon green on his hand? #thinking
<- debug_options(-> latoya_notices_ramsey_day1)
* [Ask him.]
  ~ alter(latoya_object, -3)
  ~ alter(ramsey_object, -1)
  Latoya: Hey, Rams. Is that a speck of paint on your hand?
  Ramsey: Oh? #nervous
  Ramsey: Huh... I guess so...
  Ramsey: Though, it feels more like...
  Ramsey: Fuzz... #miffed
  Latoya: Maybe it's mold?
  Ramsey: Ew! #nervous
  Ramsey: Excuse me while I go wash...
* [Probably nothing...]
  ~ alter(latoya_object, 3)
  ~ alter(ramsey_object, 1)
  Latoya: It's probably just a stamp from a club or show or something...
  Latoya: Though, when has Ramsey ever gone out on a week night?
- Ramsey: Oh, and thanks for the music, Latoya! #smile
Latoya: Oh, huh? #nervous
Ramsey: Last time you were here, you recommended a band...
Ramsey: Vixxxy Vixen and the Foxy Ladies?
Latoya: Oh yeah, they rock! #grin
Ramsey: Anyway, you sent that email last night with their album and...
Latoya: Huh? I don't think I... #miffed
Ramsey: Shit! Gotta get going to meeting one... Catch you later, Giggles!
CHARACTER RIGHT OFF
Latoya: Hmmm... Strange things are afoot... #miffed #thinking
{ latoya_object > 0:
    Latoya: ...at the Circle K... #laugh #thinking
    Latoya: Heh!
}
Latoya: Aw well, can't worry about that... #thinking
Latoya: Let's get some work done so I'll be free when Clara shows up for lunch! #smile #thinking
-> lunch_day1

=== lunch_day1
CHARACTER OFF
BG IMAGE Cafe
CHARACTER LEFT latoya MOOD miffed
Latoya: OK, finally got a table... I wish this place took reservations... #thinking
Latoya: Though the food is great! #laugh #thinking
Latoya: I could have sworn these seats were more comfortable... #miffed #thinking
Latoya: My ass itches all over. #thinking
{ latoya_object < 0:
    Latoya: Then again, my chair at work also felt a little like this... #bored #thinking
    Latoya: I should check that spot... #thinking
}
{ latoya_object < -7:
    Latoya: And everyone has been acting just a little bit... #miffed #thinking
    Latoya: Weird... #thinking
    Latoya: They keep glancing when I walk by, but then just turn back around... #thinking
    { wore_punk_clothes_day1:
        Latoya: Though I guess it really could be these "bitchin' threads" #grin #thinking
    }
}
Latoya: Where is Clara, though? She should be here by now... #miffed #thinking
* [She probably fell back asleep...]
    ~ alter(clara_object, 2)
    Latoya: I bet she fell back asleep. #thinking
* [I'm sure she's on her way...]
    ~ alter(clara_object, -2)
    Latoya: I'm sure she's on her way... She may be late... #thinking
    Latoya: ...disorganized... #bored #thinking
    Latoya: And sometimes like an airhead, but she usually makes these lunches! #thinking
- Latoya: Oh, here she is! #smile #thinking
-> clara_shows_up

= clara_shows_up
ALIAS Clara AS claragazelle
CHARACTER RIGHT clara MOOD nervous
Latoya: Uh... She's dressed kind of strangely... #nervous #thinking
<- debug_options(-> clara_shows_up)
* [Why are you dressed like that?]
    ~ alter(latoya_object, -2)
    ~ alter(clara_object, -2)
    Latoya: Clara, it's 80 degrees outside, why are you wearing a thick hoodie?!
    Clara: Well... It's, like totes weird... #sad
    * * [What do you mean weird?]
        ~ alter(clara_object, -2)
        Latoya: What do you mean?
        Clara: I mean...
    * * [Yeah, of course it is to be wearing thick hoodies in June!]
        ~ alter(clara_object, 2)
        Latoya: Well, yeah, it's June and it's beautiful out! #miffed
        Latoya: Why would you have a hoodie on?
        Clara: That's not what I meant, Latoya! #miffed
    * * { latoya_object < -3 } [Wait, your head looks...]
        ~ alter(clara_object, -4)
        Latoya: Wait... Why is your head all... Bumpy?
        Clara: Ah... You, like, noticed! #blushing-happily
* [Just let it go...]
    ~ alter(latoya_object, 3)
    ~ alter(clara_object, 2)
    Latoya: Hi, Speedy...
    Clara: Latoya, like, something totes weird is happening to me! #sad
* { latoya_object > 7 } [Are you trying to hide, prey?]
    ~ alter(latoya_lewd, 3)
    ~ alter(latoya_object, 5)
    ~ alter(clara_lewd, 3)
    ~ alter(clara_object, 4)
    Latoya: Oh, she smells delicious, right now... #sly #thinking
    Latoya: You're hiding, aren't you, prey?
    { clara_object < 0:
        Clara: Prey!?
        Clara: Like, Latoya, you're totes acting weird, and that's not the only thing... #miffed
      - else:
        Clara: Eeep!
        Latoya: Why don't you show me what's under the hood... #grin
    }
- Clara: Here, let me show you...
-> clara_reveals_herself

= clara_reveals_herself
CHARACTER OFF
BG IMAGE Cafe
CHARACTER LEFT latoya MOOD nervous
CHARACTER RIGHT clara MOOD nervous
Latoya: ...
Clara: ...
Latoya: Clara... You look...
<- debug_options(-> clara_reveals_herself)
* [Like a gazelle!]
    Latoya: ...like a gazelle! Horns and everything!
* [Like a toy!]
    Latoya: ...like a pool toy! Your horns are all soft and everything!
    Clara: I'm not even supposed to have horns! #miffed
* { latoya_object > 7 } [Delicious...]
    ~ alter(latoya_lewd, 3)
    ~ alter(clara_lewd, 3)
    Latoya: ...delicious! #sly
    { clara_object < 0:
        Clara: Latoya, like, what the hell is wrong with you? #angry
        Latoya: Sorry, Clara, I've been acting odd all day... #nervous
        Clara: hmph...
      - else:
        Clara: Eeep!
    }
- Clara: ... #nervous
Clara: I actually painted something like this yesterday! #neutral
Clara: A gazelle woman pool toy with, like, seven breasts...
{ clara_lewd > 0:
    Clara: Though I only have just the two right now...
}
Clara: But you know what's really weird? #miffed
Latoya: What?
Clara: Look around!
{ latoya_object > 0 || latoya_lewd > 0:
    Latoya: That would require me to stop looking at you... #sly
    { clara_object < 0:
        Clara: That's not as cute as you think it is right now... #angry
      - else:
        Clara: ! #blushing-happily
    }
    Clara: But the point is...
  - else:
    Latoya: It looks... normal...?
}
Clara: Like, nobody seems to care I'm a gazelle! #sad
Latoya: That does seem strange... #miffed
Clara: I was totally running to catch the bus and the hood slipped off.. #nervous
Clara: And I didn't notice...
Clara: And on the bus was Cecelia! #sad
Latoya: From the gallery, right? #nervous
Clara: Like, yeah! #nervous
Latoya: What did she do?
Clara: She cocked her head like this, and then...
Clara: ...just had a friendly conversation with me! #sad
Latoya: !
Clara: I know, right?
Clara: This must be like some weird dream, but... #miffed
Latoya: No, I don't think it is...
Clara: But like people just don't turn into gazelles! #angry
-> further_discussion

= further_discussion
ALIAS Clara AS claragazelle
CHARACTER OFF
BG IMAGE Cafe
CHARACTER LEFT latoya MOOD sad
CHARACTER RIGHT clara MOOD nervous
Latoya: I know... I know...
- (options)
{ loop:
    Latoya: Well... #neutral
}
<- debug_options(-> further_discussion)
* [I've got my own weird stuff!]
    ~ alter(latoya_object, -3)
    ~ alter(clara_object, -3)
    Latoya: I'm dealing with my own weird stuff, Speedy! #miffed
    Clara: Oh, really?
    Latoya: Yeah, there was this blue spot on my ass this morning...
    Latoya: ...and now my ass itches...
    Latoya: ...and my underwear is all...
    Latoya: ...funny...
    Clara: Huh... Well, your ears are like, a smidge longer, too...
    Latoya: ! #nervous
    Clara: Your nose looks funny, too..
    Latoya: !!! #nervous
    Clara: Still a cutie, though! #blushing-happily
    Latoya: ! #blushing-happily
* [You make a cute gazelle, though...]
    ~ alter(latoya_object, 3)
    ~ alter(latoya_lewd, 3)
    ~ alter(clara_object, 3)
    ~ alter(clara_lewd, 3)
    Latoya: You make a cute gazelle, though! #smile
    { clara_object < 0:
        Clara: Well, like yeah... but... #blushing-happily
        Clara: I'd rather be my normal human self! #nervous
      - else:
        Clara: Eeep!
        Latoya: ! #sly
    }
* [I want to go home and investigate, but...]
    ~ alter(latoya_object, -5)
    ~ alter(clara_object, -5)
    Latoya: I should probably go home and investigate... #miffed
    Clara: But... #nervous
    Latoya: But I don't think I can leave work early...
    Clara: But your girlfriend is turning into a gazelle! #sad
    Latoya: Capitalism cares not, as does Glaistig. #sad
* { latoya_object < 0 } [Ramsey has weirdness too!]
    ~ alter(latoya_object, -3)
    ~ alter(clara_object, -3)
    ~ alter(ramsey_object, -3)
    Latoya: Ramsey had a weird spot on his hand... #miffed
    Clara: ! #nervous
    Clara: So is it like, spreading?
    Latoya: I have no idea....
* { latoya_object > 5 } [It's kind of funny, isn't it?]
    ~ alter(latoya_object, 5)
    ~ alter(clara_object, 5)
    Latoya: It's kind of funny, isn't it? #grin
    { clara_object < 0:
        Clara: No. #angry
        Clara: It's grody.
        Latoya: Oh... #sad
      - else:
        Clara: Eeep!
        Clara: Like, stop scaring me!
        Latoya: ! #sly
        Latoya: Hee hee...
    }
* { played_with_f0c5_day0 && latoya_object < -5 } [I bet 0xF0C5 had something to do with this...]
    ~ alter(clara_object, -5)
    Latoya: I bet 0xF0C5 had something to do with this... #miffed
    Clara: What? #nervous
    Clara: How could your chat bot have turned me into a gazelle?
    Latoya: I don't know...
    Latoya: But when I "played" with them yesterday, there were...
    Latoya: ...some things that didn't add up...
    Clara: Hmmm...
* [Let's not talk about this right now...]
    Latoya: I don't know if we can do anything about it now... #sad
    Clara: Yeah... #sad
    Latoya: We can talk more when I get home... #miffed
    -> done
- (loop)
    { -> options | -> options | Clara: Let's talk more later... }
    Latoya: OK. #sad
- (done)
  Latoya: Do you still want to get lunch?
  Clara: I don't know... #sad
  Clara: *sigh*
  Clara: Let me go to the bathroom real quick, I'll see how I feel...
CHARACTER RIGHT OFF
{ latoya_object > 0:
     Latoya: Huh, seeing her shake her ass... #miffed #thinking
     Latoya: I have a strong urge to follow her... #blushing-happily #thinking
   - else:
     Latoya: Should I follow her? #bored #thinking
     Latoya: Could be a good chance to check myself out... #thinking
}
* [Follow her...]
    Latoya: ...
    Latoya: Better get low so I have a chance to catch up #miffed #thinking
    Latoya: ...
    Latoya: Let's see, prey is in a contained area, minimizing... #thinking
    Latoya: ...
    Latoya: Wait... What am I thinking about? #nervous #thinking
    -> cafe_bathroom_day1 ->
* [Nah.]
    { latoya_object > 0:
        Latoya: I'll just stay here. #miffed
        Latoya: Though, I'm very hungry! #blushing-happily
        Latoya: Even if she doesn't eat, I'll have some food! #grin
      - else:
        Latoya: I'll give her some privacy. #bored
        Latoya: Women who've just turned into gazelles...
        Latoya: ...don't need some hyena slobbering after them.
    }
- -> after_lunch_day1

= cafe_bathroom_day1
CHARACTER OFF
BG IMAGE CafeBathroom
\*slam*
CHARACTER LEFT latoya MOOD neutral
Latoya: Ah, looks like Clara just went into that stall... #thinking
<- debug_options(-> cafe_bathroom_day1)
* { latoya_object > 5 } [Strike now!]
    Latoya: *bat bat*
    { clara_object > 0:
        Clara: Occupied!
      - else:
        Clara: Eeep!
    }
    Latoya: Hmmm... will have to wait for her to come out... #miffed #thinking
* { latoya_object <= 5 } [Check on her.]
    Latoya: *knock knock*
    Latoya: Clara? #nervous
    Clara: Like, give me a minute, jeez!
    Latoya: !
    Latoya: Sorry.
* [Check yourself out first.]
    Latoya: I gotta find out what's the deal with this itching... #thinking
- Latoya: Let me go into this stall... #thinking
Latoya: Jesus! My entire waist is... fuzzy... no... #nervous #thinking
Latoya: The fuzz is somehow... gooey? #thinking
Latoya: And I can definitely feel a tail forming in back... #miffed #thinking
Latoya: And another on my... front? #thinking
Latoya: ... #thinking
Latoya: Oh... My clit is huge! It's like a penis... #angry #thinking
Latoya: Though, luckily, my pussy lips are not shut like a real hyena... #miffed #thinking
Latoya: So yeah, I seem to be turning into blueena. Somehow. #neutral #thinking
Latoya: How is this even possible? #angry #thinking
{ clara_lewd > 0:
    Clara: Ooooh...
    Latoya: Wait, that sounded... #nervous #thinking
    Clara: God! I can't believe I'm like totally horny...
    -> cafe_bathroom_sex ->
  - else:
    Clara: *sigh*
    \*slam*
    Latoya: Huh, guess she finished up... #neutral #thinking
    Latoya: I guess I should have go have lunch... #thinking
}
->->

= cafe_bathroom_sex
Latoya: You're horny? #nervous
Clara: !
Clara: Latoya?
Latoya: Yeah...
Clara: I've been like this... all day...
Clara: It's half the reason I didn't just stay at home...
Clara: Can you...
{ latoya_lewd <= 0:
    Latoya: Ah... Speedy, I don't think I can right now...
    Clara: *whine*
    Clara: But I know you dig this public stuff!
    Latoya: With me turning into a hyena and you a gazelle...
    Latoya: It just doesn't feel right.
    Latoya: Maybe tonight...
    Clara: OK...
    ->->
}
~ sex_with_clara_day1 = true
Latoya: OK, open my door quietly... #sly #thinking
Clara: Latoya?...
Latoya: Now, let's jimmy this lock...
ALIAS Clara AS claragazelle
CHARACTER RIGHT clara MOOD nervous
Clara: !
{ latoya_object > 0:
    Latoya: blueena always gets her prey! #grin
  - else:
    Latoya: Hi, Speedy... #grin
}
Clara: Eeep!
Clara: How did you?
Latoya: *kiss*
Clara: Oooooh...
{ made_out_with_clara_day0:
    Latoya: Even though we had a little fun yesterday... #thinking
}
Latoya: I've been craving this for a while now... #thinking
Latoya: So what say, you, prey? Green light?
Clara: Please... Green light. #blushing-happily
Latoya: Ah, seems she has a handle... #grin #thinking
Clara: Eeep! #nervous
Latoya: You're much better flipped around, you know.
Clara: How did you, what did you just grab on me? #angry
Clara: Eeep! #nervous
Clara: I have handles!
Latoya: I told you that you make an excellent toy...
Clara: Eeep! #nervous
Latoya: Yes, "Eeep" indeed.
Latoya: *chomp*
Clara: Eeeee... #laugh
Latoya: I can feel her skin turning to latex under my teeth... #thinking
Latoya: ...which are getting longer... #thinking
Latoya: Hmph, air is not as enjoyable to bite as meat... #miffed
Clara: Ha! #grin
Clara: Does that mean you'll have to let me go, pred?
Latoya: Not on your life! #grin
Clara: Eeep! #nervous
Latoya: If I can't have fun with my teeth, I'll just use my hands!
Latoya: You're much easier to hold down when you're so light...
Clara: No, it's unfair, I can normally kick free! #sad
Clara: Eeeee... #nervous
Clara: What's that?
Clara: Are you actually packing in public? You've not done that in years...
Latoya: ...
Latoya: Not quite, prey.
Clara: ...
Clara: It's growing! You have a dick!
Latoya: Not quite, prey...
Clara: I... may need it...
Latoya: Just stick a finger in... #thinking
Latoya: This is all you're getting...
Clara: Eeeee...
Latoya: It may have been a while, but I know my girlfriend... #thinking
Latoya: Now she's quite a bit more stretchy, her walls so puffy... #thinking
Latoya: I can idly nibble on her ear and play with her down there all day... #thinking
Latoya: Oh, some... latex came out? #thinking
Clara: Latoya...?
Latoya: Done, prey?
Clara: Yeah...
Latoya: Good... We'll continue this at home...
\*creak*
Latoya: Shit! #angry
->->

=== after_lunch_day1
CHARACTER OFF
BG IMAGE Office
CHARACTER LEFT latoya MOOD neutral
Latoya: Well, that was kind of awkward...
{ sex_with_clara_day1:
    Latoya: I'm not sure if that relieved something or just made me...
}
-> END

=== teaser
Latoya: Buy my game! Buy my game! TODO
-> END
