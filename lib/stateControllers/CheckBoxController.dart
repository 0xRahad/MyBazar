import 'package:get/get.dart';

class CheckboxController extends GetxController{

  RxBool isChecked = false.obs;

  makeChecked(value){
    isChecked.value = value;
  }

}