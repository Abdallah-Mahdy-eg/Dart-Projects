import 'dart:io';
import 'EmployeeDaily.dart';
import 'EmployeeMonthly.dart';

void main() {
  //list to employee  month  and day salary
  List<EmployeeMonthly> ListEmployeeMonthly = [];
  List<EmployeeDaily> ListEmployeeDaily = [];
  int Operations1, Operations2, IdEmployee = -1;
  bool quit = false, find = false;
  do {
    print("To part of Employee Monthly press 1 ");
    print("To part of Employee Daily press 2 ");
    print("To Exit press 0 ");
    Operations1 = int.parse(stdin.readLineSync()!);
    if (Operations1 == 1 || Operations1 == 2) {
      print("To insert Employee press 1 ");
      print("To delete Employee press 2 ");
      print("To display List of Employee press 3 ");

      Operations2 = int.parse(stdin.readLineSync()!);

      if (Operations1 == 1) {
        //operation insert
        if (Operations2 == 1) {
          print("Enter name of employee : ");
          String name = stdin.readLineSync()!;
          print("Enter address of employee : ");
          String address = stdin.readLineSync()!;
          print("Enter MonthlySalary of employee : ");
          double MonthlySalary = double.parse(stdin.readLineSync()!);
          EmployeeMonthly m = new EmployeeMonthly(name, address, MonthlySalary);
          ListEmployeeMonthly.add(m);
        }

        //operation delete
        else if (Operations2 == 2) {
          print("Enter address of employee : ");
          String address = stdin.readLineSync()!;
          //search for employee
          for (int i = 0; i < ListEmployeeMonthly.length; i++) {
            if (ListEmployeeMonthly[i].address == address) {
              find = true;
              IdEmployee = i;
            }
          }
          if (find) {
            ListEmployeeMonthly.removeAt(IdEmployee);
            print("done\n");
          } else {
            print("Id of employee not found try again!\n");
          }
          IdEmployee = -1;
          find = false;
        }

        //operation display
        else {
          for (int i = 0; i < ListEmployeeMonthly.length; i++) {
            double salary = ListEmployeeMonthly[i].getMonthlySalary();
            print("[ Name :  ${ListEmployeeMonthly[i].getName()} "
                "| Id : ${ListEmployeeMonthly[i].getAddress()} "
                "| MonthlySalary : ${ListEmployeeMonthly[i].getMonthlySalary()} "
                "| yearlySalary : ${ListEmployeeMonthly[i].yearlySalary(salary)} "
                "| Total Salary : ${ListEmployeeMonthly[i].Raise(salary)} ]");
          }
          print('');
        }
      } else {
        //operation insert
        if (Operations2 == 1) {
          print("Enter name of employee : ");
          String name = stdin.readLineSync()!;
          print("Enter address of employee : ");
          String address = stdin.readLineSync()!;
          print("Enter DaySalary of employee : ");
          double DaySalary = double.parse(stdin.readLineSync()!);
          EmployeeDaily m = new EmployeeDaily(name, address, DaySalary);
          ListEmployeeDaily.add(m);
        }

        //operation delete
        else if (Operations2 == 2) {
          print("Enter address of employee : ");
          String address = stdin.readLineSync()!;
          //search for employee
          for (int i = 0; i < ListEmployeeDaily.length; i++) {
            if (ListEmployeeDaily[i].address == address) {
              find = true;
              IdEmployee = i;
            }
          }
          if (find) {
            ListEmployeeDaily.removeAt(IdEmployee);
            print("done\n");
          } else {
            print("Id of employee not found try again!\n");
          }
          IdEmployee = -1;
          find = false;
        }

        //operation display
        else {
          for (int i = 0; i < ListEmployeeDaily.length; i++) {
            double salary = ListEmployeeDaily[i].getDailySalary();
            print("[ Name :  ${ListEmployeeDaily[i].getName()} "
                "| Id : ${ListEmployeeDaily[i].getAddress()} "
                "| DailySalary : ${ListEmployeeDaily[i].getDailySalary()} "
                "| yearlySalary : ${ListEmployeeDaily[i].yearlySalary(salary)} "
                "| Total Salary : ${ListEmployeeDaily[i].Raise(salary)} ]");
          }
          print('');
        }
      }
    } else if (Operations1 == 0) {
      quit = true;
    } else {
      print("Sorry, try again!");
    }
  } while (!quit);
  print("Thanks !");
}
