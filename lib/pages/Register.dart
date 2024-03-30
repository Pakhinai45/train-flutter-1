// ignore_for_file: file_names
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:tripbookking/pages/ShowTrip.dart';
import 'package:tripbookking/pages/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String name = '';
  TextEditingController nameCtl = TextEditingController();
  TextEditingController phoneCtl = TextEditingController();
  TextEditingController emailCtl = TextEditingController();
  TextEditingController passwordCtl = TextEditingController();
  TextEditingController passwordCtl2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text('สมัคสมาชิก'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: const Color.fromARGB(255, 222, 253, 224),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("ชื่อ-นามสกุล"),
                      TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        controller: nameCtl, //จับการเปลี่ยนเเปลง TextField
                        // onChanged: (ttt) {
                        //   name = ttt;
                        //   log(ttt);
                        // },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("หมายเลขโทรศัพท์"),
                      TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        controller: phoneCtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("อีเมล"),
                      TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        controller: emailCtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("รหัสผ่าน"),
                      TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        controller: passwordCtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("ยืนยันรหัสผ่าน"),
                      TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        controller: passwordCtl2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Column(
                    children: [
                      FilledButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(const Color.fromARGB(255, 56, 142, 60)),
                        ),
                        onPressed: () {


                          // if (nameCtl.text.isNotEmpty &&
                          //     phoneCtl.text.isNotEmpty &&
                          //     emailCtl.text.isNotEmpty &&
                          //     passwordCtl.text.isNotEmpty &&
                          //     passwordCtl2.text.isNotEmpty) {
                          //   if (passwordCtl.text == passwordCtl2.text) {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => const ShowTripPage(),
                          //         ));
                          //   }
                          // }

                          // ignore: prefer_interpolation_to_compose_strings
                          log(nameCtl.text +
                              '\n' +
                              phoneCtl.text +
                              '\n' +
                              emailCtl.text +
                              '\n' +
                              passwordCtl.text +
                              '\n' +
                              passwordCtl2.text);
                        },
                        child: const Text('สมัคสมาชิก'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 100, 20),
                  child: Row(
                    children: [
                      const Text('หากมีบัญชีอยู่เเล้ว'),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ));
                          },
                          child: const Text('เข้าสู่ระบบ'))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
