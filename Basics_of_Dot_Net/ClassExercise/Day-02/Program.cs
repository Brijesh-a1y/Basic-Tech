namespace Class
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Student first = new Student(); // default constructor

            Student second = new Student(1,"MODI",23,"12345","modi@gmail.com"); // parameterized constructor
            
            first.initialize(); //without constructor explicity initialize the member of class
            
            first.showDisplay();
          }
    }
}
