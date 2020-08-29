class Employee {
  int _id;
  double _salary;
  String _name;

  Employee(this._id, this._name, this._salary) {
    // this._id = id;
    // this._salary = salary;
    // this._name = name;
  }

  set id(int id) {
    this._id = id;
  }

  set salary(double salary) {
    this._salary = salary;
  }

  set name(String name) {
    this._name = name;
  }

  int get id => this._id;

  double get salary => this._salary;

  String get name => this._name;
}
