class Datamodel {
  List<String> sender;
  String subject;
  String snippet;
  // List<String> attachment;
  String avatarUrl;
  Datamodel(
      {required this.sender,
      required this.avatarUrl,
      required this.snippet,
      required this.subject});
}

// scaffolf 1 start
// return Scaffold(
//   appBar: AppBar(
//     backgroundColor: Colors.white,
//     elevation: 1,
//     title: TextField(
//       decoration: InputDecoration(
//         hintText: 'Search in mail',
//         prefixIcon: Icon(Icons.menu, color: Colors.grey),
//         border: InputBorder.none,
//       ),
//     ),
//     actions: [
//       CircleAvatar(
//         backgroundImage: AssetImage('assets/beef.jpg'),
//         radius: 16,
//       ),
//       SizedBox(width: 16),
//     ],
//   ),
//   body: ListView.builder(
//     itemCount: emails.length,
//     itemBuilder: (context, index) {
//       final email = emails[index];
//       return ListTile(
//         leading: CircleAvatar(
//           backgroundImage: AssetImage(email['image']!),
//         ),
//         title: Text(
//           email['sender']!,
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(email['subject']!),
//         trailing: Text(
//           email['date']!,
//           style: TextStyle(color: Colors.grey),
//         ),
//       );
//     },
//   ),
//   floatingActionButton: FloatingActionButton(
//     onPressed: () {},
//     child: Icon(Icons.edit),
//   ),
// );
// scaffold 1 ends
