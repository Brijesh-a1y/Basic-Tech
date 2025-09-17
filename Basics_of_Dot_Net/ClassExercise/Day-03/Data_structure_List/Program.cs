namespace data_structure
{
    internal class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("************* Start ************");
            
            Student s1 = new Student(101,"Crack","111212112");
            Student s2 = new Student(102, "Wrick", "444442112");
            Student s3 = new Student(103, "Brack", "555552112");


            List<Student> studentList = new List<Student>{s1, s2, s3 };

            foreach (Student student in studentList) { 
                Console.WriteLine(student.id+" "+student.name+" "+student.contactNo);
            }

            Console.WriteLine("************* End ************");

        }
    }
}
