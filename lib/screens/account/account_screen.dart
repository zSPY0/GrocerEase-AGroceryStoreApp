import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the flutter services package
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocerease/common_widgets/app_text.dart';
import 'package:grocerease/gloabals/gloabal.dart';
import 'package:grocerease/screens/dashboard/dashboard_screen.dart';
import 'package:grocerease/styles/colors.dart';

import 'account_item.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String fName = "";

  String lName = "";

  @override
  void initState() {
    if (currentUserData != null) {
      fName = currentUserData!.FirstName!;
      lName = currentUserData!.LastName!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Account',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xF2FFFFFF),
        elevation: 5,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: SizedBox(width: 65, height: 65, child: getImageHeader()),
                title: AppText(
                  text: "$fName $lName",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: const AppText(
                  text: "github.com/zspy0",
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              ColumnWithSeparator(
                children: accountItems.map((e) {
                  return getAccountItemWidget(e);
                }).toList(),
                separator: const Divider(
                  thickness: 1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              logoutButton(context), // Pass the context to the logoutButton method
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget logoutButton(BuildContext context) { // Accept the context parameter
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 0,
          backgroundColor: const Color(0xffF2F3F2),
          textStyle: const TextStyle(
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 25),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                "assets/icons/account_icons/logout_icon.svg",
              ),
            ),
            const Text(
              "Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            Container()
          ],
        ),
        onPressed: () {
          FirebaseAuth.instance.signOut();
          Navigator.pushReplacementNamed(context, '/login'); // Close the app when the button is pressed
        },
      ),
    );
  }

  Widget getImageHeader() {
    String imagePath = "assets/images/zainulislam.png";
    return CircleAvatar(
      radius: 5.0,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
    );
  }

  Widget getAccountItemWidget(AccountItem accountItem) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 22,
            child: SvgPicture.asset(
              accountItem.iconPath,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            accountItem.label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }

  Widget ColumnWithSeparator({
    required List<Widget> children,
    required Widget separator,
  }) {
    List<Widget> items = [];
    for (int i = 0; i < children.length; i++) {
      if (i > 0) {
        items.add(separator);
      }
      items.add(children[i]);
    }
    return Column(children: items);
  }
}
