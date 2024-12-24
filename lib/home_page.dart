import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> culturalHouses = const [
    {
      'name': 'Rumah Gadang',
      'image': 'rumah_gadang.jpg',
      'description': 'Rumah Gadang adalah rumah tradisional khas Minangkabau dengan atap berbentuk tanduk kerbau.',
    },
    {
      'name': 'Rumah Melayu',
      'image': 'rumah_melayu.jpeg',
      'description': 'Rumah Melayu memiliki desain yang anggun dengan ukiran khas dan biasanya berada di atas tiang.',
    },
    {
      'name': 'Rumah Aceh',
      'image': 'rumoh_aceh.jpg',
      'description': 'Rumah Aceh adalah rumah tradisional masyarakat Aceh yang mencerminkan budaya Islam.',
    },
    {
      'name': 'Rumah Panggung Jambi',
      'image': 'rumah_jambi.jpg',
      'description': 'Rumah Panggung Jambi dibangun di atas tiang sebagai bentuk adaptasi terhadap lingkungan sekitar.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cultural House of Sumatra'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView.builder(
          itemCount: culturalHouses.length,
          itemBuilder: (context, index) {
            final house = culturalHouses[index];
            return Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                contentPadding: const EdgeInsets.all(12.0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    house['image']!,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  house['name']!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    house['description']!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.teal),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(house: house),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}