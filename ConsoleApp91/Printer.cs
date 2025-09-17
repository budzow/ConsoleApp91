using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp91
{
    internal class Printer
    {

        public static void Print()
        {
            PrivatePrint();
        }

        private static void PrivatePrint()
        {
            Console.WriteLine("Hello from Printer");
        }
    }
}
