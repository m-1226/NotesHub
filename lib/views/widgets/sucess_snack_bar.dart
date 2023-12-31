import 'package:flutter/material.dart';

void showSuccessSnackBar(
    ScaffoldMessengerState scaffoldMessenger, String text) {
  scaffoldMessenger.showSnackBar(
    SnackBar(
      elevation: 8,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 4),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.check, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () {
              scaffoldMessenger.hideCurrentSnackBar();
            },
          ),
        ],
      ),
    ),
  );
}
