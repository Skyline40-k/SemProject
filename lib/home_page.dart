import 'package:flutter/material.dart';
import 'package:flutter_website/c.dart';
import 'package:flutter_website/feedback_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('Welcom To Students Portal',
              style: TextStyle(
                color: Colors.green,
                fontSize: 65,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w900,
                shadows: [
                  Shadow(
                    offset:
                        Offset(10.0, 10.0), // Horizontal and vertical offset
                    blurRadius: 5.0, // Blur radius
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                  ),
                ],
              )),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 5, right: 1250),
          child: Text('Dear Students,',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Lato',
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: Text(
              'As you embark on using our new online feedback system, we want to remind you that with the privilege of providing feedback comes great responsibility. Your insights and suggestions are invaluable in helping us enhance your educational experience, and we trust you to use this platform wisely.'
              'Please remember that accurate and honest feedback is essential for us to make meaningful improvements. Misuse of this system, such as submitting incorrect feedback or false complaints, can undermine our efforts and impact the community negatively.'
              'We encourage you to use your feedback constructively and with integrity. Your thoughtful and truthful input will help us ensure that our system serves you better and fosters a positive learning environment.'
              'Thank you for your cooperation and commitment to maintaining the integrity of this process.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Lato',
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Stack(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 225,
                  height: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          elevation: 10,
                          shadowColor: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FeedForm()));
                      },
                      child: Text('Feedback Form',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w900)))),
              SizedBox(
                  width: 225,
                  height: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          elevation: 10,
                          shadowColor: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FeedbackForm()));
                      },
                      child: Text('Complaint',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w900)))),
              SizedBox(
                  width: 225,
                  height: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          elevation: 10,
                          shadowColor: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FeedbackForm()));
                      },
                      child: Text('History',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w900)))),
            ],
          ),
          Stack(children: [
            Padding(
                padding: EdgeInsets.only(top: 42),
                child: Image.asset(
                  'assets/Images/Ellipse 3.png',
                  height: 350,
                  width: 350,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 550),
              child: Image.asset(
                'assets/Images/Man2 illusration.png',
                height: 350,
                width: 200,
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 225,
                    height: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 10,
                            shadowColor: Colors.grey),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeedForm()));
                        },
                        child: Text('Progress',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w900)))),
                SizedBox(
                    width: 225,
                    height: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 10,
                            shadowColor: Colors.grey),
                        onPressed: () {},
                        child: Text('Withdraw',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w900)))),
              ],
            ),
          ),
          Stack(children: [
            Padding(
                padding: EdgeInsets.only(top: 40, left: 1190),
                child: Image.asset(
                  'assets/Images/Ellipse 2.png',
                  height: 350,
                  width: 350,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 1300),
              child: Image.asset(
                'assets/Images/Woman2 illustration.png',
                height: 350,
                width: 200,
              ),
            ),
          ]),
        ]),
      ],
    ));
  }
}
