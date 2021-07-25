import 'Employee.dart';

class EmployeeMonthly extends Employee {
  double MonthlySalary = 0;

  EmployeeMonthly(String name, String address, double MonthlySalary)
      : super(name, address) {
    this.MonthlySalary = MonthlySalary;
  }

  void setMonthlySalary(double MonthlySalary) {
    if (MonthlySalary > 0) {
      this.MonthlySalary = MonthlySalary;
    }
  }

  double getMonthlySalary() {
    return MonthlySalary;
  }

  @override
  yearlySalary(double MonthlySalary) {
    return MonthlySalary * 12;
  }

  @override
  Raise(double MonthlySalary) {
    double yearlySala = MonthlySalary * 12;
    double raise = yearlySala * 10 / 100;
    return yearlySala + raise;
  }
}
