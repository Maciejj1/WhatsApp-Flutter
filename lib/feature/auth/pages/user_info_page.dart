import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/common/extension/custom_theme_extension.dart';
import 'package:untitled/feature/auth/widgets/custom_text_field.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          'Profile info',
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Text(
              'Pleas provide your name and an optional profile photo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(26),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: context.theme.photoIconBgColor),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 3, right: 3),
                child: Icon(Icons.add_a_photo_rounded, size: 48, color: context.theme.photoIconColor,),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(width: 10,),
                CustomTextField(
                  // controller: codeController,
                  hintText: '- - -  - - -',
                  fontSize: 30,
                  autoFocus: true,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    if (value.length == 6) return;
                  },
                  onTap: () {},
                ),
                const SizedBox(width: 10,),
                Icon(Icons.emoji_emotions_outlined, color: context.theme.photoIconColor,),
                const SizedBox(width: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
