abstract class Employee {
  String name = '';
  String address = '';

  Employee(String name, String address) {
    this.name = name;
    this.address = address;
  }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  void setAddress(String address) {
    this.address = address;
  }

  String getAddress() {
    return address;
  }

  double yearlySalary(double MonthlySalary);
  double Raise(double MonthlySalary);
}
