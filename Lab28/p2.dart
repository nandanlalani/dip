import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(ContactUsScreen());
}

class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  final String apiUrl = "https://68b9183db71540504329f553.mockapi.io/add_data_demo";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contact Us")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                buildTextField(controller: nameController, label: "Name"),
                buildTextField(
                    controller: emailController,
                    label: "Email",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) return "Enter Email";
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return "Enter a valid Email";
                      }
                      return null;
                    }),
                buildTextField(
                  controller: messageController,
                  label: "Message",
                  maxLines: 3,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: submitData,
                  child: Text("Send"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> submitData() async {
    if (_formKey.currentState!.validate()) {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'name': nameController.text,
          'email': emailController.text,
          'message': messageController.text,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Message sent successfully!")),
        );

        nameController.clear();
        emailController.clear();
        messageController.clear();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to send message.")),
        );
      }
    }
  }

  Widget buildTextField({
    required TextEditingController controller,
    required String label,
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: validator ??
                (value) =>
            value == null || value.isEmpty ? 'Enter $label' : null,
      ),
    );
  }
}
