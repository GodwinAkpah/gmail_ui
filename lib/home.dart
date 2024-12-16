import 'package:flutter/material.dart';
import 'custom_bottom_nav_bar.dart';

class EmailUI extends StatefulWidget {
  @override
  _EmailUIState createState() => _EmailUIState();
}

class _EmailUIState extends State<EmailUI> {
  int _selectedIndex = 0;

  // List of emails
  final List<Map<String, String>> emails = [
    {
      'sender': 'bootcamp',
      'subject':
          'Notification from Free Data Engineering Bootcamp  fsdnfsjkdfsdfsdfsd dsfnsdjfls adfaifa',
      'date': '1:48 AM',
      'image': 'assets/beef.jpg',
    },
    {
      'sender': 'Arc',
      'subject': 'New Arc jobs - Senior React Native Developer',
      'date': 'Dec 10',
      'image': 'assets/burger.jpg',
    },
    {
      'sender': 'GitHub',
      'subject': '[GitHub] Your Dependabot alerts for the week...',
      'date': 'Dec 10',
      'image': 'assets/burger.jpg',
    },
    {
      'sender': 'LinkedIn',
      'subject': 'Don’t miss conversations in Python Developers...',
      'date': 'Dec 10',
      'image': 'assets/beef.jpg',
    },
    {
      'sender': 'Maigari Timothy',
      'subject': '[databo...] Timo test (PR #1)',
      'date': 'Dec 10',
      'image': 'assets/beef.jpg',
    },
    {
      'sender': 'Valohai MLOps Platform',
      'subject': '6 ways to boost Velocity in DS teams',
      'date': 'Dec 10',
      'image': 'assets/beef.jpg',
    },
    {
      'sender': 'Access Bank',
      'subject': 'AccessAlert Transaction Alert',
      'date': 'Dec 10',
      'image': 'assets/beef.jpg',
    },
  ];

  // Method to handle bottom navigation item selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Container(
              // margin: EdgeInsets.only(top: 2.0),
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26.withOpacity(0.05),
                    offset: Offset(2, 0),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Container(
                // margin: const EdgeInsets.all(2.0),
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 24,
                        color: Colors.black38,
                      ),
                    ),
                    // Search Field
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search in mail",
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            isDense: false,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 10.0),
                      child: CircleAvatar(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.asset('assets/beef.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Inbox'),
                ],
              ),
            ),

            // Email List Section
            Expanded(
              child: ListView.builder(
                itemCount: emails.length,
                itemBuilder: (context, index) {
                  final email = emails[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 2.0,
                      vertical: 2.0,
                    ),
                    child: Container(
                      // decoration: BoxDecoration(
                      //   color: Colors.white60,
                      // ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 2.0, vertical: 2.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white60,
                          backgroundImage: email['image'] != null
                              ? AssetImage(email['image']!)
                              : null,
                          child: email['image'] == null
                              ? Text(
                                  email['sender']![0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                )
                              : null,
                        ),
                        title: Text(
                          email['sender']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          email['subject']!,
                          // maxLines: 1,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              email['date']!,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 8),
                            Icon(
                              Icons.star_border,
                              size: 25,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              // Action for composing a new email
            },
            icon: Icon(Icons.edit),
            label: Text("Compose"),
            backgroundColor: Colors.grey[300],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
