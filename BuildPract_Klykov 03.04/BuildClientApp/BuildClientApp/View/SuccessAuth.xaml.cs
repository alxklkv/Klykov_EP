using BuildClientApp.Model;
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

namespace BuildClientApp.View
{
    /// <summary>
    /// Логика взаимодействия для SuccessAuth.xaml
    /// </summary>
    public partial class SuccessAuth : Window
    {
        public SuccessAuth()
        {
            InitializeComponent();

            var products = AppData.db.User.ToList();
            Table.ItemsSource = products;
            
            

        }

        private void Add_btn(object sender, RoutedEventArgs e)
        {
            
            AddWindow ownerwindow = new AddWindow();
            ownerwindow.Owner = this;
            ownerwindow.Show();



        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if(MessageBox.Show("Вы действительно хотите удалить пользователя?", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                var CurrentUser = Table.SelectedItem as User;
                AppData.db.User.Remove(CurrentUser);
                AppData.db.SaveChanges();

                Table.ItemsSource = AppData.db.User.ToList();
                MessageBox.Show("Успешно");
            }
        }

        public void Save_it2()
        {
            
                var products = AppData.db.User.ToList();
                Table.ItemsSource = products;
                Table.ItemsSource = AppData.db.User.ToList();
            
        }
    }
}
