import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ReviewScreen extends StatelessWidget {
  final List<Map<String, dynamic>> reviews = [
    {
      'reviewText': 'جميل جدا والخامة رائعة',
      'reviewDescription': 'خامة الملابس تفوق الخيال ما اروع هذه الملابس! بالتأكيد سوف اطلب منكم مرة أخرى .',
      'date': '20/12/2024 ',
      'rating': 2.1,
    },
    {
      'reviewText': 'جميل جدا والخامة رائعة',
      'reviewDescription': 'This clothes so good and fits me .your brand are so fast Delivered in my place.',
      'date': '20/12/2024',
      'rating': 3.2,
    },
    {
      'reviewText': 'جميل جدا والخامة رائعة',
      'reviewDescription': 'This Food so tasty & delicious. Breakfast \nso fast Delivered in my place. ',
      'date': '20/12/2024',
      'rating': 5.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    bool isArabic = locale.languageCode == 'ar';

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                  onPressed: () {
                    Get.back(); // Handle back button press
                  },
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 190),
            Text(
              'الـمـراجـعــات',
              style: TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.bold),
              textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return ReviewItem(
            reviewText: review['reviewText'],
            reviewDescription: review['reviewDescription'],
            date: review['date'],
            rating: review['rating'].toDouble(),
            isArabic: isArabic,
          );
        },
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final String reviewText;
  final String reviewDescription;
  final String date;
  final double rating;
  final bool isArabic;

  const ReviewItem({
    Key? key,
    required this.reviewText,
    required this.reviewDescription,
    required this.date,
    required this.rating,
    required this.isArabic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int numberOfStars = rating.round(); // Round up to the nearest whole number

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 16),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF6F8FA),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4), // Add some space between the text
                  Text(
                    date,
                    style: TextStyle(
                      color: Color(0xFF737782),
                      fontSize: 12,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                    textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                  ),
                  SizedBox(height: 16),
                  Text(
                    reviewText,
                    style: TextStyle(
                      color: Color(0xFF32343E),
                      fontSize: 14,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w700, // Make the text bold
                    ),
                    textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: List.generate(
                      5,
                          (index) => Icon(
                        index < numberOfStars ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    reviewDescription,
                    style: TextStyle(
                      color: Color(0xFF737782),
                      fontSize: 12,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.bold, // Make the text bold
                    ),
                    textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
          Container(
            width: 43,
            height: 43,
            decoration: BoxDecoration(
              color: Color(0xFF98A8B8),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
