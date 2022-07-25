import 'package:flutter/material.dart';
import 'package:mirac_flutter_study/services.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeService.getData();
  }

  HomeService homeService = HomeService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: homeService.homeResponseList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(homeService.homeResponseList[index].title ?? ""),
        ),
      ),
    );
  }
}
