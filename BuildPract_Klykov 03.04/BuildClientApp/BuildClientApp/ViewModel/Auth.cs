using BuildClientApp.Model;
using BuildClientApp.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace BuildClientApp.ViewModel
{
    internal class Auth: BaseVM
    {
        private string _login;
        private string _password;

        public string Login 
        {
            get => _login;
            set
            {
                _login = value;
                OnPropertyChanged(nameof(Login));
                  
            }
        }
        public string Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }

        public bool Authorization (string login, string password)
        {
            var res = AppData.db.User.FirstOrDefault(u => u.UserLogin == login && u.UserPassword == password);

            if (res != null)
                return true;
            else
                return false;
        }

        public void AuthCheck()
        {
            if (Authorization(Login, Password))
            {
                SuccessAuth window = new SuccessAuth();
                window.Show();
                foreach(var item in App.Current.Windows)
                {
                    if (item is MainWindow)
                    {
                        (item as MainWindow).Hide();
                    }
                }
                  

            }
            else
                MessageBox.Show("Ошибка");

        }
    }
}
