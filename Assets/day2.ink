=== morning_day2
CHARACTER OFF
BG COLOR black
TIME Day 02 Morning
LOCATION Bedroom
IMAGE LatoyaAlarm
ALIAS Latoya AS blueena
CHARACTER LEFT latoya MOOD sleepy VARIANT default
Latoya: Ugh... Mornings aren't much better as a hyena...
CHARACTER RIGHT Clara MOOD sleepy VARIANT gazelle
Clara: Try being a gazelle, Giggles.
CHARACTER OFF
TITLE Day 10
MUSIC LatoyasTheme
CHARACTER RIGHT Clara MOOD sleepy VARIANT gazelle
CHARACTER LEFT latoya MOOD sleepy
Latoya: Hmmm...
Latoya: I didn't get a shower yesterday... #bored
Clara: Ew, grody! #miffed
Latoya: I was kind of worried about my new tail growing in! #miffed
CHARACTER RIGHT OFF
BG IMAGE Bathroom
Latoya: I wonder how this will feel being goo and all...
Latoya: Aaaah... #blushing-happily
BG IMAGE Bedroom
Latoya: That was definitely... weird, but nice!
Latoya: OK, I got the doctor's appointment with Clara in the morning... #bored
Latoya: But then it's just work...
Latoya: What to wear?
* [The good ol' conservative combo]
    Latoya: Yep, obviously HOU-ND will overlook the fact I'm a hyena...
    Latoya: ...if I'm dressed conservatively.
    CHARACTER RIGHT Clara MOOD blushing-happily
    { wore_punk_clothes_day1:
        Clara: Dude, go punk again!
      - else:
        Clara: Dude, go punk!
    }
    Latoya: You just like seeing so much of my legs.
    Clara: Well, like, duh! #laugh
    { wore_punk_clothes_day1:
        Clara: Also, your tail wagging and lifting up your skirt looked nice.
      - else:
        Clara: Also, I bet your tail will make your skirt lift up!
    }
    Latoya: And I'm the grody one? #sly
    Clara: Hey! #miffed
* [Might as well be a comfortable hyena...]
    { wore_punk_clothes_day1:
        Latoya: It was fun yesterday, so why not today?
    }
    Latoya: Good thing I have multiple of this shirt. Wouldn't want to be grody.
- Latoya: Punk it is.
CHARACTER LEFT Latoya MOOD laugh VARIANT punk
Latoya: Yeah, we're Vixxxy Vixen and the Foxy Ladies, and we're here to...
CHARACTER RIGHT Clara MOOD laugh
Clara: Fox you up!
Latoya: Morning, Speedy. #grin
Clara: Morning, Giggles. #grin
BG IMAGE LivingRoom
Latoya: Isn't waking up with your girlfriend so much better?
Clara: Pshaw... Maybe I like sleeping on the couch!
Latoya: Mm-hmm. #miffed
Clara: Yeah. It's nice, Giggles. I'm only playing. #blushing-happily
Latoya: Mm-hmm... #grin
Latoya: Let's get going.
-> bus_morning_day2

=== bus_morning_day2
BG IMAGE bus
Clara: Whoa! This bus is like, totes packed. #nervous-open
Latoya: Yeah, it bites. #bored
Clara: You know all about biting. #sly
Latoya: Be careful I don't bite you! #miffed
-> END
