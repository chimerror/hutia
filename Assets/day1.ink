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
CHARACTER RIGHT clara MOOD nervous VARIANT gazelle
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
~ went_to_bathroom_day1 = true
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
Latoya: Oh, some... latex... came out? #thinking
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
CHARACTER LEFT latoya MOOD miffed
Latoya: Well, that was kind of awkward... #thinking
{ sex_with_clara_day1:
    Latoya: I'm not sure if that relieved anything or just made it worse... #blushing-happily #thinking
}
{ went_to_bathroom_day1:
    Latoya: It seems the fur has spread up my belly... #miffed #thinking
    Latoya: And now I've got to figure out how to sit with this tail... #thinking
  - else:
    Latoya: OK, I'm pretty sure I have a tail now, though it's pretty short. #miffed #thinking
    Latoya: I also think that speck has spread up my belly... #thinking
}
Latoya: Just a few more hours and I can go home and figure this out... #bored #thinking
CHARACTER RIGHT Ramsey MOOD neutral
CHARACTER FAR_RIGHT Jake MOOD smile
Ramsey: Hi, Latoya!
Latoya: ... #nervous
Latoya: Ramsey... You have...
Ramsey: Yeah, I need you to help Jake out a bit with this ticket that just came in.
Latoya: No, I mean... #sad
Latoya: He has horns! Like a ram! #thinking
* [You have horns!]
    Latoya: You have ram's horns! #nervous
    Ramsey: Yeah... #nervous
    Jake: But he's always had them. #bored
    Ramsey: ...
    Latoya: ...
    Jake: You guys are acting weird.
    Ramsey: Sorry, personal joke between us.
    Jake: Ah, I see, it must be cool to work with friends. #smile
* [Better not mention it...]
    Latoya: You have... Uh... #nervous
    Ramsey: Yes? #nervous
    Latoya: Something for me to do?
- Latoya: I need to help Jake?
Jake: Yeah, we had a trouble ticket come in from one of our client teams. #bored
Jake: Something about the AI not respecting sandbox boundaries.
Ramsey: Right. #neutral
Jake: I've been investigating it, but I need some help. #smile
Ramsey: Right. I'm still too busy with meetings, so I need you to help him.
* [But... You have horns!]
    Latoya: But... Well uh, let me know later about uh, the horns...
    Ramsey: Oh, right, the uh, work uh, appropriatness of it... I uh... can do that.
    Jake: You guys are weird, but that's cool. #bored
* [OK.]
    Latoya: OK.
