import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController namecontrolller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  TextEditingController dobcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
        appBar: AppBar(
          title: Text("Form validation Demo"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              TextFormField(
                controller: namecontrolller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your full name',
                  labelText: 'Name',
                ),
                onFieldSubmitted: (value) {
                  setState(() {
                    namecontrolller.text = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: phonecontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
                onFieldSubmitted: (value) {
                  setState(() {
                    phonecontroller.text = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: dobcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                ),
                onFieldSubmitted: (value) {
                  setState(() {
                    dobcontroller.text = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid date';
                  }
                  return null;
                },
              ),
              new Container(
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  child: new ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      // It returns true if the form is valid, otherwise returns false
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                "Name:${namecontrolller.text}\n Phone:${phonecontroller.text}\n Dob:${dobcontroller.text}")));
                      }
                    },
                  )),
              SizedBox(height: 20,),
              Center(
                child: Column(
                  children: [
                    namecontrolller.text.isEmpty?Text("No data"):Text( "Name:  ${namecontrolller.text}"),
                    phonecontroller.text.isEmpty?Text("No data"):Text("Phone:  ${phonecontroller.text}"),
                    dobcontroller.text.isEmpty?Text("No data"):Text("Dob:  ${dobcontroller.text}"),
                  ],

                ),
              )
            ],
          ),
        ));
  }
}


