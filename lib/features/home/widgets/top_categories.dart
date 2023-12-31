import 'package:ecommerce_app_backend/constants/global_variables.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

<<<<<<< HEAD
=======
  // void navigateToCategoryPage(BuildContext context, String category) {
  //   Navigator.pushNamed(context, CategoryDealsScreen.routeName,
  //       arguments: category);
  // }

>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: GlobalVariables.categoryImages.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 75,
        itemBuilder: (context, index) {
          return GestureDetector(
<<<<<<< HEAD
            onTap: () {},
=======
            onTap: () => {},
            // navigateToCategoryPage(
            //   context,
            //   GlobalVariables.categoryImages[index]['title']!,
            // ),
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      GlobalVariables.categoryImages[index]['image']!,
                      fit: BoxFit.cover,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
                Text(
                  GlobalVariables.categoryImages[index]['title']!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
