import 'package:fitness_tracker/constants/colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
                style: const TextStyle(
                  color: greyColor,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: cardBackgroundColor,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),

                  labelStyle: const TextStyle(
                    color: Color(0xFF6200EE),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),

                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 21,
                  ),
                ),
            ),
        ),
      ],
    );
  }
}
