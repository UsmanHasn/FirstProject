using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstProject
{
    public class ClsEncapsule
    {
        public double length;
        public double width;

        public double getvalue()
        {
            length = 20;
            width =  20;

            return (length * width);
        }

    }
}