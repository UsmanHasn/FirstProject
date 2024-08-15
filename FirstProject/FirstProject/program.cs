using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstProject
{
    public class program
    {
        static void Main(string[] args)
        {
            string[] cars = { "A", "B", "C", "D", "E" };
            cars[0] = "";
            Console.WriteLine(cars[0]);
        }
    }
}
//        string[] students = { "David", "Vinoth", "Divya", "Ishitha", "Thomas" };
//        int[] marks = { 88, 95, 68, 77, 95 };

//        // var Avgmarks = 0;

//        for (int i = 0; i < students.Length; i++)
//        {
//            if (marks[i] > 90)
//            {
//                Console.WriteLine(students[i] + " Grade: " + "A");
//            }
//            else if (marks[i] > 80)
//            {
//                Console.WriteLine(students[i] + " Grade: " + "B");
//            }
//            else if (marks[i] > 70)
//            {
//                Console.WriteLine(students[i] + " Grade: " + "C");
//            }
//            else if (marks[i] > 50)
//            {
//                Console.WriteLine(students[i] + " Grade: " + "D");
//            }
//            else
//            {
//                Console.WriteLine(students[i] + " Grade: " + "FAIL");
//            }
//        }
//        Console.ReadKey();
//    }

//}

