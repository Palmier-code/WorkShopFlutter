import 'package:flutter/material.dart';
import 'package:workshop/utils/album.dart';
import 'package:workshop/utils/custom_navigation_bar.dart';
import 'package:workshop/utils/get_album.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Page One"),
      ),
      body: Center(
        child: FutureBuilder<Album>(
            future: getAlbum(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            }),
      ),
      bottomNavigationBar: const CustomNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}
