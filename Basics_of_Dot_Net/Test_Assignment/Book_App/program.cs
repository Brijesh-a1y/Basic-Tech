using System.Net.Quic;
using System.Reflection;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //seller
            string title="",authorName="";
            double price=0;
            int qty=0;

            //buyer
            string customerName = "";
            int buyQty = 0;
            while (true) {
                Console.WriteLine("===== BOOK SHOP MENU =====");
                Console.WriteLine("1.Add Book");
                Console.WriteLine("2.Sell Book");
                Console.WriteLine("3.View Book");
                Console.WriteLine("4.View Sales Report");
                Console.WriteLine("5.Exit");
                Console.WriteLine("==========================");
                Console.WriteLine("Choice:");
                int choice = Convert.ToInt32(Console.ReadLine());
                switch (choice)
                {
                    case 1: Add_Book(ref title,ref authorName,ref price,ref qty);
                        break;
                    case 2: Sell_Book(ref title, ref authorName, ref price, ref qty,ref buyQty);
                        break;
                    case 3: View_Book(ref title, ref  authorName, ref  price, ref qty);
                        break;
                    case 4: View_Sales_Report(ref title, ref customerName,ref price,ref buyQty);
                        break;
                    case 5: return;
                        break;
                    default:
                        break;
                }

            }
            Console.WriteLine("Thanks for using Book Shop Management");
        }
        static void Add_Book(ref string title, ref string authorName, ref double price, ref int quantity)
        {
            if (title != "")
            {
                Console.WriteLine("Sorry book is already inserted");
                return;
            }
            Console.WriteLine("Enter book title:");
            title = Console.ReadLine();
         
            Console.WriteLine("Enter author:");
            authorName = Console.ReadLine();
            Console.WriteLine("Enter price:");
            price = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("Enter quantity");
            quantity = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Book added successfully.");
        }
       static void Sell_Book(ref string title, ref string authorName, ref double price, ref int quantity, ref int buyQty)
        {
            Console.WriteLine("Enter book title to sell:");
            string t = Console.ReadLine();
            Console.WriteLine("Enter quantity to sell:");
            int qty = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Customer Name:");
            string customerName = Console.ReadLine();
            if (title != t)
            {
                Console.WriteLine("Book not available");
            }
            else if (qty > quantity)
            {
                Console.WriteLine("Quantity not available");
            }
            else
            {
                quantity -= qty;
                buyQty += qty;
            Console.WriteLine($"Sold {qty} copies of {title} to {customerName}");
            }
        }
       static void View_Book(ref string title, ref string authorName, ref double price, ref int quantity)
        {
            Console.WriteLine("--- Book Inventory ---");
            Console.WriteLine("Title\t Author \t Price \t Quantity");
            if(quantity > 0)
            {
             Console.WriteLine($"{title}\t {authorName}\t {price}\t {quantity}");
            }
             
        }
       static void View_Sales_Report(ref string title, ref string customerName, ref double price, ref int buyQty)
        {
            Console.WriteLine("---Sale Report----");
            Console.WriteLine("Customer Name\t Book\t, Quantity Purchased\t Amount");
            if (buyQty != 0)
            {
                Console.WriteLine($"{customerName}\t {title}\t {buyQty}\t {price}");
            }
        }
    }
}
