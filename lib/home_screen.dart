import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //default tab controller is used insted of scafold and material app
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // App bar is here
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          // bottom tabs of App bar
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Cheats',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            indicatorColor: Colors.white,
          ),
          // action buttons search and more
          actions: [
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(width: 0),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
                itemBuilder: ((context) => [
                      const PopupMenuItem(value: '1', child: Text('New group')),
                      const PopupMenuItem(
                          value: '2', child: Text('New Broudcost')),
                      const PopupMenuItem(
                          value: '3', child: Text('Starred measig')),
                      const PopupMenuItem(
                          value: '4', child: Text('Whatsapp Web')),
                      const PopupMenuItem(value: '5', child: Text('Settings')),
                    ])),
            const SizedBox(width: 3),
          ],
        ),
        // Tab bar view
        body: TabBarView(
          children: [
            // cheatttttttttttttttttttttt
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://media.licdn.com/dms/image/D5603AQEtzDqS5zXgjw/profile-displayphoto-shrink_200_200/0/1704164616056?e=2147483647&v=beta&t=SIs1Wt0g9XV1gnNebxeDShOJNiROEJkNok4PE4YcANM'),
                    ),
                    title: Text('Tanseer Husssain'),
                    subtitle: Text('Where are you?'),
                    trailing: Text('1:43 pm'),
                  );
                }),
            // statussssssssssssssssssssss
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          )),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(index / 2 == 0
                            ? 'https://media.licdn.com/dms/image/D5603AQEtzDqS5zXgjw/profile-displayphoto-shrink_200_200/0/1704164616056?e=2147483647&v=beta&t=SIs1Wt0g9XV1gnNebxeDShOJNiROEJkNok4PE4YcANM'
                            : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOe6BIQaMH_C7k69nk6xqH_cjG6XVUeCN5Hw&usqp=CAU'),
                      ),
                    ),
                    title: Text(index / 2 == 0 ? 'My Status' : 'Arsalan Nasir'),
                    subtitle: Text(index / 2 == 0
                        ? 'yesterday 2:10 am'
                        : 'Today  2:35 pm'),
                    trailing: Text(index / 2 == 0 ? '...' : '1:43 pm'),
                  );
                }),
            // callsssssssssssssssssssssssss
            ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('images/sajjad.jpg'),
                    ),
                    title: const Text('Sajjad Hassan'),
                    subtitle: Row(
                      children: [
                        const Icon(
                          Icons.call_received,
                          color: Colors.red,
                        ),
                        Text(index / 2 == 0
                            ? 'Yesterday 12:55 pm'
                            : 'You have Missed Video Call'),
                      ],
                    ),
                    trailing: Icon(
                        index / 2 == 0 ? Icons.call : Icons.missed_video_call),
                  );
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: const Icon(Icons.chat),
            backgroundColor: Colors.teal,
            onPressed: () {}),
      ),
    );
  }
}
