import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile: Ade Dwi Herdiansyah',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,

      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Mahasiswa'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.info))],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.person, size: 20),
                  ),
                ),

                const SizedBox(height: 16),
                Text(
                  'Ade Dwi Herdiansyah',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),

                const SizedBox(height: 8),
                Text(
                  'NIM: 1124160201',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 8),
                Text(
                  'Teknik Informatika',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
