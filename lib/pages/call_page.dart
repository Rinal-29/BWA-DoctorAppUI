import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bwadoctor/theme.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 24,
            left: 16,
            right: 16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/user_pic2.png',
                width: 52,
              ),
              SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alessya Camella',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      'Eye Specialist',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: Text('End Call'),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget call() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/image1.png',
          fit: BoxFit.fitWidth,
        ),
      );
    }

    Widget face() {
      return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          width: 130,
          height: 170,
          margin: EdgeInsets.only(
            left: 16,
            bottom: 20,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: Image.asset(
              'assets/image2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          call(),
          header(),
          face(),
        ],
      ),
    );
  }
}
