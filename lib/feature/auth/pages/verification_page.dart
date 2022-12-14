import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/common/extension/custom_theme_extension.dart';
import 'package:untitled/common/helper/show_alert_dialog.dart';
import 'package:untitled/common/widgets/custom_elevated_button.dart';
import 'package:untitled/common/widgets/custom_icon_button.dart';
import 'package:untitled/feature/auth/widgets/custom_text_field.dart';

class VerificationPage extends StatefulWidget {
  static const String id = 'verification';


  const VerificationPage({
    super.key,
  });

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late TextEditingController codeController;
  late TextEditingController verification;



  @override
  void initState() {
    codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Verify your number',
          style: TextStyle(color: context.theme.authAppbarTextColor),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                      color: context.theme.greyColor,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                          text: "Próbujesz zarejestrować się , czekaj"
                              "zanim poprosisz o SMS lub połączenie"),
                      TextSpan(
                        text: "Zły numer?",
                        style: TextStyle(color: context.theme.blueColor),
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: CustomTextField(
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
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Enter 6-cyfrowy kod',
              style: TextStyle(color: context.theme.greyColor),
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.message, color: context.theme.greyColor,),
                const SizedBox(width: 20,),
                Text(
                  'Wyslij SMS jeszcze raz' , style: TextStyle(color: context.theme.greyColor) ,)
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.call, color: context.theme.greyColor,),
                const SizedBox(width: 20,),
                Text('Zadzwon po kod', style: TextStyle(color: context.theme.greyColor),)
              ],
            ),
            const SizedBox(height: 10,),
            Divider(
              color: context.theme.blueColor!.withOpacity(0.2),
            ),
            const SizedBox(height: 20,),
            Text("Zatwierdz kod", style: TextStyle(
              color: context.theme.greyColor,
              
            ),)
            
          ],
        ),
      
      ),  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:CustomElevatedButton(
          onPressed: () {},
          text: "Wyślij kod",
          buttonWidth: 120,
        )
    );
  }
}
