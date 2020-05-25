import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc =
      "Experienced Android App Developer (Native) , Novice in the field of Flutter . Learning flutter out of interest";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [const Color(0xff213A50), const Color(0xff071930)],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(70)),
                  child: Image.asset(
                    "assets/profilepic.jpeg",
                    width: 150,
                    height: 150,
                  )),
              SizedBox(
                height: 12,
              ),
              Text(
                "Ajay Kumar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  )),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Connect with Me ",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        _launchURL(
                            "https://www.facebook.com/profile.php?id=100000508648240");
                      },
                      child: Image.asset(
                        "assets/facebook.png",
                        height: 25,
                        width: 25,
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                      onTap: () {
                        _launchURL("https://www.instagram.com/ajay2178kumar/");
                      },
                      child: Image.asset(
                        "assets/instagram.png",
                        width: 25,
                        height: 25,
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                      onTap: () {
                        _launchURL("https://twitter.com/Kumarajax760496");
                      },
                      child: Image.asset(
                        "assets/twitter.png",
                        width: 25,
                        height: 25,
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      const Color(0xffA28340),
                      const Color(0xffBC9A5F)
                    ])),
                child: Text(
                  "Download My Ressume",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }
}
