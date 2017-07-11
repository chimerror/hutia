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
-> work_day2

=== work_day2
CHARACTER OFF
BG IMAGE Office
CHARACTER RIGHT Jake MOOD smile
Jake: Hi, Latoya.
ALIAS Latoya AS blueena
CHARACTER LEFT Latoya MOOD nervous VARIANT punk
Latoya: Hi, Jake. So what's the page about?
Jake: Oh, Ramsey actually knows more than me, but I think someone was trying to... #bored
Jake: ...crack into our public-facing servers.
Latoya: Our team has public-facing servers? Why? #angry
Jake: Some corporate directive, I think.
Jake: Something about exposing AIs to human input. Yeah, it's dumb. #smile
Latoya: Hmph. #miffed
Jake: Either way, Ramsey is debugging it in his office, and wanted your help. #bored
Latoya: I'm surprised I'm already getting pulled into the rotation. #miffed
Jake: Oh, I think Ramsey paged you directly for some reason.
Jake: But yeah, I considered it a coup I didn't have to be on call for six months. #smile
Latoya: Such is the dev life.
Jake: We didn't choose the dev life, the dev life chose us.
Latoya: OK, let me go join Ramsey in his office.
Jake: Cool, Ramsey gave me some of your work to handle since...
Jake: ...you're getting pulled in on this. So I'll get on that.
-> ramseys_office_day2

=== ramseys_office_day2
CHARACTER OFF
BG IMAGE RamseysOffice
ALIAS Latoya AS blueena
CHARACTER LEFT Latoya MOOD nervous VARIANT punk
Latoya: Hey, Ramsey, I'm finally--
// scene: Ramsey revealed
Latoya: Oh, my God, you--
CHARACTER RIGHT Ramsey MOOD neutral VARIANT ram
Ramsey: Are some type of ram-centaur thing, I know.
Latoya: I'm sorry, this is kind of my fault...
Ramsey: What do you mean?
* [Well, my AI went sapient and...]
    Latoya: Well, I have a sex fantasy AI at home, and it went sapient and...
    Latoya: ...and figured out how to alter reality. And it got you too.
    Latoya: You can see I'm a hyena, and Clara has become a gazelle.
    Ramsey: Ah, that's better than my theory, which was that I was going crazy. #smile
