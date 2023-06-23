import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bah voila c'est moi, MAX MAX SUPER MAX",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            CircleAvatar(
              radius: 200,
              backgroundColor: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ClipOval(
                  child: Image.network(
                    "https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcTJXw84YC1Cr4l578Ncix3oXU6hXDarw9W7nWhmfCLIAnTS_xkpu-C3cQSkWg7yo1GE",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
