// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:grocerease/screens/more_screen/more_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  _launchPhoneApp() async {
    const phoneNumber = '+923305237430';
    const url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchWhatsApp() async {
    const phoneNumber = '+923305237430';
    const url = 'https://wa.me/$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchEmailApp() async {
    const recipientEmail = 'info.grocerease@gmail.com';
    const url = 'mailto:$recipientEmail';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xF2FFFFFF),
        elevation: 7,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MorePage()));            // Handle AppBar close button press
            // Handle AppBar close button press
          },
        ),
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: SizedBox(
                height: 87, // Increased height by 5 pixels
                child: Material(
                  elevation: 2,
                  child: GestureDetector(
                    onTap: _launchPhoneApp,
                    child: ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Phone',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Call at +923305237430',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                      tileColor: const Color(0xF2FFFFFF),
                      dense: false,
                      contentPadding: const EdgeInsets.fromLTRB(18, 11, 10, 17), // Added left padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
              child: SizedBox(
                height: 85, // Increased height by 5 pixels
                child: Material(
                  elevation: 2,
                  child: GestureDetector(
                    onTap: _launchWhatsApp,
                    child: ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.black,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'WhatsApp',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Chat on WhatsApp\nwith +923305237430',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                      tileColor: const Color(0xF2FFFFFF),
                      dense: false,
                      contentPadding: const EdgeInsets.fromLTRB(18, 7, 10, 15), // Added left padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
              child: SizedBox(
                height: 90, // Increased height by 5 pixels
                child: Material(
                  elevation: 2,
                  child: GestureDetector(
                    onTap: _launchEmailApp,
                    child: ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Email us with any Inquiries\n(info.grocerease@gmail.com)',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                      tileColor: const Color(0xF2FFFFFF),
                      dense: false,
                      contentPadding: const EdgeInsets.fromLTRB(18, 10, 7, 15), // Added left padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}