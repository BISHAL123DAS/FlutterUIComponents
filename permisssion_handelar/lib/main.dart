// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   void _openFilePicker(BuildContext context) async {
//     try {
//       // Open the file picker
//       FilePickerResult? result = await FilePicker.platform.pickFiles();

//       if (result != null) {
//         // Get the selected file
//         PlatformFile file = result.files.first;

//         // Display the selected file path
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Selected file: ${file.path}')),
//         );
//       } else {
//         // User canceled the picker
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('No file selected')),
//         );
//       }
//     } on PlatformException catch (e) {
//       print("Unsupported " + e.toString());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         title: Text('SimpVault'),
//         backgroundColor: Color.fromARGB(255, 248, 247, 172),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _openFilePicker(context),
//           child: Text('Open File Picker'),
//         ),
//       ),
//     );
//   }
// }




// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   void _openFilePicker(BuildContext context) async {
//     // Request permission explicitly
//     var status = await Permission.storage.request();
//     if (status == PermissionStatus.granted) {
//       // Permission granted, proceed with file picking
//       //_pickFile(context);
//          ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Selected file: ${file.path}')),
//         );
      
//     } else {
//       // Permission denied, show message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Permission denied')),
//       );
//     }
//   }

//   Future<void> _pickFile(BuildContext context) async {
//     try {
//       // Open the file picker
//       FilePickerResult? result = await FilePicker.platform.pickFiles();

//       if (result == null) {
//           ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('No file selected')),
//         );

//       } else {
//         // User canceled the picker
//                 // Get the selected file
//         PlatformFile file = result.files.first;

//         // Display the selected file path
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Selected file: ${file.path}')),
//         );
      
//       }
//     } catch (e) {
//       print("Error picking file: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         title: Text('SimpVault'),
//         backgroundColor: Color.fromARGB(255, 248, 247, 172),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _openFilePicker(context),
//           child: Text('Open File Picker'),
//         ),
//       ),
//     );
//   }
// }



import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  void _openFilePicker(BuildContext context) async {
    try {
      // Open the file picker
      FilePickerResult? result = await FilePicker.platform.pickFiles();


      if (result != null) {
        // Get the selected file
        PlatformFile file = result.files.first;


        // Display the selected file path
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected file: ${file.path}')),
        );
      } else {
        // User canceled the picker
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No file selected')),
        );
      }
    } on PlatformException catch (e) {
      print("Unsupported " + e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('SimpVault'),
        backgroundColor: Color.fromARGB(255, 248, 247, 172),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _openFilePicker(context),
          child: Text('Open File Picker'),
        ),
      ),
    );
  }
}




