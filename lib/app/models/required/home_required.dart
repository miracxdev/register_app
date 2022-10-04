// To parse this JSON data, do
//
//     final homeRequired = homeRequiredFromJson(jsonString);

import 'dart:convert';

HomeRequired homeRequiredFromJson(String str) => HomeRequired.fromJson(json.decode(str));

String homeRequiredToJson(HomeRequired data) => json.encode(data.toJson());

class HomeRequired {
    HomeRequired({
        this.name,
        this.surname,
        this.age,
        this.jobs,
        this.phoneNumber,
    });

    String? name;
    String? surname;
    String? age;
    String? jobs;
    String? phoneNumber;

    factory HomeRequired.fromJson(Map<String, dynamic> json) => HomeRequired(
        name: json["name"],
        surname: json["surname"],
        age: json["age"],
        jobs: json["jobs"],
        phoneNumber: json["phone number"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "surname": surname,
        "age": age,
        "jobs": jobs,
        "phone number": phoneNumber,
    };
}
