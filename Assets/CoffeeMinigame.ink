EXTERNAL makeNewDesiredOrder()
EXTERNAL setCaffeine(caffeinated)
EXTERNAL setShots(number)
EXTERNAL addMilk()
EXTERNAL addFoam()
EXTERNAL addVanilla()
EXTERNAL addStrawberry()
EXTERNAL addChocolate()
EXTERNAL finishCreatedOrder()
EXTERNAL getCreatedOrder()
EXTERNAL keepTakingOrders()

=== function makeNewDesiredOrder() ===
~ return "medium triple shot decaf strawberry cappuccino"

=== function setCaffeine(caffeinated) ===
~ return caffeinated

=== function setShots(number) ===
~ return number

=== function addMilk() ===
~ return 1

=== function addFoam() ===
~ return 1

=== function addVanilla() ===
~ return 1

=== function addStrawberry() ===
~ return 1

=== function addChocolate() ===
~ return 1

=== function finishCreatedOrder() ===
~ return true

=== function getCreatedOrder() ===
~ return "Medium Triple Shot Decaf Strawberry Cappuccino"

=== function keepTakingOrders() ===
~ return false

=== coffee_minigame_start
VAR orders_made = 0
VAR orders_wrong = 0
CHARACTER OFF
CHARACTER LEFT 0xF0C5 MOOD laugh
CHARACTER RIGHT blueena MOOD nervous
-> new_order

= new_order
0xF0C5: hello, i'd like a... #sly
0xF0C5: { makeNewDesiredOrder() }
blueena: OK, first is espresso... decaf or regular? #nervous
+ [Left]
    ~ setCaffeine(false)
+ [Right]
    ~ setCaffeine(true)
- blueena: How many shots of espresso?
+ [One]
    ~ setShots(1)
+ [Two]
    ~ setShots(2)
+ [Three]
    ~ setShots(3)
- -> milk_and_foam

= milk_and_foam
VAR added_milk = false
VAR added_foam = false
{ added_milk && added_foam:
    ~ added_milk = false
    ~ added_foam = false
    -> syrup
}
- blueena: OK, now milk and foam...
+ { !added_milk } [Left]
    ~ addMilk()
    ~ added_milk = true
    -> milk_and_foam
+ { !added_foam } [Right]
    ~ addFoam()
    ~ added_foam = true
    -> milk_and_foam
+ [Done]
    ~ added_milk = false
    ~ added_foam = false
    blueena: Whew!
- blueena: That's it for milk and foam...
-> syrup

= syrup
blueena: OK, syrup. There's vanilla, strawberry, chocolate...
<- debug_options(-> syrup)
+ [Left]
    ~ addVanilla()
+ [Right]
    ~  addStrawberry()
+ [Below?]
    ~  addChocolate()
+ [None]
    blueena: No syrup...
- blueena: Here's your drink! #blushing-happily
blueena: I hope I got it right... #thinking
~ alter(orders_made, 1)
{ finishCreatedOrder():
    ~ alter(latoya_object, -1)
    0xF0C5: thanks, it's perfect! #laugh
    blueena: ! #smile
    -> correct_order ->
  - else:
    ~ alter(latoya_object, 1)
    ~ alter(orders_wrong, 1)
    0xF0C5: hey, this is wrong! you gave me a... #angry
    0xF0C5: { getCreatedOrder() }
    blueena: ?! #nervous
    -> wrong_order ->
}
{ keepTakingOrders():
    blueena: Here comes another customer!
    -> new_order
  - else:
    blueena: I... I... #blushing-happily
    -> morning_day1
}

= correct_order
{
  - orders_made == 1:
    blueena: Got one! #smile #thinking
    blueena: Hopefully, the uh... #thinking
    blueena: Excu-agonizer doesn't mess me up on the next one... #blushing-happily #thinking
  - orders_made == 2:
    blueena: Woo! Got the second one!  #laugh #thinking
    blueena: OK, focus, girl! #angry #thinking
  - orders_wrong > 0:
    blueena: Well, that seems to be the last one... #blushing-happily #thinking
    blueena: Didn't get them all right, but hey, not bad! #smile #thinking
  - else:
    blueena: Ah, last one! #grin #thinking
    blueena: I'm pretty darn good at this! #thinking
    blueena: Maybe I should actually become a barista... #sly #thinking
    blueena: After all, I'm sure they'll be glad to hear... #thinking
    blueena: ...of my extensive virtual experience... #miffed #thinking
    blueena: ...as a three-breasted espresso machine. #thinking
}
->->

= wrong_order
{
  - orders_wrong == 1:
    blueena: Oh, I messed it up! That's... #thinking
    blueena: Ah, there goes the skirt... #blushing-happily #thinking
  - orders_wrong == 2:
    blueena: Shoot, screwed up again! #miffed #thinking
    blueena: Though, the skirt did just brush up... #blushing-happily #thinking
    blueena: Aaahh... #thinking
  - latoya_object > 0:
    blueena: Ugh, I just can't seem to get this right. #sad #thinking
    blueena: At least... #blushing-happily #thinking
    blueena: I get to enjoy... #thinking
    blueena: ...my own skirt? #nervous #thinking
    blueena: Eh, whatever, it's pretty nice... #blushing-happily #thinking
  - else:
    blueena: Oops! Messed up again... #blushing-happily #thinking
    blueena: Though, that one I did on purpose... #sly #thinking
    blueena: The skirt was in the exact right place, and... #thinking
    blueena: Eeee... #blushing-happily #thinking
}
->->
