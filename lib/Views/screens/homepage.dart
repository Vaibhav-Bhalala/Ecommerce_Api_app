import 'package:dummy_json_app/Components/Api_Helper/api_helper.dart';
import 'package:dummy_json_app/Model/api_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiHelper.apiHelper.MultiResponceApi(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            List<ApiModel>? listData = snapshot.data as List<ApiModel>?;

            return ListView.builder(
              itemCount: listData?.length,
              itemBuilder: (ctx, i) {
                return Container(
                  height: 300,
                  width: 300,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "${listData![i].thumbnail}"),
                                    fit: BoxFit.cover)),
                          )),
                      Expanded(flex: 3, child: Container()),
                    ],
                  ),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
