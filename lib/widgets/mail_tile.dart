import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/mail.dart';
import '../utilities/colors.dart';

class MailTile extends StatelessWidget {
  const MailTile({Key? key, required this.mail}) : super(key: key);

  final Mail mail;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            if (mail.sender.isNotEmpty)
              CircleAvatar(
                backgroundColor: colors[Random().nextInt(colors.length)],
                child: Text(mail.sender[0],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
              ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 8, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    mail.sender,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
                  ),
                  Text(
                    mail.subject,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                  ),
                  Text(
                    mail.message,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                  ),
                ],
              ),
            )),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(DateFormat.yMMMd().format(mail.date).split(',').first),
                const Icon(Icons.star_border)
              ],
            )
          ],
        ),
      ),
    );
  }
}
