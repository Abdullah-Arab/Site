import 'package:abdullah_arab_website/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE1EBF2),
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/animated_logo_without_background.gif',
                      width: 300,
                    ),
                    SelectableText(
                      'Abdullah Arab',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SelectableText('Software Developer, Graphic Designer',
                        style: Theme.of(context).textTheme.headline5,
                        textAlign: TextAlign.center),
                    const Divider(),
                  ],
                ),
              ),
              //const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      launch('https://github.com/Abdullah-Arab');
                    },
                    icon: const Icon(
                      MyFlutterApp.github_circled,
                      color: Color(0xff36444D),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      launch('https://www.behance.net/abdo-arab');
                    },
                    icon: const Icon(
                      MyFlutterApp.behance,
                      color: Color(0xff36444D),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      launch(
                          'https://www.linkedin.com/in/abdullah-arab-1451961b6/');
                    },
                    icon: const Icon(
                      MyFlutterApp.linkedin,
                      color: Color(0xff36444D),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      launch('https://www.instagram.com/abdullah_arab22/');
                    },
                    icon: const Icon(
                      MyFlutterApp.instagram,
                      color: Color(0xff36444D),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      launch('https://www.facebook.com/abdo.j.arab');
                    },
                    icon: const Icon(
                      Icons.facebook,
                      color: Color(0xff36444D),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'SOON',
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'قريبــــــــا',
                style: GoogleFonts.tajawal(
                    textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
              ),
              const SizedBox(
                height: 120,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 0,
                    color: Colors.white38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 150,
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.call,
                            size: 48,
                            color: Color(0xff36444D),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SelectableText(
                            '+218 91 850 7076',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff36444D),
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    margin: const EdgeInsets.all(4),
                  ),
                  Card(
                      margin: const EdgeInsets.all(4),
                      elevation: 0,
                      color: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 150,
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.email,
                              size: 48,
                              color: Color(0xff36444D),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            SelectableText(
                              'contact@abdullah-arab.com',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff36444D),
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        )));
  }
}
