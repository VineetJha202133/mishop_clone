// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tapioca/tapioca.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
// import 'package:video_player/video_player.dart';

// class VideoEditorScreen extends StatefulWidget {
//   const VideoEditorScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _VideoEditorScreenState createState() => _VideoEditorScreenState();
// }

// class _VideoEditorScreenState extends State<VideoEditorScreen> {
//   VideoPlayerController? _controller;
//   String? _videoPath;

//   final ImagePicker _picker = ImagePicker();

//   Future<void> _pickVideo(ImageSource source) async {
//     final XFile? video = await _picker.pickVideo(source: source);
//     if (video != null) {
//       setState(() {
//         _videoPath = video.path;
//         _controller = VideoPlayerController.file(File(_videoPath!))
//           ..initialize().then((_) {
//             setState(() {});
//             _controller!.play();
//           });
//       });
//     }
//   }

//   Future<void> _applyFilter() async {
//     if (_videoPath == null) return;

//     final tapiocaBalls = [
//       TapiocaBall.filter(Filters.pink,BorderSide.strokeAlignCenter),
//       TapiocaBall.textOverlay("Hello", 100, 10, 100, const Color(0xffffc0cb)),
//     ];

//     var tempDir = await getTemporaryDirectory();
//     final path = '${tempDir.path}/result.mp4';

//     final cup = Cup(Content(_videoPath!), tapiocaBalls);
//     await cup.suckUp(path);
//     print("Video processing finished, saved at: $path");

//     // Update the controller to play the edited video
//     setState(() {
//       _controller = VideoPlayerController.file(File(path))
//         ..initialize().then((_) {
//           setState(() {});
//           _controller!.play();
//         });
//     });
//   }

//   @override
//   void dispose() {
//     _controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video Editor'),
//       ),
//       body: Column(
//         children: [
//           if (_controller != null && _controller!.value.isInitialized)
//             AspectRatio(
//               aspectRatio: _controller!.value.aspectRatio,
//               child: VideoPlayer(_controller!),
//             )
//           else
//             Text('Select a video to start'),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () => _pickVideo(ImageSource.camera),
//                 child: Text('Capture Video'),
//               ),
//               ElevatedButton(
//                 onPressed: () => _pickVideo(ImageSource.gallery),
//                 child: Text('Select from Gallery'),
//               ),
//             ],
//           ),
//           ElevatedButton(
//             onPressed: _applyFilter,
//             child: Text('Apply Filter'),
//           ),
//         ],
//       ),
//     );
//   }
// }
