import 'package:flutter/material.dart';

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
                    radius: 40,
                    child: Icon(Icons.person, size: 40),
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

                Card(
                  child: Column(
                    children: const [
                      InfoTile(
                        icon: Icons.email,
                        label: 'Email',
                        value: 'adeagustus02@gmail.com',
                      ),
                      InfoTile(
                        icon: Icons.phone,
                        label: 'Nomor HP',
                        value: '08570332167',
                      ),
                      InfoTile(
                        icon: Icons.school,
                        label: 'Kelas',
                        value: 'Software Engineering',
                      ),
                      InfoTile(
                        icon: Icons.code,
                        label: 'GitHub',
                        value: 'github.com/adedwi208',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  child: Column(
                    children: const [
                      InfoTile(
                        icon: Icons.code,
                        label: 'Keahlian',
                        value: 'Backend',
                      ),
                      InfoTile(
                        icon: Icons.web,
                        label: 'Keahlian',
                        value: 'Web Development',
                      ),
                      InfoTile(
                        icon: Icons.gamepad,
                        label: 'Hobi',
                        value: 'Bermain Game',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
