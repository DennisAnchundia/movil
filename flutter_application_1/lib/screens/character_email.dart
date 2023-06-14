import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/backend.dart';
import 'package:flutter_application_1/screens/detailsdates.dart';
import 'package:flutter_application_1/widget/emailwidget.dart';

import '../model/email.dart';

class CharacterWidget extends StatefulWidget {
  const CharacterWidget({super.key});

  @override
  State<CharacterWidget> createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<CharacterWidget> {

  var emails = Backend().get_Emails();

  void markEmailAsRead( int id ){
    Backend().markEmailAsRead(id);
    setState(() {
      emails = Backend().get_Emails();
    });
  }

  void deleteEmail( int id ){
    Backend().deleteEmail(id);
    setState(() {
      emails = Backend().get_Emails()
;    });
  }
void showEmaildDetails( Email email){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return detailsdates(email: email);
  },));
  Backend().markEmailAsRead(email.id);
  setState(() {
    emails= Backend().get_Emails();
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hola'),),
      body: ListView.separated(
        itemCount: emails.length,
        separatorBuilder: (BuildContext context, int index) =>const Divider(
          color: Colors.black,
          indent: 40.0,
          endIndent: 20.0,
        ) ,
        itemBuilder:( BuildContext context, int index) =>(
          emailwidget(

            email:  emails[index],
            onLongPress: markEmailAsRead ,
            onTap: showEmaildDetails,
            onSwipe: deleteEmail ,
          )),
      ),
    );
    
  }
}