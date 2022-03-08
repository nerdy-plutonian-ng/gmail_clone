import '../models/mail.dart';

final mails = [
  Mail(id: 'M001', sender: 'Google Maps', subject: 'Invoice for January',
      message: 'Please find attacked your invoice for the month of January.',
      date: DateTime(2022,1,31), starred: false, attachment: true, promo: false),
  Mail(id: 'M002', sender: 'Jumia Ghana', subject: 'Item Dispatched',
      message: 'Your item, with Order# 43353 has been dispatched for delivery.',
      date: DateTime(2022,2,1), starred: true, attachment: false, promo:
      false),
  Mail(id: 'M003', sender: '', subject: 'Microsoft, Nokia, Glovo, Apple,'
      ' Samsung',
      message: '',
      date: DateTime(2022,2,13), starred: false, attachment: false, promo:
      true),
  Mail(id: 'M004', sender: 'Willy Wonka', subject: 'Invitation for Factory '
      'Tour',
      message: 'Hello, Sam. Your request for a factory tour has being '
          'approved.',
      date: DateTime(2022,3,1), starred: false, attachment: true, promo:
      false),
  Mail(id: 'M005', sender: 'Disney Inc', subject: 'Offer for Mobile Developer',
      message: 'Hello, Michael. You have been offered a position at Disney '
          'Inc at salary of \$250,000/yr',
      date: DateTime(2022,3,6), starred: true, attachment: false, promo:
      false),
];