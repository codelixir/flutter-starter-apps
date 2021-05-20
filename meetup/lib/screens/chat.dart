import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:meetup/widgets/widgets.dart';
import 'package:meetup/widgets/guestbook.dart';
import 'package:meetup/widgets/attending.dart';
import 'package:meetup/services/authentication.dart';
import 'package:meetup/services/appstate.dart';

class DiscussionPage extends StatefulWidget {
  @override
  _DiscussionPageState createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discussion'),
      ),
      body: Consumer<ApplicationState>(
        builder: (context, appState, _) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (appState.attendees >= 2)
              Paragraph('${appState.attendees} people going')
            else if (appState.attendees == 1)
              Paragraph('1 person going')
            else
              Paragraph('No one going'),
            if (appState.loginState == ApplicationLoginState.loggedIn) ...[
              AttendingSelection(
                  state: appState.attending,
                  onSelection: (attending) => appState.attending = attending),
              Header('Discussion'),
              GuestBook(
                addMessage: (String message) =>
                    appState.addMessageToGuestBook(message),
                messages: appState.guestBookMessages,
              ),
            ] else ...[
              Header('Discussion'),
              Paragraph('You must login first to join the discussion.')
            ]
          ],
        ),
      ),
    );
  }
}
