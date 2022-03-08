import 'package:flutter/material.dart';
import '../utilities/colors.dart';

class MailsPage extends StatelessWidget {
  const MailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: primaryLight
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.mail,size: 32,),
                    Text('Mail')
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.video_call,size: 32,),
                    Text('Meet')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
