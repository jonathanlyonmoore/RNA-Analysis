   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5!       Bio.Data.Providers.rCAD.RI?   9Bio.Data.Providers.rCAD.RI.Views.SelectExistingConnection   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      [ WJulmar.Wpf.Behaviors, Version=1.0.0.5, Culture=neutral, PublicKeyToken=ff1c121d8ddc1581Y UJulMar.Wpf.Helpers, Version=1.0.0.5, Culture=neutral, PublicKeyToken=ff1c121d8ddc1581/julmar http://www.julmar.com/wpfhelpers   5       fInteractivityPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity   5!        � WindowStartupLocation$  CenterOwner=�5"         WindowBackgroundBrush#���   5#      $	��300��5$      $	��400��6    � Title$# Select an Existing Connection��6   .��5&      �  � RowDefinitions 5'   
   �� 5(      $
��Auto �6   �� 5)      �� 5*      $
��Auto �6   .+�5-   
   �� $��5,2,5,5q�6   $D��>Select a known database and filter, or create a new connection��6!   $��0��6j   $
��Bold"�5.      �� 50   
   $��1��6   $
��10,2q�6   $ �� IsSynchronizedWithCurrentItem$
 TrueY�6M    �� DisplayMemberPath$
 Name��51   6   ��50   -   �� *	Filters+ �� SelectedItem 51      �� *SelectedFilter+.   (System.Windows.Interactivity.Interaction   Triggers 53      5  /JulMar.Windows.Interactivity.DoubleClickTrigger  54      .   (System.Windows.Interactivity.TriggerBase   Actions. 55      *  $JulMar.Windows.Actions.InvokeCommand     Command 6+   �� *CloseOkCommand+56      	 � ContextMenu	 59      �� 5:      .@�5;      m� $��O_pen��6   
 m� Command
 6.   �� *CloseOkCommand+m� 5<      $��E_dit��6   
 6.   �� *EditConnectionCommand+m� 5=      $��R_emove From List��6   
 6:   �� *RemoveConnectionCommand+5>      5@      �� 5B   
   $��2��6   $��Right=�6"   $��10q�6>    �� Orientation$ 
Horizontal=�6J   .+�5C      �� $��OK��6   $��75��6"   $��5q�60   $��5q�6^   ��6;   �� *CloseOkCommand+6^   �� 5D      $��Cancel��6   $��75��6&   $��5q�64    �� IsCancel . $��5q�6O   �� 5E      $��Add New ...��6   $��75��6+   $��5q�69   $��5q�6i   ��6D   �� *CreateNewCommand+6i   5F      5H      5J      