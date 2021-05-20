import 'package:flutter/material.dart';
import 'package:meetup/screens/chat.dart';
import 'package:provider/provider.dart';

import 'package:meetup/services/authentication.dart';
import 'package:meetup/services/appstate.dart';
import 'package:meetup/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/images/header.png'),
          SizedBox(height: 8),
          IconAndDetail(Icons.calendar_today, 'September 5'),
          IconAndDetail(Icons.location_city, 'Kurukshetra'),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => Authentication(
              email: appState.email,
              loginState: appState.loginState,
              startLoginFlow: appState.startLoginFlow,
              verifyEmail: appState.verifyEmail,
              signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
              cancelRegistration: appState.cancelRegistration,
              registerAccount: appState.registerAccount,
              signOut: appState.signOut,
            ),
          ),
          Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          Header("What we'll be doing"),
          Paragraph(
            'IDK, probably just attedning online college.',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DiscussionPage()));
        },
      ),
    );
  }
}
