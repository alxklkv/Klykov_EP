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

namespace BuildClientApp.View
{
    /// <summary>
    /// Логика взаимодействия для AddWindow.xaml
    /// </summary>
    public partial class AddWindow : Window
    {
        public AddWindow()
        {
            InitializeComponent();
            CmbRole.ItemsSource = AppData.db.Role.ToList();
        }

        public void Load(object sender, RoutedEventArgs e)
        {
          

        }

        private void btn_save(object sender, RoutedEventArgs e)
        {
            User people = new User();
            people.UserSurname = SnmTxb.Text;
            people.UserName = NameTxb.Text;
            people.UserPatronymic = PtrnmTxb.Text;
            people.UserLogin = loginTxb.Text;
            people.UserPassword = PasswordTxb.Text;

            var CurrentRole = CmbRole.SelectedItem as Role;
            people.UserRole = CurrentRole.RoleID;

            AppData.db.User.Add(people);
            AppData.db.SaveChanges();
            
            ApplicationWork a = new ApplicationWork();
            a.Save_it();
            
            MessageBox.Show("Пользователь был добавлен в базу");

            
           
           

        }
    }
}
