import 'package:flutter/material.dart';
import 'package:workshop/utils/custom_navigation_bar.dart';

class PageOne extends StatefulWidget {
  PageOne({Key? key}) : super(key: key);

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
      body: const Center(
        child: Text("It's the page One"),
      ),
      bottomNavigationBar: const CustomNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}
