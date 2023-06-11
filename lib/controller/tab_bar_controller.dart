import 'package:get/get.dart';

class tabcontroller extends GetxController{
  var livestreaming=true.obs;
  var brandsinger=false.obs;
  var index=0.obs;

  live(){
    livestreaming.value=true;
    brandsinger.value=false;
    update();

  }
  brand(){
     livestreaming.value=false;
    brandsinger.value=true;
     update();
  }
  change(int i){
    index.value=i;
    update();
  }
}