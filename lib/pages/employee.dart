import 'package:flutter/material.dart';
import '../models/employee_model.dart';
class Employee extends StatelessWidget {
  //dummy data
  
  final data = [
    EmployeeModel(
      id: '1',
      employeeName: "Tiger Woo",
      employeeSalary: "3200000",
      employeeAge:"32",
      profileImage:""
    ),
    EmployeeModel(
       id:'2',
      employeeName:"Luci Liu",
      employeeSalary:"3000000",
      employeeAge:"26",
      profileImage:""
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Data Pegawa"),
      ),
      body:ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i){
          return Card(
            elevation: 8,
            child: ListTile(
              title: Text(
                data[i].employeeName,
                style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),
            ),
            subtitle:
              Text("Umur : ${data[i].employeeAge}"),
            trailing:
              Text("\$${data[i].employeeSalary}"),
          ),
          
        );
      
      },
    ),
 );
    
  }
}