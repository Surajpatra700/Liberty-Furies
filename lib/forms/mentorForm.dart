// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:liberty_furies/actions/Utils.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:liberty_furies/screens/mentorHomePage.dart';

class MentorForm extends StatefulWidget {
  final loading;
  const MentorForm({super.key, this.loading = false});

  @override
  State<MentorForm> createState() => _MentorFormState();
}

class _MentorFormState extends State<MentorForm> {
  final nameController = TextEditingController();
  final proffesionController = TextEditingController();
  final domainController = TextEditingController();
  final phoneController = TextEditingController();
  final yearController = TextEditingController();
  final linkedinController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  File? _image;
  final picker = ImagePicker();
  final storage = firebase_storage.FirebaseStorage.instance;
  final databaseRef = FirebaseDatabase.instance.ref("mentors");

  Future getImageGallery() async {
    final PickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 60);
    setState(() {
      if (PickedFile != null) {
        _image = File(PickedFile.path);
      } else {
        print("No Image Picked");
      }
    });
  }

  List<String> domain = [
    "Civil Services",
    "Defence",
    "Doctor/Surgeon",
    "Enterprenuer",
    "lawyer",
    "Engineering",
    "Artist",
    "Banking",
    "Interior Design",
    "Teacher/proff."
  ];
  @override
  Widget build(BuildContext context) {
    bool loading = false;
    return Scaffold(
      //backgroundColor: Color.alphaBlend(Color.fromARGB(255, 20, 37, 50), Colors.grey.shade200),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 81, 91, 137),
            Color.fromARGB(255, 21, 30, 38),
          ]),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Card(
              elevation: 4,
              shadowColor: Colors.deepPurple.shade600,
              child: SingleChildScrollView(
                child: Container(
                  //height: 750,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Text(
                                  "Tell us about you",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.deepPurple),
                                ),
                              )),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "Please tell a bit about you so that we can personalizeyour onboarding experience.",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13.5),
                                ),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Full name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.deepPurple),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5),
                                  child: TextFormField(
                                    controller: nameController,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.black54,
                                      ),
                                      hintText: "Enter your name",
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print("Please enter your name");
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Proffesion",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.deepPurple),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5),
                                  child: TextFormField(
                                    controller: proffesionController,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Enter your proffesion",
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print("Please enter your proffesion");
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Domain of career councelling",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.deepPurple),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5),
                                  child: TextFormField(
                                    controller: domainController,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      suffixIcon: PopupMenuButton(
                                          icon: Icon(Icons.arrow_drop_down),
                                          itemBuilder: (context) => [
                                                for (int i = 0; i < 10; i++)
                                                  PopupMenuItem(
                                                      onTap: () {
                                                        setState(() {
                                                          domainController
                                                                  .text =
                                                              domain[i]
                                                                  .toString();
                                                        });
                                                      },
                                                      value: i,
                                                      child: Text(domain[i])),
                                              ]),
                                      hintText: "Enter your domain",
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print("Please enter your domain");
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Phone number",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.deepPurple),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5),
                                  child: TextFormField(
                                    controller: phoneController,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(
                                        Icons.call,
                                        color: Colors.black54,
                                      ),
                                      hintText: "Enter your number",
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print("Please enter your number");
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Years of experience",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.deepPurple),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5),
                                  child: TextFormField(
                                    controller: yearController,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(
                                        Icons.calendar_month,
                                        color: Colors.black54,
                                      ),
                                      hintText: "Enter your years of exp.",
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print("Please enter a value");
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Upload profile",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.deepPurple),
                                    )),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: InkWell(
                                      onTap: () {
                                        getImageGallery();
                                      },
                                      child: Container(
                                        height: 120,
                                        width: 120,
                                        child: _image != null
                                            ? Image.file(
                                                _image!.absolute,
                                                fit: BoxFit.cover,
                                              )
                                            : Icon(Icons.image),
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "LinkedIn id",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.deepPurple),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5),
                                  child: TextFormField(
                                    controller: linkedinController,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          image: DecorationImage(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/4494/4494497.png"),fit: BoxFit.cover),
                                        ),
                                      ),
                                      hintText: "Enter your LinkedIn id",
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print(
                                            "Please enter no if you don't have it");
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () async {
                                      setState(() {
                                        loading = true;
                                      });
                                      if (_formKey.currentState!.validate()) {
                                        String id = DateTime.now()
                                            .microsecondsSinceEpoch
                                            .toString();
                                        firebase_storage.Reference ref =
                                            firebase_storage
                                                .FirebaseStorage.instance
                                                .ref(
                                                    "/profile photo/" + id);
                                        firebase_storage.UploadTask uploadTask =
                                            ref.putFile(_image!.absolute);

                                        Future.value(uploadTask)
                                            .then((value) async {
                                          var newUrl =
                                              await ref.getDownloadURL();

                                          databaseRef.child(id).set({
                                            "id": id,
                                            "name":
                                                nameController.text.toString(),
                                            "proffesion": proffesionController
                                                .text
                                                .toString(),
                                            "domain": domainController.text
                                                .toString(),
                                            "phone":
                                                phoneController.text.toString(),
                                            "year":
                                                yearController.text.toString(),
                                            "url": newUrl.toString(),
                                            "linkedin": linkedinController.toString(),
                                          });
                                          setState(() {
                                            loading = false;
                                          });
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      MentorHomePage())));
                                          Utils(check: true).toastMessage(
                                              "Succesfully submitted");
                                        }).onError((error, stackTrace) {
                                          setState(() {
                                            loading = false;
                                          });
                                          Utils(check: false)
                                              .toastMessage(error.toString());
                                        });
                                      }
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 35.0),
                                      child: Container(
                                        height: 40,
                                        width: 230,
                                        decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20.0),
                                                child: Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      //),
    );
  }
}
