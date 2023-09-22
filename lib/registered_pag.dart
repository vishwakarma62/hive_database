import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_database/app_color.dart';
import 'package:hive_database/login_page.dart';
import 'package:hive_database/models/demo.dart';
import 'package:hive_database/view_data.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var nameCTR = TextEditingController();
  var lastnameCTR = TextEditingController();
  var emailregisterCTR = TextEditingController();
  var phoneCTR = TextEditingController();
  var passwordCTR = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lightwhite2,
        body: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter name";
                    } else {
                      return null;
                    }
                  },
                  controller: nameCTR,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter lasname";
                    } else {
                      return null;
                    }
                  },
                  controller: lastnameCTR,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "lastname",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter name";
                    } else {
                      return null;
                    }
                  },
                  controller: emailregisterCTR,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter name";
                    } else {
                      return null;
                    }
                  },
                  controller: phoneCTR,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "phone",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter password";
                    } else {
                      return null;
                    }
                  },
                  controller: passwordCTR,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Box box = Hive.box("thisbox");

                        box.put(
                            "name",
                            Register(
                              emailregister: emailregisterCTR.text,
                              lastname: lastnameCTR.text,
                              name: nameCTR.text,
                              phone: phoneCTR.text,
                              password: passwordCTR.text,
                            ));
                        var data = box.get("name");
                        print(data.name);
                        print(data.emailregister);
                        print(data.lastname);
                        print(data.phone);
                        print(data.password);
                      }
                    },
                    child: Text(
                      "SignUP",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.orange,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
