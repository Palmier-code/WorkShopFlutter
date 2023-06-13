import 'package:flutter/material.dart';
import 'package:workshop/utils/custom_navigation_bar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final List<String> parameter = [
    "Reglage 1",
    "Reglage 2",
    "Reglage 3",
    "Reglage 4",
    "Regalge 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Settings"),
      ),
      body: Center(
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: parameter.length,
            itemBuilder: (BuildContext context, int index) {
              return SettingItem(name: parameter[index]);
            }),
      ),
      bottomNavigationBar: const CustomNavigationBar(
        currentIndex: 2,
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: InkWell(
        child: ColoredBox(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.settings_applications_rounded,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.settings_applications_rounded,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
