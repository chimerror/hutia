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
  Clara: Well, like, duh, giggles. #laugh
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
-> END

=== teaser
Latoya: Buy my game! Buy my game! TODO
-> END
