   M S B A M L   `   `   `  ����I  EBuildClientApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:BuildClientApp.ViewBuildClientApp.View  5   	   %    BuildClientApp.View.SuccessAuth   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:BuildClientApp.View     5   	     � Title$2  ,Стройматериалы: Таблица��5   	   $	��450��6)   $	��800��66    � WindowStartupLocation$ CenterScreen=�5	   	    � 
ResizeMode$ NoResize=�6.   .��5
      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      .+�5      ��  �� Orientation$ Vertical=�6   $��0��6-   $��Center=�6=   $	��Top=�6Z   .+�5      �� -   5        $	��125��5      $��32��6$   $
��Left=�60   $�� 10 10 10 0 q�6K   $	��Top=�6a   $��Добавить��6y   ���	#FF498C51
�������6�   �� 5      $	��125��6   $��32��6%   $
��Left=�61   $�� 10 10 10 0 q�6L   $	��Top=�6b   $��Изменить��6z   ���	#FF498C51
�������6�   �� 5      -   5        $	��125��5      $��32��6%   $
��Left=�61   $�� 10 10 10 0 q�6L   $	��Top=�6b   $��Удалить��6z   ���	#FF498C51
�������6�   5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��Table��5         AutoGenerateColumns . $��1��6;   5      5      5      