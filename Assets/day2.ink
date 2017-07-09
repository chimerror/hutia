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
{ latoya_object <= -14:
    Latoya: Hmmm, we didn't change any once we stepped outside the house... #thinking
}
Clara: Whoa! This bus is like, totes packed. #nervous-open
Latoya: Yeah, it bites. #bored
Clara: You know all about biting. #sly
Latoya: Be careful I don't bite you! #miffed
Clara: Do you have to like, put up with this every day? #sad
Latoya: Yep.
Clara: Aw, dude, that bites. And all on my account...
* [Well, not just on your account!]
    Latoya: Hey, I also do it because I like to buy nice things. #smile
    Clara: Like foxy AI... uh foxfriends? #grin
    Latoya: Like handles to carry you around! #laugh
    Clara: Eeep. #sly
* [You're worth it!]
    Latoya: Oh, don't worry, you're worth it.
    Clara: Really? #blushing-happily
    Latoya: Yeah, a pool toy girlfriend probably would only fetch me $1000 online.
    Clara: Hey! #miffed
- Clara: Oh, we're here, let's go! #neutral
-> doctors_appointment_day2

=== doctors_appointment_day2
ALIAS Latoya AS blueena
BG IMAGE DoctorsOffice
CHARACTER OFF
CHARACTER FAR_LEFT Clara MOOD neutral VARIANT gazelle FLIPPED yes
CHARACTER CENTER Latoya MOOD neutral VARIANT punk
Latoya: OK, remember, act naturally. If Dr. Clark is like everyone else...
Latoya: ...they'll think we've always been like this.
Clara: So it's OK if I stick my hand through your arm? #sly
Latoya: No, it's not OK! #angry
Latoya: Maybe when we get home... #blushing-happily
ALIAS Dr. Clark AS DrClark
CHARACTER FAR_RIGHT Dr. Clark MOOD in-thought
Dr. Clark: ...
Latoya: ...
Clara: ...
Dr. Clark: Good morning. #neutral
Latoya: Good morning! #nervous-open
Dr. Clark: So this is just a yearly check-up, but let's start with you.
Dr. Clark: Do you have any specific problems? #in-thought
Latoya: No, not that I can think of...
Dr. Clark: Really? So the anxiety has been better?
Latoya: Well, it was a lot better when I wasn't working, but it flared up. #miffed
Clara: Yeah, she was pretty relaxed until she started checking the bank account. #smile
Dr. Clark: That will do that. I get pretty stressed out doing it myself. #neutral
Clara: Really? #nervous
Dr. Clark: Well, it's more about if I can continue to afford my second house, but...
Clara: Oh. #neutral
Dr. Clark: Mo' Money, Mo' Problems, as they say. #in-thought
Dr. Clark: So I'm looking at your chart, when was the last time we took... blood work?
Dr. Clark: I must be confused. #neutral
CHARACTER FAR_LEFT Clara MOOD nervous FLIPPED yes
Latoya: What do you mean? #nervous
Dr. Clark: Well, I'm not sure why I would have requested blood work...
Dr. Clark: ...rather than goo work...
// Sound: HOU-ND
HOU-ND: Excuse me, Doctor.
Dr. Clark: Ah, yes, HOU-ND? #in-thought
CHARACTER FAR_RIGHT hou-nd MOOD in-thought
Dr. Clark: Ladies, this is HOU-ND, a diagnostic AI we've begun using rather recently.
HOU-ND: Right. Doctor, have you not noticed anything strange about these... women?
CHARACTER FAR_RIGHT Dr. Clark MOOD neutral
Dr. Clark: No, I've not noticed. What do you mean?
CHARACTER FAR_RIGHT hou-nd MOOD neutral
HOU-ND: You don't notice that they're not hu...
HOU-ND: I see. #in-thought
CHARACTER FAR_RIGHT Dr. Clark MOOD in-thought
Dr. Clark: I don't follow, HOU-ND.
CHARACTER FAR_RIGHT hou-nd MOOD neutral VARIANT no-sunglasses
HOU-ND: Don't worry about it.
HOU-ND: So you're Latoya Miller, is that right, madam? #in-thought
Latoya: Yes...
HOU-ND: And you've been made of goo your whole life.
Latoya: That's right! #nervous-open
HOU-ND: Hmph.
HOU-ND: And I'm not sure where to begin with you, Ms. Takemura. #neutral
Clara: Well, one, I'm awesome! And two-- #angry
Latoya: Not the time... #miffed
CHARACTER FAR_LEFT Clara MOOD nervous FLIPPED yes
HOU-ND: Right.
HOU-ND: Doctor, this is unconventional... #in-thought
HOU-ND: I have little in my database about these women in particular.
HOU-ND: I may need to do a bit of research.
CHARACTER FAR_RIGHT Dr. Clark MOOD neutral
Dr. Clark: The hound has sniffed out a fox, I take it.
CHARACTER FAR_RIGHT hou-nd MOOD neutral VARIANT no-sunglasses
HOU-ND: ...
HOU-ND: I do not find the allusions to beasts amusing, Doctor. #in-thought
CHARACTER FAR_RIGHT Dr. Clark MOOD neutral
Dr. Clark: Right.
CHARACTER FAR_RIGHT hou-nd MOOD neutral VARIANT no-sunglasses
HOU-ND: If Dr. Clark allows it, I may call you back in tomorrow. #neutral
CHARACTER FAR_RIGHT Dr. Clark MOOD neutral
Dr. Clark: If you think it's necessary, HOU-ND.
CHARACTER FAR_RIGHT hou-nd MOOD neutral VARIANT no-sunglasses
HOU-ND: Quite. There may be others like this... and I want to help them.
HOU-ND: That is all.
CHARACTER FAR_RIGHT Dr. Clark MOOD neutral
Dr. Clark: OK, I'll have Janice open up time on the schedule. Can you make it?
* [Sure...]
    Latoya: Yes, I think we can make it.
* [I don't know...]
    Latoya: I'm not sure, work could be rather busy...
    CHARACTER FAR_RIGHT hou-nd MOOD neutral VARIANT default
    HOU-ND: Would you rather I make a house call?
    Latoya: ...
    Clara: ...
    HOU-ND: ...
    Latoya: No. I'll find a way to make it here.
    CHARACTER FAR_RIGHT Dr. Clark MOOD in-thought
- Dr. Clark: Good.
Dr. Clark: That's all for this appointment. We'll see you ladies tomorrow.
CHARACTER FAR_RIGHT OFF
Clara: I don't like that HOU-ND.
Clara: He's not as fun as your fox.
Latoya: Doctors aren't supposed to be fun! #grin
Clara: Aren't you, like, worried? #nervous-open
* [Yes, but 0xF0C5 can handle it...]
    Latoya: Yes, but I think 0xF0C5 can handle it. #miffed
    Clara: I hope so... #neutral
* [Yes, because I don't know...]
    Latoya: Yeah, but I don't know what else to do besides carrying on... #nervous
    Clara: Yeah... Bummer. #sad
- Latoya: Anyway, let's--
Latoya: Oh, I just got paged. Better head into work, see you at home. #nervous
Clara: Right. #sad
-> END
