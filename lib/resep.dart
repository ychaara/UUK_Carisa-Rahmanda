class Recipe {
  final String name;
  final List<String> ingredients;
  final String instructions;
  final String image;

  Recipe({
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.image,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
  final ingredientsJson = json['ingredients'];
  List<String> ingredientsList = [];

  if (ingredientsJson is List) {
    ingredientsList = ingredientsJson.map((item) => item.toString()).toList();
  }

  // instructions bisa berupa List atau String
  String instructionsText = '';
  if (json['instructions'] is List) {
    instructionsText = (json['instructions'] as List).map((e) => e.toString()).join('\n');
  } else if (json['instructions'] is String) {
    instructionsText = json['instructions'];
  }

  return Recipe(
    name: json['name'] ?? '',
    ingredients: ingredientsList,
    instructions: instructionsText,
    image: json['image'] ?? '', 
  );
}
}
