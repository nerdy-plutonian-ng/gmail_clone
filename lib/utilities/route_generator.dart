import 'package:flutter/material.dart';
import '../routes/mails_page.dart';
import '../routes/mail_page.dart';

MaterialPageRoute generateRoute(RouteSettings routeSettings) {
  switch(routeSettings.name){
    case '/':
      return MaterialPageRoute(builder: (_) => const MailsPage());
    case '/mail':
      return MaterialPageRoute(builder: (_) => const MailPage());
    default:
      return MaterialPageRoute(builder: (_) => const MailsPage());
  }
}