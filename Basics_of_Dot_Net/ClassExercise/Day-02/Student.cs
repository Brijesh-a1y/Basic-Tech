using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class
{
    internal class Student
    {   
       
        int student_id;
        string name;
        int age;
        string contact_no;
        string email_id;

        //public Student() { }
        //public Student(int id,string std_name,int age,string contact_no,string email_id) {
        //    student_id = id;
        //    name = std_name;
        //    this.age = age;
        //    this.contact_no = contact_no;
        //    this.email_id = email_id;
        //}
        public void initialize()
        {
            student_id = 10;
            name = "Ramu Kaka";
        }
        public void showDisplay()
        {
            Console.WriteLine("Display Object");
            Console.WriteLine(name);
        }
        public void getTotal()
        {

        }
    }
}
