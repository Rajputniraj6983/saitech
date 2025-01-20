// import 'package:flutter/material.dart';
//
// class  ComplaintScreen extends StatelessWidget {
//   const ComplaintScreen ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController FirmnameController = TextEditingController();
//     final TextEditingController addressController = TextEditingController();
//     final TextEditingController DescriptionController = TextEditingController();
//     final TextEditingController CategoryController = TextEditingController();
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue.shade600,
//         title: const Text(
//           'User Complaint',
//           style: TextStyle(
//               color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(scrollDirection: Axis.vertical,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'Enter Complain ',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 controller: FirmnameController,
//                 decoration: InputDecoration(
//                   labelText: 'Firm Name',
//                   border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 controller: addressController,
//                 decoration: InputDecoration(
//                   labelText: 'Address',
//                   border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 controller: CategoryController,
//                 decoration: InputDecoration(
//                   labelText: 'Category',
//                   border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 controller: DescriptionController,
//                 decoration: InputDecoration(
//                   labelText: 'Description',
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
//                 ),
//                 maxLines: 3,
//               ),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.only(left: 130),
//                 child: Container(
//                   alignment: Alignment.topCenter,
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     border: Border.all(color: Colors.grey),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       'Save',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
