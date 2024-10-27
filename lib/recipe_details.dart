import 'package:flutter/material.dart';

import 'data/model/Recipe.dart';

class RecipeDetails extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetails({
    super.key,
    required this.recipe,
  });

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Image(image: AssetImage(widget.recipe.imageUrl)),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(widget.recipe.imageUrl),
            ),
            SizedBox(height: 14),
            Text(
              widget.recipe.label,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
