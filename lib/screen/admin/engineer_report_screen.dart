import 'package:flutter/material.dart';

class EngineerReportScreen extends StatelessWidget {
  const EngineerReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: const Text(
          'Engineer Report',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: const ListTile(
                  leading: Text(
                    '1',
                  ),
                  title: Text('Rahul Engg'),
                  subtitle: Text('Godadara Naher,Surat'),
                  trailing: Icon(Icons.video_call),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
