import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../constant/assetspath/assets_path.dart';
import '../constant/constvalue/const.dart';
import '../utils/reuseab_setList_container.dart';
import '../utils/reuseable_live_streaming_container.dart';

class SetListPage extends StatefulWidget {
  const SetListPage({super.key});

  @override
  State<SetListPage> createState() => _SetListPageState();
}

class _SetListPageState extends State<SetListPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorConst.black,
      body:  Column(
        children: [
          Expanded(
            child: GridView.count(  
              shrinkWrap: true,
                      crossAxisCount: 2,  
                      crossAxisSpacing: 2.0,  
                      mainAxisSpacing: 2.0,  
                      children: List.generate(20, (index) {  
                        return  
                        Reuseablelivesetlist();
                      }  
                      )  
                  ),
          ),
        ],
      )  
        )  ;;
  }
}