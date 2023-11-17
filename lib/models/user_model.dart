import 'package:firebase_database/firebase_database.dart';

class UserModel {
  String? id;
  String? FirstName;
  String? LastName;
  String? EmailAddress;
  String? DOB;
  String? Gender;

  UserModel({
    this.id,
    this.FirstName,
    this.LastName,
    this.EmailAddress,
    this.DOB,
    this.Gender,
  });

  UserModel.fromSnapshot(DataSnapshot snapshot) {
    id = snapshot.key;
    FirstName = (snapshot.value as dynamic)["FirstName"];
    LastName = (snapshot.value as dynamic)["LastName"];
    EmailAddress= (snapshot.value as dynamic)["EmailAddress"];
    DOB = (snapshot.value as dynamic)["DOB"];
    Gender = (snapshot.value as dynamic)["Gender"];
  }
}
