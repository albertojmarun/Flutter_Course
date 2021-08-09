import 'package:flutter/material.dart';

// Flutter - User Profile
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            "User Profile",
          ),
          backgroundColor: Color.fromARGB(40, 0, 255, 0),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Header(
              username: 'albertojmarun',
              height: 180,
              backgroundPhoto: 'assets/avila_background.jpg',
              userPhoto: 'assets/ajmi_profile_picture.png',
            ),
            Connections(
              followersNumber: 2080,
              followingNumber: 1020,
            ),
            Description(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas facilisis risus ut pulvinar posuere. Fusce mollis varius mi, a gravida erat venenatis sit amet. Phasellus in felis aliquam, ullamcorper est a, porttitor felis. In semper nunc erat, non venenatis purus auctor id. Nulla tempus, nunc at efficitur ultrices, felis ante feugiat sapien, a tristique ex diam porttitor neque. Sed dictum nisl et imperdiet ullamcorper. Suspendisse consectetur cursus nulla at scelerisque. Aliquam rhoncus dui nec libero porta ornare. Donec elementum neque a justo gravida, sed ullamcorper erat porta. Morbi pretium mauris at ornare dictum. Ut ac eros tincidunt, bibendum lectus et, luctus tellus. Cras lacinia hendrerit velit. Sed libero purus, gravida a eros tempus, dignissim feugiat neque. Pellentesque porta semper metus iaculis aliquam. Curabitur neque eros, sodales id commodo et, lobortis in nisi. Cras eget quam et eros mollis varius.')
          ],
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  final String text;

  const Description({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        this.text,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class Connections extends StatelessWidget {
  final int followingNumber, followersNumber;

  const Connections({
    Key? key,
    required this.followersNumber,
    required this.followingNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(40, 0, 255, 0),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Connection(
            connectionStatus: 'Following',
            number: followingNumber,
          ),
          Connection(
            connectionStatus: 'Followers',
            number: followersNumber,
          ),
        ],
      ),
    );
  }
}

class Connection extends StatelessWidget {
  final String connectionStatus;
  final int number;

  const Connection({
    Key? key,
    required this.connectionStatus,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final barStyle = TextStyle(color: Color.fromARGB(160, 0, 0, 0));

    return Column(
      children: <Widget>[
        Text(
          this.connectionStatus.toUpperCase(),
          style: barStyle.copyWith(
            fontSize: 16,
          ),
        ),
        Text(
          '${this.number}',
          style: barStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  final double height;
  final String backgroundPhoto;
  final String userPhoto;
  final String username;

  const Header({
    Key? key,
    this.height = 200,
    required this.backgroundPhoto,
    required this.userPhoto,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.backgroundPhoto),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          UserPhoto(
            userPhotoUrl: this.userPhoto,
            size: 100,
          ),
          Text(
            '@${this.username}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class UserPhoto extends StatelessWidget {
  final String userPhotoUrl;
  final double size;

  const UserPhoto({
    Key? key,
    required this.userPhotoUrl,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.size,
      width: this.size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.userPhotoUrl),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 4,
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}