// Write a console program that takes a meter serial number as input and prints it.
namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the meter serial number");
            var MSN = Console.ReadLine();
            Console.WriteLine(MSN);
        }
    }
}
