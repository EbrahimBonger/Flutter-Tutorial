import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:async';
import 'employee.dart';

// Must follow pattern for a Bloc
// TODO: imports

// TODO: Lists
// TODO: stremController
// TODO: stream and sink getter
// TODO: constructor - add data, listen to the changes
// TODO: core functions
// TODO: dispose
class EmployeeBloc {
  // sink to add in pipe
  // stream to get data from pipe
  // pipe = data flow
  List<Employee> _employeeList = [
    Employee(001, "John", 100.0),
    Employee(002, "David", 200.0),
    Employee(003, "Alex", 300.0)
  ];
  // it's controlling list of employee
  // Exercise: allow this streamController to add additional employee(s)
  final _employeeListStreamController = StreamController<List<Employee>>();

  // They're controlling an employee salary
  final _employeeSalaryIncreamentStreamController =
      StreamController<Employee>();
  final _employeeSalaryDecreamentStreamController =
      StreamController<Employee>();

  // getters: get has to specify its type, which in this case Stream<List<Employe>>(back to Employee class for a reference)
  // In this getter, we are controlling what is coming out
  Stream<List<Employee>> get employeeListStream =>
      _employeeListStreamController.stream;

  // In this getter, we are controlling what is ging in
  StreamSink<List<Employee>> get employeeSink =>
      _employeeListStreamController.sink;

  // In these setter, we are controlling what is going in as well since it's using Sink object;
  StreamSink<Employee> get employeeSalaryIncreamentStream =>
      _employeeSalaryIncreamentStreamController.sink;

  StreamSink<Employee> get employeeSalaryDecreamentStream =>
      _employeeSalaryDecreamentStreamController.sink;

  // Done: create a constructor
  EmployeeBloc() {
    // laod the listes to the employeeListStream Controller
    _employeeListStreamController.add(_employeeList);
    // Listen to the changes and make an approprite change using the method specified
    _employeeSalaryIncreamentStreamController.stream.listen(_increamentSalary);
    _employeeSalaryDecreamentStreamController.stream.listen(_decreamentSalary);
  }

  // Done: Core functions
  _increamentSalary(Employee employee) {
    //employee.salary
    double increamentSalary = employee.salary * 20 / 100;
    // mention the desired employee in the list

    _employeeList[employee.id - 1].salary += increamentSalary;
    // this is an important method to achive this methode, otherwise the Listner cannot listen
    employeeSink.add(_employeeList);
  }

  _decreamentSalary(Employee employee) {
    //employee.salary
    double decreamentSalary = employee.salary * 20 / 100;
    employee.salary -= decreamentSalary;
    _employeeList[employee.id - 1].salary += decreamentSalary;

    // this is an important method to achive this methode, otherwise the Listner cannot listen
    employeeSink.add(_employeeList);
  }

  // Done: dispose, the order of operation does not matter
  @required
  void dispese() {
    _employeeListStreamController.close();
    _employeeSalaryDecreamentStreamController.close();
    _employeeSalaryIncreamentStreamController.close();
  }
}
