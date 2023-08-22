import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_home_page/features/common/widget/custom_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('📱 build HomeScreen ');

    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final typography = theme.textTheme;

    return SafeArea(
      child: CustomScaffold(
        backgroundColor: colors.background,
        body: ListView(
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/profilePic.jpg'),
            ),
            Text(
              '佐川 優成',
              style: typography.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                '作成中...',
                style: typography.displayLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(thickness: 0.5),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.envelope),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.twitter),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.instagram),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class FooterLink extends StatelessWidget {
  const FooterLink({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(color: Colors.white, fontWeight: FontWeight.normal),
    );
  }
}
