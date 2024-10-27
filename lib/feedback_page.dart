import 'package:flutter/material.dart';
class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  String _selectedDate = 'Date of Complaint';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _complaintRegardingController = TextEditingController();
  final TextEditingController _complaintNatureController = TextEditingController();
  final TextEditingController _complaintTargetController = TextEditingController();
  final TextEditingController _complaintDetailsController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to prevent memory leaks
    _nameController.dispose();
    _emailController.dispose();
    _complaintRegardingController.dispose();
    _complaintNatureController.dispose();
    _complaintTargetController.dispose();
    _complaintDetailsController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _selectedDate = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Process the form data, e.g., send it to a server
      print('Date of Complaint: $_selectedDate');
      print('Name: ${_nameController.text}');
      print('Email: ${_emailController.text}');
      print('Complaint Regarding: ${_complaintRegardingController.text}');
      print('Nature of Complaint: ${_complaintNatureController.text}');
      print('Complaint Against: ${_complaintTargetController.text}');
      print('Complaint Details: ${_complaintDetailsController.text}');

      // Optionally, display a success message or navigate to another screen
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Feedback submitted successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Feedback and Complaint Form'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Date Input
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: _selectedDate,
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (_selectedDate == 'Date of Complaint') {
                        return 'Please select the date of the complaint';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Name Input
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              // Email Input
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Your Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              // Complaint Regarding Input
              TextFormField(
                controller: _complaintRegardingController,
                decoration: InputDecoration(
                  labelText: 'Complaint Regarding',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please specify what the complaint is regarding';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              // Nature of Complaint Input
              TextFormField(
                controller: _complaintNatureController,
                decoration: InputDecoration(
                  labelText: 'Nature of Complaint',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the nature of the complaint';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              // Complaint Against Input
              TextFormField(
                controller: _complaintTargetController,
                decoration: InputDecoration(
                  labelText: 'Complaint Against',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please specify who the complaint is against';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              // Complaint Details Input
              TextFormField(
                controller: _complaintDetailsController,
                decoration: InputDecoration(
                  labelText: 'Details of Complaint',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please provide details of the complaint';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              // Submit Button
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}