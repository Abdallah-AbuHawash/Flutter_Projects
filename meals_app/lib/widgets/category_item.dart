import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  //final String image;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      // child: Column(
      //       children:<Widget>[
      //         ClipRRect(
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(15),
      //             topRight: Radius.circular(15),
      //           ),
      //           child: Image.network(
      //             image,
      //             height: 78,
      //             width: double.infinity,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         Positioned(
      //           bottom: 20,
      //           right: 10,
      //           child: Container(
      //             width: 300,

      //             padding: EdgeInsets.symmetric(
      //               vertical: 5,
      //               horizontal: 20,
      //             ),
      //             decoration: BoxDecoration(
      //             color: Colors.black54,
      //             borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(15),
      //             bottomRight: Radius.circular(15),
      //           ),
      //             ),
      //             child: Text(
      //               title,
      //               style: TextStyle(
      //                 fontSize: 16,
      //                 color: Colors.white,
      //               ),
      //               softWrap: true,
      //               overflow: TextOverflow.fade,
      //             ),
      //           ),
      //         )
      //       ],

      // ),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.8),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 7),
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
