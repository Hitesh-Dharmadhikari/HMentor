import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hmentor_completed/DetaiPage.dart';
class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}
TextEditingController editingController;
class _ListPageState extends State<ListPage> {
  int counter = 1;
  Future Quota;
  navigateToDetail(DocumentSnapshot post) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailPage(
                  post: post,
                )));
  }
  Future getPost0() async {
    var firestore = Firestore.instance;

    QuerySnapshot mixh =
        await firestore.collection("Mobile Based Simple").getDocuments();
    return mixh.documents;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Quota = getPost0();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Container(
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
        child: FutureBuilder(
            future: Quota,
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/LOAD.gif"),
                );
              } else {
                return ListView.builder(
                    padding: const EdgeInsets.only(
                        bottom: kFloatingActionButtonMargin + 200),
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 20,
                        margin: EdgeInsets.all(10.8),
                        color: Colors.white,
                        child: ListTile(
                          title: Text(
                            "$index. " + snapshot.data[index].data["Problem Statement"],
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Required Skills:- " +
                                    snapshot.data[index].data["Required Skill"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                              ),
                              RaisedButton.icon(
                                  onPressed: () =>
                                      navigateToDetail(snapshot.data[index]),
                                  label: Text("SeeMore"),
                                  icon: Icon(Icons.arrow_right))],
                          ),
                        ),
                      );
                    });}
            }),
      ),
    );
  }
}
