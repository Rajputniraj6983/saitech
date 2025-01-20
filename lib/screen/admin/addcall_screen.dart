import 'package:flutter/material.dart';

class AddcallScreen extends StatelessWidget {
  const AddcallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController AreaController = TextEditingController();
    final TextEditingController MobileController = TextEditingController();
    final TextEditingController gstController = TextEditingController();
    final TextEditingController DobController = TextEditingController();
    final TextEditingController EnggnameController = TextEditingController();
    final TextEditingController AmountController = TextEditingController();
    final TextEditingController DescriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: const Text(
          'Add Call',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Enter Call Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Client Name',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: AreaController,
                decoration: InputDecoration(
                  labelText: 'Area',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: MobileController,
                decoration: InputDecoration(
                  labelText: 'Mobile no',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: gstController,
                decoration: InputDecoration(
                  labelText: 'GST Number',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: EnggnameController,
                decoration: InputDecoration(
                  labelText: 'Assign To rahul Engg',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: AmountController,
                decoration: InputDecoration(
                  labelText: 'Amount',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
    );
  }
}
