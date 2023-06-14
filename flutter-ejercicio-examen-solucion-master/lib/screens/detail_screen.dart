import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/email.dart';
import '../model/carro.dart';

class DetailScreen extends StatelessWidget {
 
  final Carro carro;

  const DetailScreen({Key? key, required this.carro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(carro.model),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('From: ${carro.description}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(carro.model, style: subjectTextStyle),
              const SizedBox(height: 5.0),
              Text(carro.dateTime.toString().substring(0, 16), style: dateTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(carro.brand, style: bodyTextStyle),
            ],
          ),
        ));
  }
}
