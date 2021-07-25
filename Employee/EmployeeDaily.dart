import 'Employee.dart';

class EmployeeDaily extends Employee {
  double DailySalary = 0;

  EmployeeDaily(String name, String address, double DailySalary)
      : super(name, address) {
    this.DailySalary = DailySalary;
  }

  void setDailySalary(double DailySalary) {
    if (DailySalary > 0) {
      this.DailySalary;
    }
  }

  double getDailySalary() {
    return DailySalary;
  }

  @override
  double yearlySalary(double salary) {
    return salary * 30 * 12;
  }

  double Raise(double salary) {
    double year = salary * 30 * 12;
    double raise = year * 5 / 100;
    return year + raise;
  }
}
