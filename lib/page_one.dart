import 'package:flutter/material.dart';
import 'package:workshop/utils/album.dart';
import 'package:workshop/utils/albums.dart';
import 'package:workshop/utils/custom_navigation_bar.dart';
import 'package:workshop/utils/get_album.dart';
import 'package:workshop/utils/get_albums.dart';

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
        child: FutureBuilder<Albums>(
            future: getAlbums(),
            // future: getAlbum(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: 40,
                  itemBuilder:  (BuildContext context, int index) {
                    return Text(
                     snapshot.data!.albums![index].title + snapshot.data!.albums![index].id.toString()
                    );
                  }
                );
                // return Text(snapshot.data!.title),
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
