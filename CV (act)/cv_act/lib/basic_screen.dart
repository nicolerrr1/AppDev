import 'package:flutter/material.dart';
import 'cv.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> cvSections = ['Education', 'Skills', 'Projects', 'Experience'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'My CV',
          style: TextStyle(color: Colors.white)
        ),
      ),
      
    body: const Center(
      child: Padding(
        padding: EdgeInsets.all(30),
        child:ImmutableWidget()
      ),
    ),

      drawer: Drawer(
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CV Sections',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: cvSections.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 13
                      ),
                      title: Text(cvSections[index]),
                    ),
                    const Divider(color: Colors.grey),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );

    
  }
}