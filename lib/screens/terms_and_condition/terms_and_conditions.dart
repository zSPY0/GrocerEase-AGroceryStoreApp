import 'package:flutter/material.dart';
import 'package:grocerease/screens/more_screen/more_screen.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms and Conditions',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
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
          children: const [
            Text(
              'TERMS AND CONDITIONS OF SERVICE',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'PLEASE READ THIS TERMS OF SERVICE AGREEMENT CAREFULLY. BY USING THIS WEBSITE OR ORDERING PRODUCTS FROM THIS WEBSITE YOU AGREE TO BE BOUND BY ALL OF THE TERMS AND CONDITIONS OF THIS AGREEMENT.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'OVERVIEW',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'This website is operated by GrocerEase Group. Throughout the site, the terms “we”, “us” and “our” refer to Barakat Group. Barakatfresh.ae offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.\n\nBy visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.\n\nPlease read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.\n\nAny new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.\n',
              style: TextStyle(color: Colors.black),
            ),

            //section 1

            SizedBox(height: 16),
            Text(
              'SECTION 1 - ONLINE STORE TERMS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'By agreeing to these Terms of Service, grocerease.com wishes to ensure that its members can form legally binding contracts and further that minors do not purchase unsuitable content. Therefore, membership of the site is not available to persons under the age of 18 years. You represent that you are 18 years of age or over the age of 18 years before you become a member of the Site.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Not only that, but you must not transmit any worms or viruses or any code of a destructive nature.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'A breach or violation of the Terms will result in an immediate termination of your Services.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'First Time Customer Offer (15% on first 3 orders)',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 5.0),
            Text(
              'This offer is applicable only for first time registered customers. For non-registered users, this offer shall not be applicable.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Also, product/s which are on offers or discounts shall not be subjected to further discounting. Discount coupons and gift vouchers which are applicable on the entire order shall not be extended to already discounted items. Order level discounts are only valid on full priced products.',
              style: TextStyle(fontSize: 14.0),
            ),

            //section 2

            SizedBox(height: 20.0),
            Text(
              'SECTION 2 - GENERAL CONDITIONS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'We reserve the right to refuse service to anyone for any reason at any time.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'You understand that your content, (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.',
              style: TextStyle(fontSize: 14.0),
            ),
            //section 3 code goes here.

            SizedBox(height: 20.0),
            Text(
              'SECTION 3 - ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10.0),
            Text(
              'We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or timelier sources of information. Any reliance on the material on this site is at your own risk.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.',
              style: TextStyle(fontSize: 14.0),
            ),


            //section 4 code goes here

            SizedBox(height: 20.0),
            Text(
              'SECTION 4 - MODIFICATIONS TO THE SERVICE AND PRICES',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10.0),
            Text(
              'Prices for our products are subject to change without notice.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.',
              style: TextStyle(fontSize: 14.0),
            ),

            //section 5 code goes here

            SizedBox(height: 20.0),
            Text(
              'SECTION 5 - THIRD-PARTY LINKS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Certain content, products and services available via our Service may include materials from third-parties.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy, and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third party\'s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third party.',
              style: TextStyle(fontSize: 14.0),
            ),


            //section 6 code goes here.

            SizedBox(height: 20.0),
            Text(
              'SECTION 6 - USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'If, at our request, you send certain specific submissions (for example contest entries) or without a request from us, you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, \'comments\'), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libellous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. Likewise, you may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. Furthermore, you are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.',
              style: TextStyle(fontSize: 14.0),
            ),


            //section 7 code goes here.

            SizedBox(height: 20.0),
            Text(
              'SECTION 7 - PERSONAL INFORMATION',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Your submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.',
              style: TextStyle(fontSize: 14.0),
            ),

            //section 8 code goes here.
            SizedBox(height: 20.0),
            Text(
              'SECTION 8 - PROHIBITED USES',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.',
              style: TextStyle(fontSize: 14.0),
            ),

            //section 9 code goes here.


            SizedBox(height: 20.0),
            Text(
              'SECTION 9 - ENTIRE AGREEMENT',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.\n\nThese Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).\n\nAny ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.',
              style: TextStyle(fontSize: 14.0),
            ),

            //section 10 code goes here.

            SizedBox(height: 20.0),
            Text(
              'SECTION 10 - GOVERNING LAW',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of Pakistan.',
              style: TextStyle(fontSize: 14.0),
            ),


            //section 11 code goes here.


            SizedBox(height: 20.0),
            Text(
              'SECTION 11 - CHANGES TO TERMS OF SERVICE',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'You can review the most current version of the Terms of Service at any time at this page.\n\nWe reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.',
              style: TextStyle(fontSize: 14.0),
            ),


            //section 12.

           SizedBox(height: 20.0,),
            Text(
              'SECTION 12 - CONTACT INFORMATION',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Questions about the Terms of Service should be sent to us at info.grocerease@gmail.com',
              style: TextStyle(fontSize: 14.0),
            ),

          ],
        ),
      ),
    );
  }
}
