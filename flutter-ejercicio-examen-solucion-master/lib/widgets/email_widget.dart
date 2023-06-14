import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/email.dart';
import '../model/carro.dart';

class EmailWidget extends StatelessWidget {
  final Carro carro;
  final Function onTap;
  /*
  final Function onSwipe;
  final Function onLongPress;
*/
  const EmailWidget(
      {Key? key,
      required this.carro,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
   /*     onSwipe(email.id);*/
      },
      onLongPress: () {
      /*  onLongPress(email.id);*/
      },
      onTap: () {
        onTap(carro);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
    
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(carro.dateTime.toString().substring(0, 10),
                      style: dateTextStyle),
                  Text(carro.description, style: fromTextStyle),
                  Text(carro.model, style: subjectTextStyle),
                ],

              ),
            )
       
          ],
        ),
      ),
    );
  }
}
