import 'package:flutter/material.dart';

class Lab53 extends StatefulWidget {

  Lab53({super.key});

  @override
  State<Lab53> createState() => _Lab53State();
}

class _Lab53State extends State<Lab53> {
  bool showtext = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  String selectedCountry = 'India';
  List<String> countries = ['India', 'USA', 'Canada', 'UK', 'Australia'];

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
                obscureText: showtext,
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter password",
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      showtext = !showtext;
                    });
                  }, icon: showtext?Icon(Icons.visibility_off):Icon(Icons.visibility)),
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
