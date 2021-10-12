import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: 353,
        height: 313,
        margin: EdgeInsets.only(top: 55),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/getting_started.png',
            ),
          ),
        ),
      );
    }

    Widget text1() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Terapi dimanapun\ndan kapanpun',
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget text2() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Memudahkan pasien untuk melakukan\nkonsultasi kapan saja dan dimana saja',
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        width: 302,
        height: 55,
        margin: EdgeInsets.only(top: 29),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/sign-in');
          },
          style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            'Mulai',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 35,
        ),
        child: Column(
          children: [header(), text1(), text2(), button()],
        ),
      ),
    );
  }
}
