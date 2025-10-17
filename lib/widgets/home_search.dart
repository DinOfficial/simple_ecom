import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          hintText: 'Search Anything ...',
          prefixIcon: Icon(Icons.search, size: 30),
        ),
      ),
    );
  }
}