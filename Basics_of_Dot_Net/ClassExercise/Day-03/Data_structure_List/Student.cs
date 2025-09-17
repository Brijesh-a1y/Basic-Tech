using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace data_structure
{
    internal class Student
    {
        public int id;
        public string name;
        public string contactNo;

        Student() { }

        public Student(int id,string name,string contactNo) { 
            this.id = id;
            this.name = name;   
            this.contactNo = contactNo;
        }
        
    }
}
