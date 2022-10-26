import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Center(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter your name",
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'First Name should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    //icon: const Icon(Icons.person),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid phone number';
                      }
                      return null;
                    },
                  ),
                  TextButton(onPressed: () {
                    
                  }, child: Text('Submit'))
                ],
              )),
        ));
  }
}
