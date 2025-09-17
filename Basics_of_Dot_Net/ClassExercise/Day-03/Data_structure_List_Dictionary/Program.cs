namespace data_structure
{
    internal class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("************* Start ************");
            
            Student s1 = new Student(101,"Crack");
            Student s2 = new Student(102, "Wrick");
            Student s3 = new Student(103, "Brack");

            
            
            List<Dictionary<int,string>> studentList = new List<Dictionary<int,string>>();
            
            Dictionary<int,string> student = new Dictionary<int,string>();
            student.Add(s1.id, s1.name);
            student.Add(s2.id, s2.name);
            student.Add(s3.id, s3.name);

            studentList.Add(student);



            Console.WriteLine("************* End ************");

        }
    }
}
