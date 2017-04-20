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
  Latoya: Yep, playing it safe again. #bored
* [There's not really a dress code, you know...]
  ~ alter(latoya_object, -1)
  ~ alter(latoya_lewd, 1)
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
-> END

=== teaser
Latoya: Buy my game! Buy my game! TODO
-> END
