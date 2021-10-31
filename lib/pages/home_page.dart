import 'package:bwadoctor/pages/call_page.dart';
import 'package:bwadoctor/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 24,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/user_pic.png',
            width: 52,
          ),
          SizedBox(width: 12),
          Text(
            'Howdy, Tamara!',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: reguler,
            ),
          ),
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find the professional doctor, \nquickly and promising.',
            style: primaryTextStyle.copyWith(
              fontSize: 20,
              fontWeight: medium,
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: bgcolor4,
              borderRadius: BorderRadius.circular(21),
            ),
            padding: EdgeInsets.symmetric(horizontal: 11),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: secondaryTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: "Search by specialist",
                      hintStyle: secondaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Icon(Icons.search)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget category() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Browse by category",
            style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: reguler,
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 111,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: bgcolor4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/old_man.png',
                      width: 38,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Tua Renta',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 111,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: bgcolor4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/nutritions.png',
                      width: 38,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Nutrisi',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 111,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: bgcolor4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/heart.png',
                      width: 38,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'hati',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 111,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: bgcolor4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/medical.png',
                      width: 38,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Medicine',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 111,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: bgcolor4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/eye.png',
                      width: 38,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Mata',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 111,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: bgcolor4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/body_fat.png',
                      width: 38,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Body Fat',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget doctor(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        bottom: 30,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our top doctors',
            style: primaryTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage()));
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/user_pic2.png',
                  width: 52,
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alessya Camella',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      'Eye Specialist',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          Row(
            children: [
              Image.asset(
                'assets/user_pic3.png',
                width: 52,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jamal Luddin',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: reguler,
                    ),
                  ),
                  Text(
                    'Simple Specialist',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
      child: ListView(
        children: [
          header(),
          search(),
          category(),
          doctor(context),
        ],
      ),
    );
  }
}
