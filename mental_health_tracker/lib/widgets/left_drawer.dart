import 'package:flutter/material.dart';
import 'package:mental_health_tracker/screens/menu.dart';
import 'package:mental_health_tracker/screens/moodentry_form.dart';

import '../screens/list_moodentry.dart';
// TODO: Import MoodEntryFormPage if it has already been created

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Mental Health Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Track your mental health every day here!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  // TODO: Add text style with center alignment, font size 15, white color, and normal weight
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home Page'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Add Mood'),
            // Redirection part to MoodEntryFormPage
            onTap: () {
              /*
              TODO: Add routing to MoodEntryFormPage here,
              after MoodEntryFormPage is created.
              */
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoodEntryFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Mood List'),
            onTap: () {
              // Route to the mood page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MoodEntryPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}