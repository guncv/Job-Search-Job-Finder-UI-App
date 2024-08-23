import 'package:flutter/material.dart';
import 'package:job_search_ui/styles/style.dart';

class SearchJob extends StatelessWidget {
  const SearchJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 52,
        vertical: 8
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 24
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kBluePrimary
      ),
      child: Row(
        children: [
          Expanded(child: child)
        ],
      ),
    ),;
  }
}