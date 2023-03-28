// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_build_context_synchronously, prefer_typing_uninitialized_variables
import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:liberty_furies/actions/Utils.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:liberty_furies/screens/hospital.dart';

class GynecologistForm extends StatefulWidget {
  final loading;
  const GynecologistForm({super.key, this.loading = false});

  @override
  State<GynecologistForm> createState() => _GynecologistFormState();
}

class _GynecologistFormState extends State<GynecologistForm> {
  final nameController = TextEditingController();
  final proffesionController = TextEditingController();
  final workController = TextEditingController();
  final phoneController = TextEditingController();
  final yearController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  File? _image;
  final picker = ImagePicker();
  final storage = firebase_storage.FirebaseStorage.instance;
  final databaseRef = FirebaseDatabase.instance.ref("doctors");

  Future getImageGallery() async {
    final PickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 60);
    setState(() {
      if (PickedFile != null) {
        _image = File(PickedFile.path);
      } else {
      }
    });
  }

  List<String> proffesion = [
    "gynecologist oncology","reproductive endocrinology","infertility","maternal fetal medicine"
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
                    color: Colors.indigo.shade200,
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
                                      "Work place/ hospital of work",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.deepPurple),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5),
                                  child: TextFormField(
                                    controller: workController,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Enter your work place",
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
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
                                      suffixIcon: PopupMenuButton(
                                          icon: Icon(Icons.arrow_drop_down),
                                          itemBuilder: (context) => [
                                                for (int i = 0; i < 4; i++)
                                                  PopupMenuItem(
                                                      onTap: () {
                                                        setState(() {
                                                          proffesionController
                                                                  .text =
                                                              proffesion[i]
                                                                  .toString();
                                                        });
                                                      },
                                                      value: i,
                                                      child: Text(proffesion[i])),
                                              ]),
                                      hintText: "Enter your proffesion",
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
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
                                            "work": workController.text
                                                .toString(),
                                            "phone":
                                                phoneController.text.toString(),
                                            "year":
                                                yearController.text.toString(),
                                            "url": newUrl.toString(),
                                          });
                                          setState(() {
                                            loading = false;
                                          });
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      DoctorHomePage())));
                                          Utils(check: true).toastMessage(
                                              "Succesfully Registered");
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
