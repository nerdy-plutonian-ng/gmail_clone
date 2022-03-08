import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import '../utilities/datasource.dart';

class MailsPage extends StatelessWidget {
  const MailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Expanded(child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: background,
                  title: Container(

                    padding: const EdgeInsets.symmetric(
                        vertical: 4, horizontal: 16),
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(32)),
                    child: Row(
                      children: [
                        Icon(Icons.menu),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search in emails',

                            ),
                          ),
                        )),
                        CircleAvatar(
                          backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                          backgroundColor: Colors.transparent,
                        )
                      ],
                    ),
                  ),
                ),
                SliverList(delegate: SliverChildBuilderDelegate(context,index){
                  return(Container);
                }),
                ListView.builder(
                  itemCount: mails.length,
                  itemBuilder: (_,index){
                  return ListTile();
                },)
              ],
            )),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(color: primaryLight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(32)),
                              child: const Icon(
                                Icons.mail,
                                size: 32,
                              )),
                          Positioned(
                            left: 32,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.red[900],
                                  borderRadius: BorderRadius.circular(32)),
                              child: const Text(
                                '99+',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Text('Mail',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.video_call,
                        size: 32,
                      ),
                      Text(
                        'Meet',
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}