import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),

        // backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
        body: Padding(
          padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "About Us",
                      style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '''       Welcome to Home Rental App – your gateway to luxurious and unforgettable home rental experiences. Whether you're looking for a serene beachfront villa, a cozy mountain retreat, or an urban penthouse in the heart of the city, we have the perfect place for you.''',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Who We Are",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
                Text(
                  '''       At Home Rental App, we are passionate about providing our customers with the best rental properties that combine comfort, style, and luxury. Our curated collection of homes spans the most desirable locations across the USA, offering something for every type of traveler.''',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "What We Offer",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Diverse Selection of Properties : ',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text:
                            'From tranquil lakeside retreats to vibrant city apartments, we offer a wide variety of rental homes to suit your needs. Each property is handpicked to ensure it meets our high standards of quality and comfort.',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '''

Premium Amenities : ''',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text:
                            'Enjoy the best amenities during your stay, including private pools, beachfront access, mountain views, and modern interiors. Our homes are equipped with everything you need to feel at home, no matter where you are.',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '''

Easy Booking : ''',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text:
                            'Our user-friendly app makes it simple to browse, book, and manage your reservations. With detailed descriptions, high-quality images, and transparent pricing, finding your next dream vacation home is a breeze.',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '''

Personalized Experiences : ''',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text:
                            'We believe that every trip should be special. That’s why we offer personalized recommendations and services to help you create memorable experiences tailored to your preferences.',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Satisfaction",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
                Text(
                  '''       Your satisfaction is our priority. Our support team is available around the clock to assist you with any questions or concerns you may have. From booking to checkout, we are here to ensure your stay is as smooth and enjoyable as possible.''',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
