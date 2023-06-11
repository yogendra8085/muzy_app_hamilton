import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muzy_app/constant/constvalue/const.dart';
import 'package:sizer/sizer.dart';

import '../utils/reuseable_list_tile.dart';

class BrowseOurMusiciansVideo4 extends StatefulWidget {
  const BrowseOurMusiciansVideo4({Key? key}) : super(key: key);

  @override
  State<BrowseOurMusiciansVideo4> createState() =>
      _BrowseOurMusiciansVideo4State();
}

class _BrowseOurMusiciansVideo4State extends State<BrowseOurMusiciansVideo4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/1689731/pexels-photo-1689731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (contex, index) {
                      return ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              ("https://images.pexels.com/photos/219550/pexels-photo-219550.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            )),
                        title: Text("@Sidhu", style: StyleConst.textStyle16orange),
                        subtitle: Text(
                          "hii",
                          style: StyleConst.textStyle12white,
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: BlurryContainer(
                child: Center(
                  child: TextField(
                    style: StyleConst.textStyle14whitebold,
                    decoration: InputDecoration(
                        hintText: "Say Something...",
                        hintStyle: StyleConst.textStyle14whitebold,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(
                          Icons.send,
                          color: Colors.white,
                        )),
                  ),
                ),
                blur: 6,
                width: double.infinity,
                height: 40,
                elevation: 0,
                color: Colors.transparent,
                padding: const EdgeInsets.all(8),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
