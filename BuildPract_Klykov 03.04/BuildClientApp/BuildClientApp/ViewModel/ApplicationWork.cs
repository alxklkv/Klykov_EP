using BuildClientApp.Model;
using BuildClientApp.View;
using BuildClientApp.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;


namespace BuildClientApp.ViewModel
{
    public class ApplicationWork : SuccessAuth
    {

        public void Save_it()
        {
            var products = AppData.db.User.ToList();
            Table.ItemsSource = products;
            Table.ItemsSource = AppData.db.User.ToList();
           
        }
    }
}
