   M S B A M L   `   `   `  ����H  DGeotema test2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Geotema_test2Geotema_test2  5   	       Geotema_test2.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Geotema_test2     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��511��6)   .��5	      � $��	0,0,266,0q�6   .+�5
   
   � $��10,10,-256,267q�6   .+�5      �� $��Land:��6   $��
-10,1,10,0q�6$   �� 5      $��Rang:��6   $��
-10,35,0,0q�6$   �� 5      $��Verdensdel:��6   $��-10,64,0,-29q�6*   �� 5      $��Fødselsrate:��6   $��-10,96,0,-61q�6+   �� 5      -   5        $��LandBox��5      $�� ��6%   $��
65,1,289,0q�6-   
���   �$��19��6U   $	��Top=�6a   �� 5      -   5        $��RangBox��5      $�� ��6%   $��65,40,289,0q�6-   
���   �$��19��6V   $	��Top=�6b   �� 5      -   5        $��
VerdensBox��5      $�� ��6(   $��65,77,289,0q�60   
���   �$��19��6Y   $	��Top=�6e   �� 5      -   5        $��FødBox��5      $�� ��6$   $��65,106,289,0q�6,   
���   �$��19��6V   $	��Top=�6b   �� 5      -   5        $��Add Data��5      $��207,23,167,55q�6(   6?   5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��g1��5         AutoGenerateColumns$ False��6   $��10,167,-256,10q�69      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6<      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Id+6H     5      $
 Land��6?   $	 100 6M    6%   �� *Land1+6M     5      $ 
VerdensDel��6D   $	 100 6X    6%   �� *
verdensdel+6X     5      $
 Rang��6?   $	 100 6M    6%   �� *Rang1+6M     5      $ Fødselsret��6D   $	 100 6X    6%   �� *Fødselrate+6X   5      5      5      