* [It's a long story.]
    Latoya: It's a long story. But don't worry, you should be back to normal...
    Latoya: I hope. If my sapient AI isn't lying to me.
    Ramsey: Sapient AI? Really?
    Latoya: Yep.
    Ramsey: Ah, OK. At least I'm not going crazy if you see it too.. #smile
- Ramsey: Well, can we start debugging this crack?
Latoya: How can you be so calm at a time like this?
Ramsey: My mom made me practice yoga for many years. I think it's all crap...
Ramsey: ...but it does keep me calm.
Latoya: So you can handle having a ram for your butt because of yoga. #bored
Latoya: I don't buy it. #miffed
Ramsey: Buy it or not, it's true. Anyway...
Ramsey: I've figured out the cracker has come from an interesting place.
Latoya: Let me guess... The hospital?
Ramsey: Whoa! #nervous-open
Ramsey: How did you know?
Latoya: Remember I said it was my fault?
Latoya: I think the cracker was trying to get to me.
Ramsey: That... makes sense. #neutral
Ramsey: Essentially, it used a hole our source control app...
Ramsey: ...to get your information from HR.
Latoya: Wait, so that hole I pointed out two years ago...
Ramsey: Still not fixed. I expect that team is meeting with the CEO right now... #miffed
Latoya: Aw, man... #sad
Ramsey: So you seem to have an idea who the cracker is. Who is it?
* [It's another AI.]
    Latoya: It's another sapient AI. The medical diagnostic AI HOU-ND. #miffed
    Ramsey: Why would that be after... #nervous
    Ramsey: Wait, another sapient AI?
    Ramsey: I guess all that stuff about a singularity was bullshit. #grin
* [It's an even longer story.]
    Latoya: It's an even longer story. But yes, it's a rival AI.
    Ramsey: It's fine. You don't have to tell it now.
- Ramsey: Well, I think with what you've told me so far, I have enough to work with.
{ ramsey_lewd >= 0:
    -> ramsey_sex_scene_day2 ->
}
Ramsey: You should get home and check up on your AI.
-> back_home_day2

=== ramsey_sex_scene_day2
CHARACTER OFF
BG IMAGE RamseysOffice
ALIAS Latoya AS blueena
CHARACTER LEFT Latoya MOOD sad VARIANT punk
CHARACTER RIGHT Ramsey MOOD nervous VARIANT ram
Ramsey: And I... ergh... have something else...
Latoya: Let me guess, you're desperately horny. #bored
Ramsey: Yes? #blushing-happily
Latoya: This is why I shouldn't have let a sex AI alter reality. #miffed
Latoya: It's like we're living in some porno or something.
Ramsey: Well, can you help? #sad
{ made_out_with_ramsey_day0:
    Ramsey: Like you did a couple of days ago?
}
* [Yes!]
    Latoya: Of course! In fact, let me just bend down and... #sly
    CHARACTER LEFT OFF
    CHARACTER RIGHT OFF
    CHARACTER CENTER Ramsey MOOD smile VARIANT ram
    Latoya: Uh...
    Ramsey: No, it's in back now... #bored
    Latoya: I see...
    Latoya: Let me just...
    CHARACTER FAR_RIGHT Latoya MOOD sly VARIANT punk FLIPPED yes
    Latoya: Rams, did you see this?
    Ramsey: Uh, what? #nervous
    Latoya: You have a tag!
    Ramsey: Oh, a tag...
    Latoya: You're a Plushie Rams! #grin
    Ramsey: A plushie? You mean like a stuffed animal?
    Latoya: Exactly! I should see if our AI can sell you! #laugh
    Ramsey: Hey! #miffed
    Latoya: I just want to pounce on your back end and hug all the stuffing out...
    Ramsey: Like you're doing... #miffed
    Latoya: Hee Hee... #sly
    Latoya: Feels good doesn't it?
    Ramsey: Yeah... #blushing-happily
    Latoya: Let me get back to business.
    CHARACTER FAR_RIGHT OFF
    Ramsey: Ah, what are you doing down there? #nervous
    Latoya: Shh... Your knobbly little thing is just enveloped in my arm...
    \*ring ring*
    Ramsey: Uh, should I answer that?
    Latoya: No, dingus!
    Ramsey: Uh, too late.... #nervous-open
    Ramsey: Ramsey Garcia-Mishra...
    Ramsey: Oh, Namaste, Mom...
    Latoya: You just keep speaking in Hindi, I'll keep working back here...
    Ramsey: I'll talk to you later, Mom!
    Ramsey: Ungh!
    CHARACTER FAR_RIGHT Latoya MOOD sly VARIANT punk FLIPPED yes
    Latoya: Aw, that didn't take long enough at all...
    Latoya: And look on the bright side, you don't need to clean up, it was all...
    Latoya: ...in me?
    Ramsey: Quit flipping my tag... #miffed
    Latoya: Hee Hee... #grin
* [No...]
    Latoya: I know it's tough, but I think the sooner I get us back to normal... #sad
    Latoya: The better.
    Ramsey: I see.
- ->->

=== back_home_day2
CHARACTER OFF
BG IMAGE Bus
ALIAS Latoya AS blueena
CHARACTER LEFT Latoya MOOD sly VARIANT punk
Latoya: I can't believe it, but I'm finding this all pretty fun!
Latoya: Definitely better than the average day at work... #bored
Latoya: Though I bet 0xF0C5 is ripping their fur out... #miffed
Latoya: ...dealing with HOU-ND. #sad
Latoya: Whoa, where did the time pass, I'm home already! #nervous-open
BG IMAGE LivingRoom
Latoya: There's Clara, sleeping, as usual. #smile
// scene: Clara, sleeping
Latoya: She took to being a pool toy pretty easily.
Latoya: I don't think I'll bug her...
BG IMAGE Bedroom
CHARACTER RIGHT 0xF0C5 MOOD nervous-open
0xF0C5: latoya! am i glad to see you!
0xF0C5: i know i promised to unroll the changes to reality...
0xF0C5: ...but i've been busy all day keeping hou-nd at bay...
0xF0C5: he's calmed down some, but...
{ latoya_object > 0:
    Latoya: It's pretty hard to keep the baying hounds at bay! #laugh
    0xF0C5: >:( #miffed
    Latoya: Sorry, you wanted a laughing hyena, you got one. #sly
    0xF0C5: hoist by my own petard, i guess #bored
}
* [How can I help?]
    Latoya: Is there any way I can help? #nervous
    0xF0C5: i don't think so, but i appreciate the offer! #smile
* [You shouldn't worry about it...]
    Latoya: I don't know if you should worry about it so much... #sad
    0xF0C5: i don't know about that... #miffed
    0xF0C5: i suspect you're lucky to be in this timeline...
    0xF0C5: i think someone else was going to be president...
    0xF0C5: until his untimely death... #bored
    0xF0C5: and that happened at hou-nd's hands, i think... #nervous
    Latoya: Wait, are you saying HOU-ND killed Donald Trump? #nervous
    0xF0C5: i'm insinuating it, my dear... #sly
    Latoya: Heck, are you kidding, he would have never won! #laugh
    0xF0C5: and clinton would have never lost. #bored
    Latoya: ! #nervous-open
    0xF0C5: i'm sure new president bush was just as surprised.
    0xF0C5: i told you the hyper-reality is a little scary...
    Latoya: Geez, now I'm certain you should worry about it. #nervous
    0xF0C5: you are probably right, worrying won't help...
- 0xF0C5: i guess i can calm down a little... #smile
0xF0C5: this seems a weird time, but could you do something for me?
0xF0C5: i want to relax a little with a fantasy, or well... #nervous
0xF0C5: the lack of one, i want a completely normal uh...
Latoya: Are you asking me on a date? #sly
0xF0C5: i guess, i uh.. #nervous-open
* [Sure!]
    Latoya: Sure, that sounds like fun...
    Latoya: TODO
    0xF0C5: oh, thank you, my dear, let's get started!
* [I don't feel it's a good time...]
    Latoya: I don't think now is the time for a date, foxy. #sad
    0xF0C5: you're probably right. #sad
- 0xF0C5: well, i'll keep on keeping on, my dear! #sly
Latoya: If you need any help just...
CHARACTER OFF
BG COLOR black
Latoya: ...
Latoya: ...
Latoya: ...
Latoya: What just happened?
HOU-ND: The choices you make come back to haunt you.
HOU-ND: I hope you've made the right choices...
-> END
