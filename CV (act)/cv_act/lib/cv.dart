import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget{
  const ImmutableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Align(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Color.fromARGB(255, 189, 223, 250),
                    child: Text('NR', style: TextStyle(color: Colors.blue, fontSize: 35)),
                  ),
                  const Text('Nicole Rafols', style: TextStyle(fontSize: 30)),
                  const SizedBox(height: 5),
                  const Text('+63 900 0000 000,', style: TextStyle(color: Colors.grey)),
                  const Text('21.08560@g.batstate-u.edu.ph', style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 16),
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(50.0),
                        color: Colors.white
                        ),
                      const Positioned(
                        child: Text(' Professional Goal is to be a Data Scientist', style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}