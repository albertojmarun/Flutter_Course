import 'dart:convert' as converter;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const PhotoGallery());

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Photo Gallery')),
        body: const Gallery(),
      ),
    );
  }
}

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  bool loading = true;
  List<String> photoID = [];

  @override
  void initState() {
    loading = true;
    _loadImageID();

    super.initState();
  }

  // ignore: avoid_void_async
  void _loadImageID() async {
    final response = await http.get(Uri.parse('https://picsum.photos/v2/list'));
    final json = converter.jsonDecode(response.body);

    final List<String> _id = [];
    for (final image in json) {
      _id.add(image['id'].toString());
    }

    setState(() {
      loading = false;
      photoID = _id;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ImagePage(photoID[index]),
              ),
            );
          },
          child: Image.network(
              'https://picsum.photos/id/${photoID[index]}/300/300')),
      itemCount: photoID.length,
    );
  }
}

class ImagePage extends StatelessWidget {
  final String id;

  const ImagePage(
    this.id, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(
          'https://picsum.photos/id/$id/600/600',
        ),
      ),
    );
  }
}
