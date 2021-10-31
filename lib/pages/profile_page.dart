import 'package:bwadoctor/pages/main_page.dart';
import 'package:bwadoctor/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          "Hope you are \nfeeling better now!",
          textAlign: TextAlign.center,
          style: primaryTextStyle.copyWith(
            fontSize: 32,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image.asset(
              'assets/user_pic2.png',
              height: 150,
            ),
            SizedBox(height: 16),
            Text(
              'Alessya Camella',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: reguler,
              ),
            ),
            Text(
              'Eye Specialist',
              style: secondaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/rating.png', height: 40),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8,),
                child: Text(
                  "Rate Alessya",
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30,),
        child: Text('Report for Bad Service', style: secondaryTextStyle.copyWith(
          fontSize: 16, fontWeight: light, decoration: TextDecoration.underline,
        ),),
      );
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            bgcolor5,
            bgcolor3,
            bgcolor4,
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            header(),
            content(),
            Spacer(),
            footer(),
          ],
        ),
      ),
    );
  }
}
