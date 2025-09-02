import 'package:flutter/material.dart';

class Lab62 extends StatefulWidget {
  @override
  State<Lab62> createState() => _Lab62State();
}

class _Lab62State extends State<Lab62> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String gender = 'Male';
  bool agree = false;
  bool isChecked = false;

  String selectedCountry = 'India';
  List<String> countries = ['India', 'USA', 'Canada', 'UK', 'Australia'];
  List<String> selectedH = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text('Register',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text('Name'),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(border: OutlineInputBorder()),
                validator: (value) => value!.isEmpty ? 'Enter name' : null,
              ),
              SizedBox(height: 15),
              Text('Email'),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(border: OutlineInputBorder()),
                validator: (value) => value!.isEmpty ? 'Enter email' : null,
              ),
              SizedBox(height: 15),
              Text('Password'),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(border: OutlineInputBorder()),
                validator: (value) =>
                    value!.length < 6 ? 'Minimum 6 characters' : null,
              ),
              SizedBox(height: 15),
              Text('Gender'),
              Row(
                children: [
                  Radio(
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  Text('Male'),
                  Radio(
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
              SizedBox(height: 15),
              Text('Country'),
              DropdownButtonFormField(
                value: selectedCountry,
                items: countries.map(
                  (e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
              ),
              // DropdownButtonFormField(
              //   value: selectedCountry,
              //   items: countries.map((country) {
              //     return DropdownMenuItem(value: country, child: Text(country));
              //   }).toList(),
              //   onChanged: (value) {
              //     setState(() {
              //       selectedCountry = value!;
              //     });
              //   },
              // ),
              SizedBox(height: 15),
              Column(
                children: countries.map(
                  (country) {
                    return CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(country),
                      value: selectedH.contains(country),
                      onChanged: (bool? value) {
                        if (value!) {
                          setState(() {
                            selectedH.add(country);
                          });
                        } else
                          setState(() {
                            selectedH.remove(country);
                          });
                      },
                    );
                  },
                ).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && agree) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Form Submitted'),
                    ));
                  } else if (!agree) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('You must agree to the terms'),
                    ));
                  }
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
