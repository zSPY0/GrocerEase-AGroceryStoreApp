import 'package:flutter/material.dart';
import 'package:grocerease/screens/more_screen/more_screen.dart';


class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
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
              'ABOUT US',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'The genesis of GrocerEase dates to 2021 with our humble beginnings in the trade of fresh vegetables and fruits. With decades of experience in sustaining the vibrant international sourcing network for fruits and vegetables of the highest quality standards from the best farms all around the world, we strive to be the most trusted source for healthy food in Pakistan',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'Welcome to GrocerEase, your ultimate mobile app for seamless online grocery shopping and doorstep delivery. With a user-friendly interface and a wide range of products, we make grocery shopping a breeze. Experience convenience like never before as we bring fresh, high-quality groceries right to your doorstep, saving you time and effort. Shop with ease and enjoy the best online grocery experience with GrocerEase.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'GrocerEase Products include:',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBulletPoint('Fresh Vegetables - Regular & Organic Vegetables, Cut & Sanitized Vegetables'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('Fresh Fruits - Cut Fruits & Fruit Platters and Fruit Baskets'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('GrocerEase Fresh Juices (no added sugar, no preservatives, just fruit in a bottle!) - Single Fruit Juices, Fresh Blends, Keto Juices, Immunity-boosting Juice Shots (60ml)'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('GrocerEase Ice-creams'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('Fresh Juice-popsicles'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('Salads & Crudités'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('Dairy & Eggs'),
                  const SizedBox(height: 2,),
                  _buildBulletPoint('Bakery and more!'),
                ].map((item) => Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: item,
                )).toList(),
              ),
            ),

            const SizedBox(height: 20.0),
            const Text(
              'With the new online shopping experience, GrocerEase is your go-to online grocer for the freshest fruits, vegetables, fruit juices, salads, ice creams, juice-pops & more. A convenient, user friendly e-grocery store, we bring to you the largest variety of fresh produce from the best sources around the world. With same day or next day delivery via hygienic, food-grade refrigerated vehicles, we ensure freshness & quality remain intact till your doorstep',
              style: TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 28.0),
            const Text(
              'Order from your smart phone or your laptop in a jiffy and enjoy our fresh juices, ice creams and ice pops too!',
              style: TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 12.0),
            const Center(
              child: Text(
                'GrocerEase - Serving you the best of Fresh',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 18.0),
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