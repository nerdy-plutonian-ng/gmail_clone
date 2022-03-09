import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import '../utilities/datasource.dart';
import '../widgets/mail_tile.dart';

class MailsPage extends StatefulWidget {
  const MailsPage({Key? key}) : super(key: key);

  @override
  State<MailsPage> createState() => _MailsPageState();
}

class _MailsPageState extends State<MailsPage> {

  var selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 16,),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 16),
              sliver: SliverAppBar(
                backgroundColor: background,
                title: Container(
                  padding:
                  const EdgeInsets.only(left : 16,right:16),
                  decoration: BoxDecoration(
                      color: primaryLight,
                      borderRadius: BorderRadius.circular(32)),
                  child: Row(
                    children: const [
                      Icon(Icons.menu,color: Colors.black,),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search in emails',
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: CircleAvatar(
                          backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                          backgroundColor: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
                floating: true,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) => MailTile(mail: mails[index]),
                  childCount: mails.length,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},
          backgroundColor: primary,
          label: const Text('Compose',style: TextStyle(fontWeight: FontWeight.bold),),
          icon: const Icon(Icons.edit_outlined)),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            selectedTabIndex = index;
          });
        },
        currentIndex: selectedTabIndex,
        backgroundColor: primaryLight,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
        BottomNavigationBarItem(icon: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
          decoration: BoxDecoration(
              color: selectedTabIndex == 0 ? primary : primaryLight,
              borderRadius: BorderRadius.circular(16)),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Icon(Icons.mail,size: 32,),
              Positioned(
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text(
                    '99+',
                    style: TextStyle(
                        fontSize: 8, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),label: 'Mail'),
          BottomNavigationBarItem(icon: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            decoration: BoxDecoration(
                color: selectedTabIndex == 1 ? primary : primaryLight,
                borderRadius: BorderRadius.circular(16)),
            child: Icon(Icons.video_call,size: 32,),
          ),label: 'Meet'),
      ],),
    );
  }
}
