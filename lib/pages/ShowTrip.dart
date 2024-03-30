import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tripbookking/model/response/trip_get_res.dart';

class ShowTripPage extends StatefulWidget {
  const ShowTripPage({super.key});

  @override
  State<ShowTripPage> createState() => _ShowTripPageState();
}

class _ShowTripPageState extends State<ShowTripPage> {
  List<TripGetRespone> trips = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รายการทิป'),
      ),
      body: Column(
        children: [
          FilledButton(
              onPressed: () async {
                String url = 'https://cslab.it.msu.ac.th/tripbooking/trip';
                var res = await http.get(Uri.parse(url)); //เรียก API
                trips = tripGetResponeFromJson(res.body); //แปลงเป็นList
                setState(() {});
                log(trips.length.toString());
              },
              child: const Text('แสดงข้อมูล')),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: trips.map((trip) {
                  return Column(
                    children: [
                      Image.network(trip.coverimage),
                      Text(trip.name.toString()),
                    ],
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
