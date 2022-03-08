import 'package:flutter/material.dart';
import '../utilities/colors.dart';

class MailPage extends StatelessWidget {
  const MailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            decoration: BoxDecoration(
              color: primaryLight
            ),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.mail),
                    Text('Mail')
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.video_call),
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
