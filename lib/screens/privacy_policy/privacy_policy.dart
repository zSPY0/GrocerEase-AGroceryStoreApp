import 'package:flutter/material.dart';
import 'package:grocerease/screens/more_screen/more_screen.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MorePage()));            // Handle AppBar close button press
            // Handle AppBar close button press
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10.0),
            const Text(
              'PRIVACY POLICY',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'Last Update 28 August 2022',
              style: TextStyle(fontSize: 17.0),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'This privacy policy has been compiled to better serve those who are concerned with how their "Personally Identifiable Information" (PII) is being used online. PII, as described in US privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website.',
              style: TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 15.0),
            const Text(
              'The website policies and terms & conditions may be changes or updated occasionally to meet the requirements and standards. Therefore, the customers are encouraged to frequently visit these sections in order to be updated about the changes on the website. Modifications will be effective on the day they are posted.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'What personal information do we collect from the people that visit our blog, website or app?',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'When ordering or registering on our site, as appropriate, you may be asked to enter your name, email address, mailing address, phone number, credit card information, Nationality or other details to help you with your experience.',
              style: TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 20.0),
            const Text(
              'When do we collect information?',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15.0),
            const Text(
             'We collect information from you when you register on our site, place an order, subscribe to a newsletter, respond to a survey, fill out a form, Use Live Chat, Open a Support Ticket or enter information on our site.',
              style: TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 15.0),
            const Text(
              'Provide us with feedback on our products or services other.',
              style: TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 20.0),
            const Text(
              'How do we use your information?',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15.0),
            const Text(
              'We may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:',
              style: TextStyle(fontSize: 16.0),
            ),


            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBulletPoint('To personalize your experience and to allow us to deliver the type of content and product offerings in which you are most interested.'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('To improve our website in order to better serve you.'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('To allow us to better service you in responding to your customer service requests.'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('To administer a contest, promotion, survey or other site feature.'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('To ask for ratings and reviews of services or products'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('To quickly process your transactions'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('To follow up with them after correspondence (live chat, email or phone inquiries)'),
                ]
                    .map((item) => Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: item,
                )).toList(),
              ),
            ),


            const SizedBox(height: 20.0),
            const Text(
              'CHANGES TO THIS PRIVACY POLICY',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20.0),
            const Text(
              'We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it.',
              style: TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 28.0),
            const Text(
              'If our store is acquired or merged with another company, your information may be transferred to the new owners so that we may continue to sell products to you.',
              style: TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 20.0),
            const Text(
              'Contacting Us',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'If there are any questions regarding this privacy policy, you may contact us using the information below.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 25.0),
            const Text(
              'www.grocerease.com',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 5.0),
            const Text(
              'info.grocerease@gmail.com',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 5.0),
            const Text(
              'GrocerEase Vegetables & Fruits Co. (L.L.C.)',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 5.0),
            const Text(
              'P.O. Box: IIUI ISLAMABAD, PAKISTAN',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 5.0),
            const Text(
              'Phone :- +923305237430',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 22.0),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.only(right: 9 , top: 6),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}