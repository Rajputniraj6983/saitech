import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
class Replacement extends StatelessWidget {
  const Replacement({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController DobController = TextEditingController();
    final TextEditingController ItemnameController = TextEditingController();
    final TextEditingController DescriptionController = TextEditingController();

    final SignatureController signatureController = SignatureController(
      penStrokeWidth: 2,
      penColor: Colors.black,
      exportPenColor: Colors.blue,
    );

    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Replacement',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Replacement Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Client Name',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: DobController,
                  decoration: InputDecoration(
                    labelText: 'Date of Submit',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (pickedDate != null) {
                      DobController.text =
                      "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    }
                  },
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: ItemnameController,
                  decoration: InputDecoration(
                    labelText: 'Engg Name',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: ItemnameController,
                  decoration: InputDecoration(
                    labelText: 'Item',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: DescriptionController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Digital Signature',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Signature(
                    controller: signatureController,
                    backgroundColor: Colors.white!,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {

                        signatureController.clear();
                      },
                      child: const Text('Clear'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (signatureController.isNotEmpty) {
                          final signature = await signatureController.toPngBytes();
                          if (signature != null) {


                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Signature Saved!')),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('No signature to save!')),
                          );
                        }
                      },
                      child: const Text('Save Signature'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

