import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/my_back_button.dart';
import 'package:improwave/components/buttons/my_button.dart';
import 'package:improwave/components/containers/editable_profile_pic.dart';
import 'package:improwave/components/textfields/my_textfield.dart';
import 'package:improwave/components/texts/edit_hint_text.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  // text editing controllers
  final nameController = TextEditingController(text: 'Farbod Hajian');
  final phoneController = TextEditingController(text: '09919578599');
  final bioController = TextEditingController(
      text: 'دارای قهرمانی کشوری و مدرک بین المللی مربی گری.');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          leading: MyBackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        children: [
          // Profile picture
          const EditableProfilePic(
            editIconData: Icons.add_a_photo,
          ),

          const SizedBox(height: 80),

          // Name
          const EditHintText(text: 'نام و نام خانوادگی'),
          MyTextfield(
            controller: nameController,
            numberKeyboard: false,
          ),

          const SizedBox(height: 20),

          // Phone number
          const EditHintText(text: 'شماره تلفن'),
          MyTextfield(
            controller: phoneController,
            numberKeyboard: false,
          ),

          const SizedBox(height: 20),

          // Bio
          const EditHintText(text: 'درباره'),
          MyTextfield(
            controller: bioController,
            numberKeyboard: false,
            counter: true,
          ),

          const Spacer(),

          MyButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: 'ذخیره',
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
