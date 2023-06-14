import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/email.dart';

class emailwidget extends StatelessWidget {
    final Email email;
    final Function onTap;
    final Function onSwipe;
    final Function onLongPress;

const emailwidget({
  Key? key,
  required this.email,
  required this.onTap,
  required this.onSwipe,
  required this.onLongPress
}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(email.id);
        
      },
      onLongPress: () {
        onLongPress(email.id);
      },
      onTap: (){
        onTap(email);

      },
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 10,
                decoration:  BoxDecoration(
                  color:  email.read ? Colors.transparent:Color.fromARGB(255, 228, 4, 4) ,
                  shape: BoxShape.circle
                  
                ),
              )),
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(email.dateTime.toString().substring(0,15)),
                    Text(email.from, ),
                    Text(email.subject)
                  ],
                ) )
          ],
        ),
      ),
    );
  }
}