import 'package:cultbase/utils/user_preferences.dart';
import 'package:cultbase/widget/numbers_widget.dart';
import 'package:cultbase/widget/profile_widget.dart';
import 'package:flutter/material.dart';
import '../../model/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

const double coverHeight = 200;

class _ProfilePageState extends State<ProfilePage> {
  final double top = coverHeight / 4;

  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(coverHeight),
        child: AppBar(
          flexibleSpace: buildImagesProfile(user),
        ),
      ),
      body: ListView(children: <Widget>[
        //buildImagesProfile(user),
        buildName(user),
        const SizedBox(height: 18),
        const NumbersWidget(),
        const SizedBox(height: 24),
        buildBio(user),
      ]),
    );
  }

  Stack buildImagesProfile(User user) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        buildBackgroundImage(),
        Positioned(
          top: top,
          child: ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
        ),
      ],
    );
  }

  Widget buildBackgroundImage() {
    const src =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7tfYuBDOf4WBg5Ez3x3dqDbKFxov4tTc27g&usqp=CAU';
    return Opacity(
      opacity: 0.5,
      child: Container(
        color: Colors.black,
        child: Image.network(
          width: double.infinity,
          height: coverHeight,
          src,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            "Age: ${user.age}",
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildBio(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Biography',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              user.about,
              style: const TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
}
