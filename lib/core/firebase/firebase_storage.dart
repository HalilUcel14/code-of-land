import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageManager {
  static FirebaseStorageManager? _instance;
  static FirebaseStorageManager get instance {
    _instance ??= FirebaseStorageManager._init();
    return _instance!;
  }

  //
  static final storage = FirebaseStorage.instance;
  // Create a storage reference from our app
  static final storageRef = FirebaseStorage.instance.ref();
  //

  FirebaseStorageManager._init();

  // ------------------- Upload Files --------------------

  // Create a reference to "mountains.jpg"
  final mountainsRef = storageRef.child("mountains.jpg");

  // Create a reference to "images/mountains.jpg"
  final mountainImagesRef = storageRef.child("images/mountaints.jpg");

  // While the file names are the same, the references points to different files
  // assert(mountainsRef.name == mountainImagesRef.name);
  // assert(mountainsRef.fullPath != mountainImagesRef.fullPath);

  // ------------------- Upload From a Files --------------------

  // void uploadFromAFile() async {
  //   // Path Provider add
  //   Directory appDocDir = await getApplicationDocumentsDirectory();
  //   String filePath = "${appDocDir.absolute}/file-to-upload.png";
  //   File file = File(null, filePath);

  //   try {
  //     await mountainsRef.putFile(file);
  //   } on FirebaseException {
  //     //....
  //   }
  // }

  // ------------------- Upload From a String --------------------

  //
  //

  // String dataUrl = "data:text/plain;base64,SGVsbG8IFdvcmxkIQ==";

  // try {
  //   await mountainsRef.putString(dataUrl,format: PutStringFormat.dataUrl);

  // } on FirebaseException catch (e){

  // }

  //https://firebase.flutter.dev/docs/storage/upload-files

  //
  //

}

  // -----------------------------------------------------------------------
  // //
  // // Create a child reference
  // // imagesRef now points to "images"
  // final imageRef = storageRef.child('images');

  // // Child references can also take paths
  // // spaceRef now points to "images/space.jpg"
  // // imagesRef still points to "images"
  // static final spaceRef = storageRef.child("images/space.jpg");

  // // parent allows us to move our reference to a parent node
  // // imageRef2 now points to "images"
  // final imageRef2 = spaceRef.parent;

  // // root allows us to move all the way back to the top of our bucket
  // // rootRef now points to the roof
  // final rootRef = spaceRef.root;

  // // References can be chained together multiple times
  // // earthRef points to "images/earth.jpg"
  // final earthRef = spaceRef.parent?.child("earth.jpg");

  // // nullRef is null, since the parent of root is null
  // final nullRef = spaceRef.root.parent;

  // // Reference's path is: "images/space.jpg"
  // // this is analogous to a file path on disk
  // final path = spaceRef.fullPath;

  // // Reference's name  is the last segment of the full path: "space.jpg"
  // // This is analogous to the file name
  // final name = spaceRef.name;

  // // Reference's bucket is the name of the storage bucket that the files are stored in
  // final bucket = spaceRef.bucket;


  ///                Full Example
  ///  // points to the roof reference
  ///  final storageRef = FirebaseStorage.instance.ref();
  ///
  ///  // points to "images"
  ///  Reference? imagesRef = storageRef.child("images");
  ///
  ///  // Points to "images/space.jpg"
  ///  // Note that you can use variables to create child values
  ///  final fileName = "space.jpg";
  ///  final spaceRef = imagesRef.child(fileName);
  ///
  ///  // File path is "images/space.jpg"
  ///  final path = spaceRef.fullPath;
  ///
  ///  // File name is "space.jpg"
  ///  final name = spaceRef.name;
  ///
  ///  // Points to "images"
  ///  imagesRef = spaceRef.parent;