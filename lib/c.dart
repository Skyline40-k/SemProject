import 'package:flutter/material.dart';

class FeedForm extends StatefulWidget {
  const FeedForm({super.key});

  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedForm> {
  String? _selectedFeedbackType;
  double _rating1 = 1;
  double _rating2 = 1;
  double _rating3 = 1;
  double _rating4 = 1;
  double _rating5 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Center(
                  child: Text('Feedback Form',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 60,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,
                        shadows: [
                          Shadow(
                            offset: Offset(
                                10.0, 10.0), // Horizontal and vertical offset
                            blurRadius: 5.0, // Blur radius
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                          ),
                        ],
                      )),
                ),
                const Text(
                  'We would love to hear your thoughts, suggestions, concerns or problems with anything so we can improve!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How is the mess food?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Rating:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: _rating1,
                      min: 1,
                      max: 5,
                      divisions: 4,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          _rating1 = value;
                        });
                      },
                    ),
                    Text('Rating: $_rating1'),
                    const SizedBox(height: 10),
                    Text(
                      'How is the mess cleanliness?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Rating:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: _rating2,
                      min: 1,
                      max: 5,
                      divisions: 4,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          _rating2 = value;
                        });
                      },
                    ),
                    Text('Rating: $_rating2'),
                    const SizedBox(height: 10),
                    Text(
                      'How is the mess culture?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Rating:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: _rating3,
                      min: 1,
                      max: 5,
                      divisions: 4,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          _rating3 = value;
                        });

                      },
                    ),
                    Text('Rating: $_rating3'),
                    const SizedBox(height: 10),
                    Text(
                      'Is the mess timing to your liking?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Rating:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: _rating4,
                      min: 1,
                      max: 5,
                      divisions: 4,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() {
                          _rating4 = value;
                        });

                      },
                    ),
                    Text('Rating: $_rating4'),
                    const SizedBox(height: 10),
                  ],
                ),
                Text(
                  'Is the staff good?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Rating:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Slider(
                  value: _rating5,
                  min: 1,
                  max: 5,
                  divisions: 4,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _rating5 = value;
                    });

                  },
                ),
                Text('Rating: $_rating5'),
                const SizedBox(height: 10),
              ]))),
    ));
  }
}
