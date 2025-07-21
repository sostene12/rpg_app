import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const StyledTitle("Character Name")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // basic info - image , vocation, slogan

            // weapon abilities

            // stats & skills

            // save button
          ],
        ),
      ),
    );
  }
}
