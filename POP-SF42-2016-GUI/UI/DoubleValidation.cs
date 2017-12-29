﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace POP_SF42_2016_GUI.UI
{
    public class DoubleValidation : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            string vrednost = value as string;   
                try
                {
                    double broj;
                    bool rezultat = Double.TryParse(vrednost, out broj);
                
                    if(!rezultat)
                        return new ValidationResult(false, "Morate uneti pozitivan broj");
                    if (broj < 0)
                        return new ValidationResult(false, "Morate uneti pozitivan broj");
                    else
                        return new ValidationResult(true, null);
                }
                catch (Exception)
                {
                    return new ValidationResult(false, "Morate uneti pozitivan ceo broj za cenu/kolicinu");
                }
            
            


        }

    }
}