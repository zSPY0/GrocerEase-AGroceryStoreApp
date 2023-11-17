import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:grocerease/models/user_model.dart';

User? currentUser;

UserModel? currentUserData;

void getCurrentUsersData () async {
  currentUser=FirebaseAuth.instance.currentUser;
  DatabaseReference ref =FirebaseDatabase.instance.ref().child('Users').child(currentUser!.uid);
  await ref.once().then((data){
    if(data.snapshot.value!=null){
      currentUserData= UserModel.fromSnapshot(data.snapshot);
      print("Current user data: ${currentUserData!.FirstName}");
    }
  });
} 
