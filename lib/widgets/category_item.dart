import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final void Function()? onSelectedCategory;

  const CategoryItem({
    super.key,
    required this.category,
    required this.onSelectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectedCategory,
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withValues(alpha: .38),
              category.color.withValues(alpha: 0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
    // return InkWell(
    //   // onTap: onTap,
    //   child: Card(
    //     elevation: 10,
    //     color: category.color,
    //     margin: EdgeInsets.all(10),
    //     child: Center(
    //       child: Text(
    //         category.title,
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontSize: 20,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
