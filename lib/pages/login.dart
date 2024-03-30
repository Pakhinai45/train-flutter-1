import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tripbookking/model/response/trip_get_res.dart';
import 'package:tripbookking/pages/Register.dart';
import 'package:tripbookking/pages/ShowTrip.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String text = '';
  List<TripGetRespone> trips = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Trip Booking"),
      // ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width, //ไปดูข้อมูลหน้าจอ
        child: Container(
          // color: Colors.blue[100],
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: Image.network(
                    'https://omegatours.ca/wp-content/uploads/2020/08/axus-logo.png',
                    width: 350,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("หมายเลขโทรศัพท์"),
                      TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("รหัสผ่าน"),
                      TextField(
                        obscureText: true,
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: Text('Login $text'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ));
                          },
                          child: const Text("ลงทะเบียนใหม่")),
                      FilledButton(
                          onPressed: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ShowTripPage(),
                                ));
                            
                          },
                          child: const Text("เข้าสู่ระบบ"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
