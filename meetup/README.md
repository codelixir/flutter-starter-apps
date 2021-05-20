# MeetUp

A Flutter project to understand the basics of Firebase by creating Flutter apps for Android and iOS that use Firebase Auth and Firestore. I made this during a [workshop](https://firebase.google.com/codelabs/firebase-get-to-know-flutter#0?utm_source=google-io21&utm_medium=referral&utm_campaign=io21-resources)
as a part of [Google I/O 2021](https://events.google.com/io/).

## About the App

The app has a very basic interface which lets you RSVP to an event after you sign in/sign up via e-mail. Once signed in, you can have an open discussion with everyone who has signed in. You can select whether or not you are attending the event, and the number of tentative attendees will be displayed on the discussion page.

Note that you need to install a config file from your Firebase project if you wish to try this out since I have not included that file in git. The file is supposed to be at the path
```
android/app/google-services.json
```
for android. For iOS you need to set-up the config file using XCode, and for Web you have to make appropriate changes in `index.html`
