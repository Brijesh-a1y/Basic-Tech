// Create a program that checks if a meter's reading is within a valid range (100–200).
namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the meter Reading : ");
            int meterReading = Convert.ToInt32(Console.ReadLine());
            if(meterReading >= 100 && meterReading <= 200)
            {
                Console.WriteLine("Meter reading is lie in valid range(100-200)");
            }
            else
            {
                Console.WriteLine("Meter reading is out of range");
            }
        }
    }
}
