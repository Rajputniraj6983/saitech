import 'package:flutter/material.dart';

class EngineerScreen extends StatelessWidget {
  const EngineerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController EngineerController = TextEditingController();
    final TextEditingController mobileController = TextEditingController();
    final TextEditingController DesinationController = TextEditingController();
    final TextEditingController DobController = TextEditingController();
    final TextEditingController AddressController = TextEditingController();
    final TextEditingController DepartmentController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: const Text(
          'Add Engineer',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Profile Image:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Center(
                child: GestureDetector(
                  onTap: () {

                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(
                      Icons.camera_alt,
                      size: 40,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
               TextField(
                controller: EngineerController,
                decoration: InputDecoration(
                  labelText: 'Engineer Name',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 16),
               TextField(
                 controller: mobileController,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
               TextField(
                 controller: DesinationController,
                decoration: InputDecoration(
                  labelText: 'Designation',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: DobController,
                decoration: InputDecoration(
                  labelText: 'Date of Joining',
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
                },
              ),
              const SizedBox(height: 16),
               TextField(
                 controller: AddressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
               TextField(
                 controller: DepartmentController,
                decoration: InputDecoration(
                  labelText: 'Department',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Center(
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.black,fontSize: 25),
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
