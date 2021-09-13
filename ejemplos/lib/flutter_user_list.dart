import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const UserListApp());

class UserListApp extends StatelessWidget {
  const UserListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('User List App')),
        body: const UserList(),
      ),
    );
  }
}

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class User {
  String fullname = '';
  String username = '';
  String photoURL = '';

  User(this.fullname, this.username, this.photoURL);
  User.fromJSON(Map<String, dynamic> json) {
    fullname = "${json['name']['first']} ${json['name']['last']}";
    username = json['login']['username'].toString();
    photoURL = json['picture']['medium'].toString();
  }
}

class _UserListState extends State<UserList> {
  bool loading = true;
  List<User> users = [];

  @override
  void initState() {
    _loadUsers();
    super.initState();
  }

  // ignore: avoid_void_async
  void _loadUsers() async {
    final response =
        await http.get(Uri.parse('https://randomuser.me/api/?results=20'));
    final json = convert.jsonDecode(response.body);
    final List<User> _users = [];

    for (final Map<String, dynamic> jsonUser in json['results']) {
      _users.add(User.fromJSON(jsonUser));
    }

    setState(() {
      users = _users;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(users[index].fullname),
          subtitle: Text(users[index].username),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(users[index].photoURL),
          ),
        );
      },
      itemCount: users.length,
    );
  }
}
