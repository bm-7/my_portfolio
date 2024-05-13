// "https://api.emailjs.com/api/v1.0/email/send"
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EmailMe extends StatefulWidget {
  const EmailMe({super.key});

  @override
  State<EmailMe> createState() => _EmailMeState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final msgController = TextEditingController();
Future sendEmail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const service_id = "service_1122o5u";
  const template_id = "template_bbrsagv";
  const user_id = "49fGi_fQZrsEXZige";

  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "service_id": service_id,
        "template_id": template_id,
        "user_id": user_id,
        "template_params": {
          "name": nameController.text,
          "Your_subject": subjectController.text,
          "message": msgController.text,
          "user_email": emailController.text
        }
      }));

  if (response.statusCode == 200) {
    nameController.clear();
    subjectController.clear();
    emailController.clear();
    msgController.clear();
  }

  return response.statusCode;
}

final _formKey = GlobalKey<FormState>();

class _EmailMeState extends State<EmailMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 500,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 16),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "eg.Gagan K M",
                  hintStyle:
                      const TextStyle(color: Colors.white, fontSize: 16)),
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Subject",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 16),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.subject_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "subject",
                  hintStyle:
                      const TextStyle(color: Colors.white, fontSize: 16)),
              controller: subjectController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a subject';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Email Address",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 16),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "abc@gmail.com",
                  hintStyle:
                      const TextStyle(color: Colors.white, fontSize: 16)),
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an email';
                } else if (!isValidEmail(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Message",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLength: 600,
              maxLines: 4,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Write message",
                  hintStyle:
                      const TextStyle(color: Colors.white, fontSize: 16)),
              controller: msgController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a message';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder())),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    sendEmail();
                  }
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isValidEmail(String email) {
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}
