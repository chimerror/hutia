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
~ return "Medium Triple Shot Decaf Strawberry Cappuccino"

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
- blueena: OK, now milk and foam...
+ [Left]
    ~ addMilk()
    -> milk_and_foam
+ [Right]
    ~ addFoam()
    -> milk_and_foam
+ [Done]
    blueena: That's it for milk and foam...
- blueena: OK, syrup. There's vanilla, strawberry, chocolate...
-> syrup

= syrup
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
{ finishCreatedOrder():
    ~ alter(latoya_object, -1)
    0xF0C5: thanks, it's perfect! #laugh
    blueena: ! #smile
  - else:
    ~ alter(latoya_object, 1)
    0xF0C5: hey, this is wrong! you gave me a... #angry
    0xF0C5: { getCreatedOrder() }
    blueena: ?! #nervous
}
{ keepTakingOrders():
    blueena: Here comes another customer!
    -> new_order
  - else:
    blueena: I... I... #blushing-happily
    -> morning_day1
}
