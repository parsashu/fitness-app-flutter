import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:improwave/components/buttons/my_back_button.dart';
import 'package:improwave/components/buttons/my_button.dart';
import 'package:improwave/components/containers/editable_avatar.dart';
import 'package:improwave/components/textfields/my_textfield.dart';
import 'package:improwave/components/texts/edit_hint_text.dart';
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
        
            const SizedBox(height: 60),
        
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
              numberKeyboard: true,
            ),
        
            const SizedBox(height: 20),
        
            // Bio
            const EditHintText(text: 'درباره'),
            MyTextfield(
              controller: bioController,
              numberKeyboard: false,
              bio: true,
            ),
        
            const SizedBox(height: 150),
        
            MyButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'ذخیره',
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
