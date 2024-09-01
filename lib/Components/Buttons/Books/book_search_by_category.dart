import 'package:flutter/material.dart';

class BookCategorySelection extends StatefulWidget {
  @override
  _BookCategorySelectionState createState() => _BookCategorySelectionState();
}

class _BookCategorySelectionState extends State<BookCategorySelection> {
  String _selectedCategory = "Mystery"; // Default selected category

  void _onCategorySelected(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            BookSearchByCategory(
              category: "Mystery",
              isSelected: _selectedCategory == "Mystery",
              onPressed: () => _onCategorySelected("Mystery"),
            ),
            const SizedBox(width: 10),
            BookSearchByCategory(
              category: "Sci-fi",
              isSelected: _selectedCategory == "Sci-fi",
              onPressed: () => _onCategorySelected("Sci-fi"),
            ),
            const SizedBox(width: 10),
            BookSearchByCategory(
              category: "Biography",
              isSelected: _selectedCategory == "Biography",
              onPressed: () => _onCategorySelected("Biography"),
            ),
            const SizedBox(width: 10),
            BookSearchByCategory(
              category: "History",
              isSelected: _selectedCategory == "History",
              onPressed: () => _onCategorySelected("History"),
            ),
            const SizedBox(width: 10),
            BookSearchByCategory(
              category: "Business",
              isSelected: _selectedCategory == "Business",
              onPressed: () => _onCategorySelected("Business"),
            ),
            const SizedBox(width: 10),
            BookSearchByCategory(
              category: "Self-help",
              isSelected: _selectedCategory == "Self-help",
              onPressed: () => _onCategorySelected("Self-help"),
            ),
          ],
        ),
      ),
    );
  }
}

class BookSearchByCategory extends StatelessWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  BookSearchByCategory({
    required this.category,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? Colors.black : Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            category,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
