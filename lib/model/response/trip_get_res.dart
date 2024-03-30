// To parse this JSON data, do
//
//     final tripGetRespone = tripGetResponeFromJson(jsonString);

import 'dart:convert';

List<TripGetRespone> tripGetResponeFromJson(String str) => List<TripGetRespone>.from(json.decode(str).map((x) => TripGetRespone.fromJson(x)));

String tripGetResponeToJson(List<TripGetRespone> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TripGetRespone {
    int idx;
    dynamic name;
    dynamic country;
    int destinationid;
    String coverimage;
    String detail;
    int price;
    int duration;

    TripGetRespone({
        required this.idx,
        required this.name,
        required this.country,
        required this.destinationid,
        required this.coverimage,
        required this.detail,
        required this.price,
        required this.duration,
    });

    TripGetRespone copyWith({
        int? idx,
        dynamic name,
        dynamic country,
        int? destinationid,
        String? coverimage,
        String? detail,
        int? price,
        int? duration,
    }) => 
        TripGetRespone(
            idx: idx ?? this.idx,
            name: name ?? this.name,
            country: country ?? this.country,
            destinationid: destinationid ?? this.destinationid,
            coverimage: coverimage ?? this.coverimage,
            detail: detail ?? this.detail,
            price: price ?? this.price,
            duration: duration ?? this.duration,
        );

    factory TripGetRespone.fromJson(Map<String, dynamic> json) => TripGetRespone(
        idx: json["idx"],
        name: json["name"],
        country: json["country"],
        destinationid: json["destinationid"],
        coverimage: json["coverimage"],
        detail: json["detail"],
        price: json["price"],
        duration: json["duration"],
    );

    Map<String, dynamic> toJson() => {
        "idx": idx,
        "name": name,
        "country": country,
        "destinationid": destinationid,
        "coverimage": coverimage,
        "detail": detail,
        "price": price,
        "duration": duration,
    };
}
