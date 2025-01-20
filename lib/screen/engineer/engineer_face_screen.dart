import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saitech/controller/imgaepicker_controller.dart';
import 'package:saitech/screen/engineer/engineer_video_screen.dart';

class EngineerAttendanceScreen extends StatefulWidget {
  @override
  _EngineerAttendanceScreenState createState() =>
      _EngineerAttendanceScreenState();
}

class _EngineerAttendanceScreenState extends State<EngineerAttendanceScreen> {
  final EngineerAttendanceController _controller = EngineerAttendanceController();
  File? _imageFile;

  void _updateImage(File? image) {
    setState(() {
      _imageFile = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: const Text(
          'Shree Sai Computer World',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Text(
              '☺ Good Morning ☺',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundImage:
              _imageFile != null ? FileImage(_imageFile!) : null,
              backgroundColor: Colors.black54,
              child: _imageFile == null
                  ? const Icon(Icons.person, size: 80,color: Colors.white,)
                  : null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _controller.captureImage(_updateImage);
              },
              child: const Icon(
                Icons.camera_alt,
                size: 28,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Click Icon take a Picture',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(EngineerVideoScreen());
                  },
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange,
                      border: Border.all(color: Colors.orange),
                    ),
                    child: const Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 23),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(EngineerVideoScreen(),
                        transition: Transition.leftToRight);
                  },
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange,
                      border: Border.all(color: Colors.orange),
                    ),
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 23),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:saitech/controller/location_service.dart';
//
// class Locationservice extends StatefulWidget {
//   const Locationservice({super.key});
//
//   @override
//   State<Locationservice> createState() => _LocationserviceState();
// }
//
// class _LocationserviceState extends State<Locationservice> {
//   final LocationService _locationService = LocationService();
//   Position? _currentLocation;
//   String _currentAddress = "Fetching address...";
//
//   Future<void> _fetchLocationAndAddress() async {
//     try {
//       final location = await _locationService.getCurrentLocation();
//       final address = await _locationService.getAddressFromCoordinates(location);
//
//       setState(() {
//         _currentLocation = location;
//         _currentAddress = address;
//       });
//     } catch (e) {
//       setState(() {
//         _currentAddress = "Error: $e";
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Shree Sai Computer world',
//           style: TextStyle(
//             color: Colors.blueGrey,
//             fontWeight: FontWeight.w600,
//             fontSize: 18,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               'Location Coordinates',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               _currentLocation != null
//                   ? "Latitude: ${_currentLocation!.latitude}, Longitude: ${_currentLocation!.longitude}"
//                   : "No location available",
//               style: const TextStyle(
//                 color: Colors.grey,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Text(
//               'Location Address',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               _currentAddress,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 color: Colors.grey,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             const SizedBox(height: 50),
//             ElevatedButton(
//               onPressed: _fetchLocationAndAddress,
//               child: const Text(
//                 'Get Live location',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




