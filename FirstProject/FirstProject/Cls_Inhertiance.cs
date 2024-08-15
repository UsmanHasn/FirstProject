namespace FirstProject
{
    class Cls_Inhertiance
    {
        public string Name;
        public string getname()
        {
            Name = "Usman_Hasn";
            return Name;
        }

    }

    class A : Cls_Inhertiance
    {
        public string Location;
        public string getlocation()
        {
            Location = "karachi";
            return Location;
        }

    }

    class B : A
    {

        public string Age;
        public string getAge()
        {
            Age = "Fifty";
            return Age;
        }
        public string display()
        {
            Cls_Inhertiance objCls = new Cls_Inhertiance();
            objCls.getname();

            A a = new A();
            a.getlocation();

            B b = new B();
            b.getAge();

            return objCls.Name + ',' + a.Location + ',' + b.Age;
        }


    }
}