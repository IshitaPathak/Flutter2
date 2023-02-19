import 'package:flutter/material.dart';
import 'package:bhu_app/pages/contact.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference userDataCollection =
    FirebaseFirestore.instance.collection('Users');
late Stream<QuerySnapshot> dataItems;
// two main ways to get the list of documents
// 1. call get() collection reference, this will gives a Future (we can't listen to Future)
// 2. by calling function snapshots() on collection reference, and this returns stream

class MyData extends StatefulWidget {
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  initState() {
    super.initState();
    dataItems = userDataCollection.snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data'),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: dataItems,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            if (snapshot.connectionState == ConnectionState.active) {
              QuerySnapshot? querySnapshot = snapshot.data;
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
