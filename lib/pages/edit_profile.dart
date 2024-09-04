import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:improwave/components/buttons/my_back_button.dart';
import 'package:improwave/components/buttons/my_button.dart';
import 'package:improwave/components/containers/editable_avatar.dart';
import 'package:improwave/components/textfields/my_textfield.dart';
import 'package:improwave/utils/select_image.dart';

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
  Uint8List? _image;

  @override
  Widget build(BuildContext context) {
    // Method to select an image
    void selectImage() async {
      Uint8List? img = await pickImage(ImageSource.gallery)!;
      setState(() {
        _image = img;
      });
    }

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile picture
            EditableAvatar(
              backgroundImage: (_image != null)
                  ? MemoryImage(_image!)
                  : const AssetImage('assets/images/example_profile.png'),
              editIconData: Icons.add_a_photo,
              onPressed: selectImage,
            ),

            const SizedBox(height: 80),

            // Name
            MyTextfield(
              label: 'نام و نام خانوادگی',
              controller: nameController,
              numberKeyboard: false,
            ),

            const SizedBox(height: 50),

            // Phone number
            MyTextfield(
              label: 'شماره تلفن',
              controller: phoneController,
              numberKeyboard: true,
            ),

            const SizedBox(height: 50),

            // Bio
            MyTextfield(
              label: 'درباره',
              controller: bioController,
              numberKeyboard: false,
              bio: true,
            ),

            const SizedBox(height: 180),

            MyButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'ذخیره',
            ),
          ],
        ),
      ),
    );
  }
}
