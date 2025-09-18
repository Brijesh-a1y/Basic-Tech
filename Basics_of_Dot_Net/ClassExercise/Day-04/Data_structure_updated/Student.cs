using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dataStructure_updated
{
    internal class Student
    {
        public int id;
        public string name;
        public int marks;

        public Student()
        {
            //default constructor
        }
        public Student(int id, string name, int marks)
        {
            this.id = id;
            this.name = name;
            this.marks = marks;
        }
    }
}
