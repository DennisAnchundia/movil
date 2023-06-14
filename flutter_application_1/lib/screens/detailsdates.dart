import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/email.dart';

class detailsdates extends StatelessWidget {
  final Email email;
  const detailsdates({super.key, required Email this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Email')),
      body: Container(
        padding: EdgeInsetsDirectional.all(40),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text('Form ${email.from}'),
            Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(email.subject),
            Text(email.dateTime.toString().substring(0, 10)),
            Divider(
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(email.body)
            
          ],
        ),
      ),
    );
  }
}
