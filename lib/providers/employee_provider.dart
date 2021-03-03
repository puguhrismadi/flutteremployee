import 'package:app_kos_kosan/models/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EmployeeProvider extends ChangeNotifier{
  //definisikan private variabel dengan tipe list dan valuenya menggunakan format Employeemodel
  List<EmployeeModel> _data = [];
  List<EmployeeModel> get dataEmployee => _data;

  Future<List<EmployeeModel>> getEmployee() async {
    final url ='http://employee-crud-flutter.daengweb.id/index.php';
    final response = await http.get(url);//lakukan request data
    
  }
}
