using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class CoffeeMinigame
{
    private const int OrdersToMake = 3;

    private static CoffeeMinigame _instance;

    private Random _rng;
    private Order _currentDesiredOrder;
    private Order _currentCreatedOrder;

    private CoffeeMinigame()
    {
        _rng = new Random();
        MakeNewDesiredOrder();
    }

    public enum Size
    {
        Small = 1,
        Medium = 2,
        Large = 3,
    }

    public enum Syrup
    {
        None,
        Chocolate,
        Strawberry,
        Vanilla,
    }

    public enum DrinkType
    {
        Cappuccino,
        Espresso,
        Latte,
        Machiatto,
        Mocha,
    }

    public static CoffeeMinigame Instance
    {
        get
        {
            if (_instance == null)
            {
                _instance = new CoffeeMinigame();
            }
            return _instance;
        }
    }

    public int OrdersMade { get; private set; }

    public Order CurrentDesiredOrder
    {
        get
        {
            return _currentDesiredOrder;
        }
    }

    public Order CurrentCreatedOrder
    {
        get
        {
            return _currentCreatedOrder;
        }
    }

    public void MakeNewDesiredOrder()
    {
        var drinkTypeValues = Enum.GetValues(typeof(DrinkType));
        var drinkType = (DrinkType)drinkTypeValues.GetValue(_rng.Next(drinkTypeValues.Length));

        var sizeValues = Enum.GetValues(typeof(Size));
        var size = (Size)sizeValues.GetValue(_rng.Next(sizeValues.Length));

        var syrupValues = Enum.GetValues(typeof(Syrup));
        var syrup = (Syrup)syrupValues.GetValue(_rng.Next(syrupValues.Length));

        bool hasMilk = false;
        bool hasFoam = false;
        switch (drinkType)
        {
            case DrinkType.Cappuccino:
                hasMilk = true;
                hasFoam = true;
                break;

            case DrinkType.Latte:
            case DrinkType.Mocha:
                hasMilk = true;
                hasFoam = false;
                break;

            case DrinkType.Machiatto:
                hasMilk = false;
                hasFoam = true;
                break;

            case DrinkType.Espresso:
            default:
                break;
        }

        if (drinkType.Equals(DrinkType.Mocha))
        {
            syrup = Syrup.Chocolate;
        }

        _currentDesiredOrder = new Order()
        {
            DrinkType = drinkType,
            Caffeinated = _rng.Next() % 2 == 0,
            EspressoShots = _rng.Next(3) + 1,
            HasMilk = hasMilk,
            HasFoam = hasFoam,
            Size = size,
            Syrup = syrup,
        };

        _currentCreatedOrder = new Order()
        {
            Size = size,
        };

        // Seems premature, but there seems to be a bug in ink, where FinishCreatedOrder gets called twice
        OrdersMade++;
    }

    public void Reset()
    {
        OrdersMade = 0;
    }

    public void SetCaffeine(bool caffeinated)
    {
        _currentCreatedOrder.Caffeinated = caffeinated;
    }

    public void SetShots(int number)
    {
        _currentCreatedOrder.EspressoShots = number;
    }

    public void AddMilk()
    {
        _currentCreatedOrder.HasMilk = true;
    }

    public void AddFoam()
    {
        _currentCreatedOrder.HasFoam = true;
    }

    public void AddVanilla()
    {
        _currentCreatedOrder.Syrup = Syrup.Vanilla;
    }

    public void AddStrawberry()
    {
        _currentCreatedOrder.Syrup = Syrup.Strawberry;
    }

    public void AddChocolate()
    {
        _currentCreatedOrder.Syrup = Syrup.Chocolate;
    }

    public bool FinishCreatedOrder()
    {
        if (_currentCreatedOrder.HasFoam && _currentCreatedOrder.HasMilk)
        {
            _currentCreatedOrder.DrinkType = DrinkType.Cappuccino;
        }
        else if (_currentCreatedOrder.HasMilk)
        {
            if (_currentCreatedOrder.Syrup == Syrup.Chocolate)
            {
                _currentCreatedOrder.DrinkType = DrinkType.Mocha;
            }
            else
            {
                _currentCreatedOrder.DrinkType = DrinkType.Latte;
            }
        }
        else if (_currentCreatedOrder.HasFoam)
        {
            _currentCreatedOrder.DrinkType = DrinkType.Machiatto;
        }
        else
        {
            _currentCreatedOrder.DrinkType = DrinkType.Espresso;
        }

        return _currentDesiredOrder.Equals(_currentCreatedOrder);
    }

    public bool KeepTakingOrders()
    {
        return OrdersMade <= OrdersToMake;
    }

    public struct Order
    {
        public DrinkType DrinkType;
        public bool Caffeinated;
        public int EspressoShots;
        public bool HasMilk;
        public bool HasFoam;
        public Size Size;
        public Syrup Syrup;

        public override string ToString()
        {
            var sb = new StringBuilder(Size.ToString());

            if (EspressoShots != (int)Size)
            {
                switch (EspressoShots)
                {
                    case 1:
                        sb.Append(" Single Shot");
                        break;

                    case 2:
                        sb.Append(" Double Shot");
                        break;

                    case 3:
                        sb.Append(" Triple Shot");
                        break;

                    default:
                        break;
                }
            }

            if (!Caffeinated)
            {
                sb.Append(" Decaf");
            }

            if (!(Syrup.Equals(Syrup.None) ||
                 (Syrup.Equals(Syrup.Chocolate) && DrinkType.Equals(DrinkType.Mocha))))
            {
                sb.AppendFormat(" {0}", Syrup.ToString());
            }

            sb.AppendFormat(" {0}", DrinkType.ToString());

            return sb.ToString();
        }
    }
}