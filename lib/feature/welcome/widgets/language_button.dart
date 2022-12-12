
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/common/extension/custom_theme_extension.dart';

import '../../../common/utils/coloor.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighligh,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: Coloors.greenDark,
              ),
              SizedBox(width: 10),
              Text(
                'English',
                style: TextStyle(
                  color: Coloors.greenDark,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.keyboard_arrow_down,
                color: Coloors.greenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