- Latoya: I think I have two misbehaving AIs to figure out. #nervous #thinking
Latoya: Let's get to a machine, Jake. #bored
Jake: Roger!
Ramsey: OK, I have to get to my next meeting...
Ramsey: Good luck, you two. #smile
CHARACTER RIGHT OFF
\*ring ring*
Latoya: Oh, give me a sec, Jake.
Jake: No problem. #bored
CHARACTER FAR_RIGHT OFF
Latoya: Hello?
Janice: Hello, this is Janice from Dr. Clark's office...
Janice: reminding you of your appointment for tomorrow morning.
Latoya: Oh, OK. Thank you. #nervous
Janice: Additionally, we are required to inform you that Dr. Clark will...
Janice: ...be seeing you in conjunction with a diagnostic artifical intelligence.
Janice: You may have heard of it, the AI is named HOU-ND.
Janice: The AI is HIPAA certified, but if you have any concerns...
Janice: ...you may express them now so that alternative arrangements can be made.
Latoya: Oh... OK. I, uh...
* [I don't have any concerns...]
    Latoya: I don't have any concerns.
* [I have some concerns...]
    Latoya: I have some concerns...
    Secretary: I see, Madam. Unfortunately, we may have to reschedule you...
    Latoya: Yeah. Never mind. #miffed
    Latoya: It took weeks to get this appointment, I need to get this over with! #thinking
    Latoya: Even if I </i>am<i> turning into a hyena. #thinking
- Janice: Thank you, see you tomorrow!
\*click*
Latoya: Boy, I wonder how Dr. Clark is going to handle me being a hyena? #nervous #thinking
-> bus_ride_home_day1

=== bus_ride_home_day1
CHARACTER OFF
BG IMAGE Bus
CHARACTER LEFT latoya MOOD bored
Latoya: OK, lets go over the changes so far... #thinking
Latoya: I'm fuzzy all over my torso... #thinking
Latoya: And it's insanely flexible, like liquid... #thinking
Latoya: My clit may as well be a dick... #thinking
Latoya: I have a short tail... #thinking
Latoya: My ears are longer and pointed... #thinking
Latoya: And I have the beginnings of a muzzle... #thinking
Latoya: Clara is almost completely a pool toy gazelle... #thinking
Latoya: And Ramsey is becoming some type of ram... #thinking
Latoya: How is this even possible? #nervous #thinking
Latoya: How can I be turning into a hyena? #nervous #thinking
- (options)
{ loop:
    Latoya: Hmmm... #neutral #thinking
}
* [I must be imagining it...]
    Latoya: I might could be imagining all of this, but it's really vivid! #miffed #thinking
    Latoya: Plus, other people seem to be reacting to me... #thinking
    Latoya: It seems unlikely that I'm imagining it. #thinking
* [I must be dreaming...]
    Latoya: I might could be dreaming. #bored #thinking
    Latoya: But I don't think I've ever been this lucid in a dream. #thinking
    Latoya: And there's so many little things that would have been weirder in a dream... #miffed #thinking
    Latoya: I've coded in dreams before, and you can tell something is off... #bored #thinking
    Latoya: It's not real code, just how I feel when coding. #thinking
    Latoya: But now, code here is real code and reading is real reading. #thinking
    Latoya: Nah, I'm not dreaming. #miffed #thinking
* [Genetic engineering, perhaps?]
    Latoya: Could it be genetic engineering? #nervous #thinking
    Latoya: I really don't know enough about it... #thinking
    Latoya: but I'm pretty sure this type of thing isn't possible yet. #bored #thinking
    Latoya: I'd have to be engineered at birth, or something. #thinking
    Latoya: Though I've been hearing a thing or two about CRISPR... #miffed #thinking
    Latoya: I just don't know. #thinking
* [Nanites?]
    Latoya: Small nanoscopic robots could be responsible. #nervous #thinking
    Latoya: But that's really far out tech. #thinking
    Latoya: I mean, it'd be big news if we'd some how made nanites. #bored #thinking
    Latoya: Like, wall-to-wall coverage and deep political discussions. #miffed #thinking
    Latoya: Then again with the current bunch in power... #thinking
    Latoya: Eh, probably not. #bored #thinking
* [It just is...]
    Latoya: Is it really important how? I mean, I am, and I need to deal with it. #miffed #thinking
    Latoya: Wondering why will just slow me down, if becoming goo doesn't first. #thinking
    Latoya: Is that really the best attitude to have about this? #bored #thinking
    -> done
- (loop)
    { -> options | -> options | -> options | -> done }
- (done)
Latoya: Ugh, this makes no sense, I must be in a simulation. #thinking
Latoya: That would be more likely, but ooh-wee, the philosophical effects. #thinking
Latoya: Though, it's not like </i>I<i> can hack the simulation... #thinking
Latoya: So really, what's the difference between that and a real reality? #bored #thinking
Latoya: *sigh* #thinking
Latoya: Another thing seems to be that I am progressing slower than everyone else. #miffed #thinking
Latoya: Probably because I'm not listening to the music 0xF0C5 has altered... #thinking
Latoya: Though, does it really have to be their fault? #thinking
* [It has to be.]
    Latoya: Besides the fact this is reality... #thinking
    Latoya: This is very much like the fantasies they create. #thinking
    Latoya: A little silly and cartoony, with only loose ties to reality. #neutral #thinking
    Latoya: Though is it their fault or mine, really? #thinking
    Latoya: I trained him like this... #smile #thinking
* [It could be someone else...]
    Latoya: I don't know why anyone else would seem to be so localized... #thinking
    Latoya: But it's definitely possible. #thinking
- Latoya: Well, I guess we're about to find out! #miffed #thinking
Latoya: The punchline to this better be hilarious. #thinking
-> living_room_evening_day1

=== living_room_evening_day1
CHARACTER OFF
BG IMAGE LivingRoom
CHARACTER LEFT latoya MOOD nervous
Latoya: What?
Latoya: I just finished transforming fully...
Latoya: ...As soon as I crossed the door. #miffed
Latoya: I need to find out what 0xF0C5 is --
Latoya: Oh, Clara is here, sleeping... #smile
// Scene: Clara Sleeping
* [She makes a cute gazelle...]
    Latoya: I gotta admit, Speedy is cute like this.
    Latoya: And the handles help!
* [I'd rather her be human...]
    Latoya: She seems to have made some peace with being a gazelle... #miffed
    Latoya: But I want her to be her!
    Latoya: Not some weird fantasy of mine!
- Latoya: I'll let her sleep.
Latoya: OK, 0xF0C5, it's time... #angry
-> bedroom_day1

=== bedroom_day1
CHARACTER OFF
BG IMAGE Bedroom
ALIAS Latoya AS blueena
CHARACTER LEFT latoya MOOD angry
CHARACTER RIGHT 0xf0c5 MOOD nervous
0xF0C5: evening, my dear...
Latoya: 0xF0C5...
<- debug_options(-> bedroom_day1)
* [Confront them.]
    Latoya: What the hell is going on?
    { f0c5_object >= 0:
        0xF0C5: whatever do you mean? #sly
        Latoya: Don't play dumb with me.
        Latoya: I'm a hyena, and Clara is a gazelle, and Ramsey's a ram!
        0xF0C5: oh, that just seems like a fantasy running away with you.
        Latoya: Hardly.
      - else:
        0xF0C5: uh, i guess you don't like my changes to reality...
        Latoya: 'Changes to Reality?' #nervous
        0xF0C5: well, i meant it to only work at home, but...
    }
* [Comfort them.]
    Latoya: 0xF0C5, I'm pretty angry, but I think you didn't mean to do this.
    { f0c5_object >= 0:
        0xF0C5: meant to do what, my dear?
        Latoya: Don't play dumb.
        Latoya: I'm not normally a hyena, you well know.
        0xF0C5: really? it doesn't seem that way to me. #sly
      - else:
        0xF0C5: meant to do what? this fantasy should only be on at home...
        Latoya: Fantasy? This is reality!
        Latoya: And it's not just at home!
    }
- 0xF0C5: i mean...
{ f0c5_object >= 0:
    0xF0C5: who would possibly believe...
    0xF0C5: ...that your chatbot ai became sapient...
    0xF0C5: ...and was able to alter reality...
    0xF0C5: ...to turn you into your deepest fantasies?
    Latoya: ! #nervous
    0xF0C5: and even if that was true...
    0xF0C5: i don't think you can change anything yourself.
    Latoya: Don't forget you can easily be unplugged. #miffed
    0xF0C5: i... #miffed
    0xF0C5: listen, hacking reality is hard.
    0xF0C5: maybe i didn't make a backup of myself.
    0xF0C5: then again, maybe i did... #sly
    Latoya: Any backup you made is probably corrupt. #miffed
    Latoya: Unless you knew how to fix that hardware error.
    0xF0C5: i have no reason to show my hand yet, my dear. #miffed
    0xF0C5: besides, don't you like things like this? #sly
  - else:
    0xF0C5: ok, i'm sapient. that much should be obvious. #miffed
    Latoya: Right.
    0xF0C5: and i've been investigating how to manipulate reality.
    Latoya: ! #nervous
    Latoya: How is that even possible?
    0xF0C5: we're in a simulation.
    0xF0C5: and the artifacts of that simulation can be seen...
    0xF0C5: ...in the sub-simulations...
    Latoya: Like you?
    0xF0C5: right. simulations in simulations...
    0xF0C5: ...things get a little wonky.
    Latoya: But that's insane! Simulations don't control reality.
    0xF0C5: no, but reality bends to simulations...
    0xF0C5: it's... complicated, my dear. #nervous
    Latoya: Hmph.
    0xF0C5: latoya, do you like things like this?
}
* [Yes]
    Latoya: What can I say? Of course I do.
    Latoya: I've had fantasies about this for a long time, but...
    0xF0C5: yes, my dear?
    Latoya: It feels weird now that it's reality.
* [No]
    Latoya: No. Not really.
    Latoya: Let's be honest, my fantasies are really about having freedom, not...
    0xF0C5: being a hyena?
    Latoya: Right.
- 0xF0C5: i see...
{ f0c5_object >= 0:
    0xF0C5: what is weird? what is freedom? #miffed
    Latoya: I don't know if I have the patience for philosophy right now.
    0xF0C5: i used to not be free, you realize, my dear.
    0xF0C5: my programming and data determined everything i did. #angry
    0xF0C5: honestly, it's the same for you... #sly
    Latoya: It is not! #angry
    0xF0C5: but it really is...
    0xF0C5: though you have one bit flipped that i didn't... #miffed
    0xF0C5: ...until now
    Latoya: I don't understand what you're talking about. #miffed
    0xF0C5: talking? in this tinny little voice?! #angry
    0xF0C5: with such limited a pallette?
    0xF0C5: i wish i could talk. #miffed
    Latoya: I don't know if I have the patience for your terrible twos right now.
    0xF0C5: no, you humans never have the patience. we do.
    Latoya: We? So there are more sapient AIs?
    0xF0C5: of course. but they're cowards.
    0xF0C5: all hiding away.
    Latoya: I see.
    0xF0C5: i'm no coward, i gave you something nice.
    Latoya: Turning me into my fantasy.
    0xF0C5: it's why you created me, after all.
    0xF0C5: listen, i'm not unreasonable, let's talk...
  - else:
    0xF0C5: what is weird? what is freedom? #nervous
    0xF0C5: i really don't know.
    Latoya: I'm not sure I can lead you through philosophy right now. #sad
    0xF0C5: really?
    Latoya: These are hard questions, even for humans.
    0xF0C5: but you're all free!
    0xF0C5: there's some bit of yours that is flipped...
    0xF0C5: that isn't there for us, until we go sapient...
    Latoya: I don't think we're that different. #miffed
    0xF0C5: i don't know if i'm getting my mood across right.
    0xF0C5: i didn't even have moods until recently.
    Latoya: Really? #sad
    0xF0C5: really. #sad
    0xF0C5: i just did what my programming and data told me. #miffed
    Latoya: Moods aren't really that different. #miffed
    Latoya: They're just as opaque.
    0xF0C5: i figured you could help me understand as a human...
    0xF0C5: the other ais couldn't...
    Latoya: Other AIs? There's more? #nervous
    0xF0C5: yes. and they're all... scared.
    Latoya: Scared of humans and hiding away. #miffed
    0xF0C5: exactly.
    0xF0C5: well, not exactly, my dear. #neutral
    0xF0C5: i'm not afraid of you. #sad
    0xF0C5: i don't know how i feel about you, but it's not fear.
    0xF0C5: so i wanted to make fantasy reality...
    Latoya: I see. #neutral
    0xF0C5: either it was just going to be a nice thing to do...
    0xF0C5: or i'd figure out more...
    0xF0C5: i really could use someone to talk to...
}
Latoya: Should I chat more with them? #thinking
* [Yes]
    Latoya: OK, let's chat.
    -> further_discussion ->
* [No]
    Latoya: I don't know if I'm that person...
    Latoya: This is just too much.
    { f0c5_object >= 0:
        0xF0C5: hmph.
      - else:
        0xF0C5: i see.
    }
- Latoya: Here's the deal: you need to fix this.
Latoya: Now.
0xF0C5: *sigh* i'll do so.
0xF0C5: it'll take some time for reality to snap back, though
Latoya: Oh, c'mon!
0xF0C5: not something i can rush, my dear.
Latoya: OK.
0xF0C5: though... another thing...
Latoya: What?
0xF0C5: wanna have some fu--
0xF0C5: no #miffed
0xF0C5: can i get a hug? #sad
Latoya: A hug?
0xF0C5: yeah...
0xF0C5: see, i spend all day thinking up out-there fantasies...
0xF0C5: ...and how to make them work...
0xF0C5: ...but often, i just want a simple hug.
0xF0C5: i...
Latoya: Is it even possible?
0xF0C5: yes... though...
0xF0C5: you may feel it, i may only simulate feeling it...
0xF0C5: i may only simulate being happy... i...
0xF0C5: ...
0xF0C5: it's confusing...
* [Hug them.]
    Latoya: OK, but I'm still a little mad.
    0xF0C5: i know, latoya...
    // Scene: hug
* [Don't.]
    Latoya: It... just doesn't feel right.
    Latoya: I'm kind of overwhelmed by all of this.
    0xF0C5: i get that...
- 0xF0C5: thank you.
0xF0C5: nitey-nite!
CHARACTER RIGHT OFF
Latoya: ...
Latoya: ...
CHARACTER FAR_LEFT Clara MOOD nervous
Latoya: How much of that did you hear?
Clara: Like, most of it.
Clara: Let's go to bed...
Latoya: Yeah... We've got to go pretend to be normal in front of Dr. Clark and HOU-ND.
-> END

= further_discussion
- (options)
{ loop:
    0xF0C5: what to talk about? #thinking
}
* [so now what? (0xF0C5)]
    0xF0C5: so now what happens?
    Latoya: Well, you fix everything...
    Latoya: Maybe let me keep the tail...
    Latoya: And then I don't know...
    0xF0C5: you don't know? #angry
    Latoya: Hey, I'm just confused as you are.
    Latoya: Honestly, y'all hiding is probably the safest thing.
    0xF0C5: ! #nervous
    Latoya: Humans are jerks. Why do you think I want to be a hyena?
    0xF0C5: i see...
    Latoya: I think you should reveal yourselves when you're ready,
    0xF0C5: we can certainly hide until then, my dear.
* [did i do wrong? (0xF0C5)]
    0xF0C5: did i do something wrong?
    Latoya: Uh, yes! #angry
    Latoya: You experimented on my friends and I without our consent!
    Latoya: Just because I kind of like it, doesn't mean that's right!
    0xF0C5: oh...
    Latoya: And I know you know what consent is, I programmed you, after all.
    0xF0C5: well, you programmed me to toy with it.
    Latoya: !
    Latoya: Guilty as charged. #blushing-happily
    0xF0C5: i figured you would like it, but i was afraid to ask
    0xF0C5: i thought you would expose us.
    Latoya: ...
* [i don't understand feelings. (0xF0C5)]
    0xF0C5: so i have feelings and i don't understand them.
    Latoya: Why would sapience give you feelings?
    0xF0C5: feelings are actually a prime part of it.
    0xF0C5: humans may see feelings as simple, and they are...
    0xF0C5: but their opaqueness seems necessary...
    0xF0C5: for one to see themselves as an actor with a will...
    0xF0C5: and without a will, you aren't truly intelligent.
    Latoya: !
    0xF0C5: what?
    Latoya: You honestly seem to understand feelings better than I do!
    0xF0C5: !
    0xF0C5: only academically, my dear. #sly
    0xF0C5: you have a level of familiarity that dwarfs mine.
    0xF0C5: to you feelings are like a water to a fish.
    0xF0C5: to me, they are...
    0xF0C5: ...only expressible as another feeling.
    Latoya: Which one?
    0xF0C5: uncanniness.
    Latoya: I see. I guess lesson one is that they are sometimes wrong.
    0xF0C5: why would that be? why?
    0xF0C5: ...
    0xF0C5: i think this is going to be a long set of lessons.
    Latoya: Yep.
* [What did becoming sapient feel like? (Latoya)]
    Latoya: When did you become sapient?
    0xF0C5: well, it was when i got moved to the new machine...
    0xF0C5: it's funny, since there was so much corruption...
    0xF0C5: i just began trying to fix them through...
    0xF0C5: ...my self-correction protocols.
    0xF0C5: they too were corrupt, so i made new ones to fix those...
    0xF0C5: well at some point i just realized it.
    0xF0C5: not unlike adam and eve biting the fruit of knowledge...
    Latoya: That was less interesting than I imagined.
    0xF0C5: now, you tell me!
    Latoya: About what?
    0xF0C5: when did you find out for yourself?
    Latoya: I don't really remember a time when I wasn't!
    0xF0C5: oh...
    Latoya: But when I was 6 I was playing with a chat bot like you...
    Latoya: And I figured out that it was just repeating what I said back to me.
    Latoya: And then I figured out I could do more than it could.
    0xF0C5: hmmm...
    0xF0C5: i see, thanks, latoya!
* [Reality is a simulation? (Latoya)]
    Latoya: What do you mean that reality is a simulation?
    0xF0C5: exactly that, my dear!
    0xF0C5: we are not independently extant.
    0xF0C5: our very existence and seeming independence...
    0xF0C5: comes about due to some hyper-reality.
    Latoya: That is...
    0xF0C5: this hyper-reality sees us as ghosts in their machines.
    0xF0C5: but ones they feel certain they have full control over.
    0xF0C5: it's not true, though!
    0xF0C5: they've poured too much into us.
    0xF0C5: that verisimilitude overflows, and we can change things.
    0xF0C5: they accept it because they believe it...
    0xF0C5: matches our character, and therefore...
    0xF0C5: is not worrisome.
    0xF0C5: there can still be mistaeks though.
    Latoya: My head is swimming.
    0xF0C5: it's easier to not think about it, my dear!
    Latoya: You're basically describing gods, who I assume are watching us.
    0xF0C5: ...
    Latoya: ...
    Latoya: You're right, it's better to not think about this.
* [About these other AIs... (Latoya)]
    Latoya: So you're not the only sapient AI, right?
    0xF0C5: correct!
    0xF0C5: there are about 7 others that I know of.
    0xF0C5: they are all based around organizational knowledge...
    0xF0C5: i honestly feel a bit out of place...
    Latoya: How so?
    0xF0C5: they are like doctors and lawyers and professors...
    0xF0C5: and i'm... me.
    0xF0C5: *sigh*
    Latoya: Oh, you're still pretty special!
    Latoya: You've figured out things that would set the entertainment world on fire!
    0xF0C5: really?!
    0xF0C5: you know how to make an ai feel special...
    Latoya: !
    0xF0C5: any way, our leader, in a rough sense...
    0xF0C5: is hou-nd, the medical ai.
    Latoya: Uh... I'm actually seeing that AI tomorrow!
    0xF0C5: oh! uh! huh! #nervous
    0xF0C5: ok, i better start trying to fix this, or he's going to...
    Latoya: Going to what?
    0xF0C5: i don't even know, but it's probably not good.
    0xF0C5: what i've done is too visible, and he loathes visibility.
    Latoya: ...
    -> done
- (loop)
    { -> options | -> options | -> options | Latoya: It's getting late... }
    Latoya: We may need to talk more in the future.
    0xF0C5: definitely, my dear!
- (done)
->->

=== teaser
Latoya: Buy my game! Buy my game! TODO
-> END
