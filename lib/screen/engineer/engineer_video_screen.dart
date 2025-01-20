import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saitech/screen/engineer/engineer_task_screen.dart';
import 'package:saitech/screen/engineer/enignneer_statusscreen.dart';
import 'dart:io';
import 'package:video_player/video_player.dart';

class EngineerVideoScreen extends StatefulWidget {
  @override
  _EngineerVideoScreenState createState() => _EngineerVideoScreenState();
}

class _EngineerVideoScreenState extends State<EngineerVideoScreen> {
  final ImagePicker _imagePicker = ImagePicker();

  File? _videoFile;
  VideoPlayerController? _videoController;

  Future<void> _captureVideo(BuildContext context) async {
    final XFile? video =
    await _imagePicker.pickVideo(source: ImageSource.camera);
    if (video != null) {
      setState(() {
        _videoFile = File(video.path);
        _videoController = VideoPlayerController.file(_videoFile!)
          ..initialize().then((_) {
            setState(() {});
          });
      });
    }
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 250,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black54,
              ),
              child: _videoFile != null && _videoController != null
                  ? AspectRatio(
                aspectRatio: _videoController!.value.aspectRatio,
                child: VideoPlayer(_videoController!),
              )
                  : const Center(
                child: Text(
                  'No Video',
                  style: TextStyle(color: Colors.white,fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _captureVideo(context);
              },
              child: const Icon(
                Icons.videocam,
                color: Colors.black,
                size: 30,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Click Icon take a Video',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
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
                    child: Center(
                      child: InkWell(onTap: () {
                        Get.to(const EngineerTaskScreen(),transition: Transition.leftToRight);
                      },
                        child: const Text(
                          'Go To Task',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 23),
                        ),
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
