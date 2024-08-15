using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstProject
{
    abstract class AbsClass
    {
        public abstract int getarea();
    }

    class Traingle : AbsClass
    {
        protected int length;
        protected int width;

        public Traingle(int a = 15, int b = 20)
        {
            length = a;
            width = b;
        }
        public override int getarea()
        {
            return (length * width);

        }

    }
}

