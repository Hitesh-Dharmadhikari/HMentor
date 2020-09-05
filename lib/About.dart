import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hmentor_completed/banner.dart';
import 'package:hmentor_completed/feedback.dart';
import 'package:share/share.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
        title:  Text(
          "About Us",
          style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                  shadows: [
                Shadow(
                    blurRadius: 6.0,
                    color: Colors.black,
                    offset: Offset(5.0, 5.0))
              ])),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.3, 0.6, 0.9],
              colors: [
                Colors.deepOrange[300],
                Colors.deepOrange[200],
                Colors.deepPurple[200],
                Colors.deepPurple[300],
              ],
            ),
          ),
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(10.8),
                elevation: 20,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: const AssetImage('assets/logo.jpg'),
                            maxRadius: 35,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child:const Text(
                                  "HMentor",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                             const Text("© 2020 String~H"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0, left: 10),
                          child:const Icon(
                            Icons.error_outline,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           const   Text(
                                "Version",
                                style: TextStyle(fontSize: 20),
                              ),
                          const    Text("1.0.0+1")
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0, left: 10),
                            child: const Icon(
                              Icons.code,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               const Text(
                                  "Size",
                                  style: TextStyle(fontSize: 20),
                                ),
                              const  Text("20.8 MB")
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.8),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        "About App",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const Text(
                          "Our primary objective is to assist and guide students with well researched, categorised, and quality project topics with proper description at free of cost. Most of the project topics are real-word problems took from various global events like Smart India Hackathon. Topics are well categories as per their complexity level and as per the type of development. Students can ask queries to the mentor from application. We are helping the student to solve his/her problem by providing virtual mentorship if students ask the query. \"We are not claiming any type of copyright\". The data we have collected is from other websites and from various portals. Hence the \"copyright is to the respective owner of data.\""),
                  const Text("As per our slogan \"Let's Start from Zero\", we are capable of providing help to the student for their projects from zero level. Student can ask their Doubts, Queries, Question related to their projects from \"Ask to HMentor\" page. From basic software to the hardest real-word applications are available on this app. We are always ready to help student with our experience and knowledge. For any suggestions and Feedback students can post their views on \"Feedback and Suggestion\" page.")
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.8),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const  Text(
                        "Subject Experts",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                              const AssetImage('assets/Harshali.jpg'),
                              maxRadius: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              const  Text(
                                    "Harshali Tayade (IT Expert)",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                              const Text("harshalitayade21@gmail.com"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: CircleAvatar(
                              backgroundImage:const AssetImage('assets/Hitesh.jpg'),
                              maxRadius: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                             const   Text(
                                  "Hitesh Dharmadhikari (Application Expert)",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                             const   Text("d.hitesh1999@gmail.com")
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: CircleAvatar(
                                backgroundImage:const AssetImage('assets/Vinay.jpg'),
                                maxRadius: 25,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                               const   Text(
                                    "Vinay Badgujar (Electronics Experts)",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                              const    Text("hexnewtron@gmail.com")
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.8),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   const   Text(
                        "Share & Feedback",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          children: [
                         const   Icon(
                              Icons.share,
                              color: Colors.black,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    child: const Text(
                                      "Share to your Friend",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onTap: () {
                                      final RenderBox box =
                                          context.findRenderObject();
                                      Share.share("https://play.google.com/store/apps/details?id=com.wordpress.learninghope302357229.hmentor_completed",
                                          sharePositionOrigin:
                                              box.localToGlobal(Offset.zero) &
                                                  box.size);
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 25),
                        child: Row(
                          children: [
                            Icon(
                              Icons.feedback,
                              color: Colors.black,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                              ),
                              child: InkWell(
                                child: Text(
                                  "Feedback and Suggestion",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => feedback()),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BannerAdPage()
            ],
          ),
        ),
      ),
    );
  }
}
