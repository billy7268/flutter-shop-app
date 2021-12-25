import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  Future pickimage() async {
    final image =
        await ImagePicker.platform.pickImage(source: ImageSource.camera);
  }

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  late PickedFile imageFile = PickedFile("assets/IMG_20210908_232620_117.webp");

  final ImagePicker picker = ImagePicker();
  late String m2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          imageProfile(),
          SizedBox(height: 20),
          FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            future: FirebaseFirestore.instance
                .collection('users')
                .doc('JgBqtbLyY4nKO1PveYWe')
                .get(),
            builder: (context, snapshot) {
              if(!snapshot.hasData)
                return CircularProgressIndicator();
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(snapshot.data?.data()?['field1']),
                  SizedBox(height: 20),
                  Text(snapshot.data?.data()?['field2']),
                  SizedBox(height: 20),
                  Text(snapshot.data?.data()?['field3']),
                  SizedBox(height: 20),
                  Text(snapshot.data?.data()?['field4']),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: FileImage(File(imageFile.path)),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomsheet()),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.teal,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }

  void takephoto(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      imageFile = pickedFile!;
    });
  }

  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            "choose profile picture",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  takephoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text("camera"),
              ),
              FlatButton.icon(
                onPressed: () {
                  takephoto(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text("Gallery"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget info() {
    return Column(
      children: [
        StreamBuilder(
            stream: FirebaseFirestore.instance.collection('users').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Text("no value");
              }
              return ListView(
                children: snapshot.data!.docs.map((document) {
                  return Text(document['field1']);
                }).toList(),
              );
            }),
      ],
    );
  }
}
