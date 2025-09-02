import 'package:flutter/material.dart';

class Lab61 extends StatefulWidget {

  Lab61({super.key});

  @override
  State<Lab61> createState() => _Lab61State();
}

class _Lab61State extends State<Lab61> {
  final formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Validation"),
        ),
        body: Center(
          child: Form(
            key: formKey,
            child: Container(
              width: 500,
              child: Column(
                children: [
                  Text("Email Address"),
                  TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter email",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      final emailPattern=RegExp(r'^[\w.-]+@[\w]+\.+[\w]{2,4}$');
                      if(value == null || value.isEmpty){
                        return "enter email address";
                      }
                      else if(!emailPattern.hasMatch(value)){
                        return "Enter proper email address";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                  Text("Password"),
                  TextFormField(
                    obscureText: showPassword,
                    controller: _password,
                    decoration: InputDecoration(
                      suffix: IconButton(onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      }, icon: showPassword? Icon(Icons.visibility_off) : Icon(Icons.visibility)),
                      labelText: "Password",
                      hintText: "Enter password",
                      border: OutlineInputBorder(),
                    ),
                    validator:  (value) {
                      final passwordPattern = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
                      if(value == null || value.isEmpty ){
                        return "Please enter password";
                      }
                      else if(value.length < 8){
                        return "Password must be of 8 characters or more";
                      }
                      else if(!passwordPattern.hasMatch(value)){
                        return "invalid format";
                      }
                      else{
                        return null;
                      }
                    },
                  ),

                  ElevatedButton(onPressed: () {
                    if(formKey.currentState!.validate()){
                      print("Form Succesfully submited");
                    }
                  }, child: Text("Submit"))
                ],
              ),
            ),
          ),
        ));
  }
}
