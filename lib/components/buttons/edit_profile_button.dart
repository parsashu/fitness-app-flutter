import 'package:flutter/material.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},  
      style: ElevatedButton.styleFrom(
        elevation: 2,
        backgroundColor: Colors.blue,
        minimumSize: const Size(190, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), 
        ),
      ),
      child: Text(
        'ویرایش پروفایل',
        style: TextStyle(
          color: Theme.of(context).colorScheme.surface, 
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
