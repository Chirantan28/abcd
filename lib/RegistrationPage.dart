import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/Splash.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/login.dart';

import 'package:flutter_application_2/orderer.dart';

import 'package:flutter_application_2/canteens.dart';

import 'package:flutter_application_2/xerox.dart';

import 'package:flutter_application_2/delivery.dart';

import 'package:flutter_application_2/stationary.dart';
// class RegistrationPage extends StatelessWidget {
//   final TextEditingController usnController = TextEditingController();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController branchController = TextEditingController();
//   final TextEditingController mobileController = TextEditingController();
//   String selectedGender = 'Male';
//   DateTime selectedDate = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Register')),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: EdgeInsets.all(20),
//             child: Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.shade300,
//                     blurRadius: 10,
//                     offset: Offset(0, 5),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Registration Form',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueAccent,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   TextField(
//                     controller: usnController,
//                     decoration: InputDecoration(
//                       labelText: 'USN',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextField(
//                     controller: nameController,
//                     decoration: InputDecoration(
//                       labelText: 'Name',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextField(
//                     controller: branchController,
//                     decoration: InputDecoration(
//                       labelText: 'Branch',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   TextField(
//                     controller: mobileController,
//                     decoration: const InputDecoration(
//                       labelText: 'Mobile Number',
//                       border: OutlineInputBorder(),
//                       // keyboardType: TextInputType.phone,
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'Gender',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   DropdownButtonFormField<String>(
//                     value: selectedGender,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                     items: ['Male', 'Female', 'Other']
//                         .map((gender) => DropdownMenuItem(
//                               child: Text(gender),
//                               value: gender,
//                             ))
//                         .toList(),
//                     onChanged: (value) {
//                       selectedGender = value!;
//                     },
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'Date of Birth',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: TextField(
//                           enabled: false,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                             hintText: '${selectedDate.toLocal()}'.split(' ')[0],
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       ElevatedButton(
//                         onPressed: () async {
//                           DateTime? pickedDate = await showDatePicker(
//                             context: context,
//                             initialDate: selectedDate,
//                             firstDate: DateTime(2000),
//                             lastDate: DateTime.now(),
//                           );
//                           if (pickedDate != null &&
//                               pickedDate != selectedDate) {
//                             selectedDate = pickedDate;
//                           }
//                         },
//                         child: Text('Select Date'),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Logic for registering the user
//                         Navigator.pop(context);
//                       },
//                       style: ElevatedButton.styleFrom(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 32, vertical: 12),
//                       ),
//                       child: Text('Register'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController usnController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController branchController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  String selectedGender = 'Male';
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7A4D8C), Colors.purple.shade100],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/logo.jpg', // Replace with your image path
                      width: 170, // Adjust the size as needed
                      height: 170, // Adjust the size as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5DC),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      controller: usnController,
                      decoration: InputDecoration(
                        labelText: 'USN',
                        labelStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5DC),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5DC),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      controller: branchController,
                      decoration: InputDecoration(
                        labelText: 'Branch',
                        labelStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5DC),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      controller: mobileController,
                      decoration: InputDecoration(
                        labelText: 'Mobile Number',
                        labelStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5DC),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: DropdownButton<String>(
                      value: selectedGender,
                      items: ['Male', 'Female', 'Other']
                          .map((gender) => DropdownMenuItem(
                                child: Text(
                                  gender,
                                  style: TextStyle(color: Colors.black),
                                ),
                                value: gender,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                      isExpanded: true,
                      underline: Container(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5DC),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Date of Birth: ${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: selectedDate,
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now(),
                            );
                            if (pickedDate != null &&
                                pickedDate != selectedDate) {
                              setState(() {
                                selectedDate = pickedDate;
                              });
                            }
                          },
                          child: Text('Select Date'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      foregroundColor: const Color.fromARGB(255, 22, 21, 21),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
