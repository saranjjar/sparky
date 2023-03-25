import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sparky/helper/app_color.dart';

class DefaultContainer extends StatelessWidget {
  Widget widget;
  DefaultContainer(this.widget, {super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: EdgeInsets.only(top: 30.h),
          padding: EdgeInsets.all(20.h.w),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(55.r)),),
              //color: Get.isDarkMode? AppColors.primaryTextColor:Colors.white),
          child: widget,
        ));
  }
}


class DefaultButton extends StatelessWidget {
  String text;
  double? width;

  String? screen;
  double? radius ;
  double? height ;
  DefaultButton({super.key,
    required this.text,
    this.width,
    this.height=60,
    this.radius=5,
    this.screen

  });
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!.r)),
        color:  AppColors.primarySwatchColor,
        height: height?.h,
        onPressed: () {
          if(screen=='/') {
            Get.offAllNamed(screen!);
          } else {
            Get.toNamed(screen!);
          }
        },
        child: Text(
          text.tr,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.sp),
        ),
      ),
    );
  }
}
class DefaultCard extends StatelessWidget {
  String text;
  double? width;


  double? radius ;
  double? height ;
  DefaultCard({super.key,
    required this.text,
    this.width,
    this.height=60,
    this.radius=5,


  });
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: height,
      child: Material(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!)),
        color:  AppColors.primarySwatchColor,


        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.sp),
          ),
        ),
      ),
    );
  }
}

class DefaultTextForm extends StatelessWidget {
  TextEditingController textEditingController;
  TextInputType textInputType;
  ValueChanged<String>? onFieldSubmitted;
  ValueChanged<String>? onChanged;
  bool isPassword;
  FormFieldValidator<String> validator;
  GestureTapCallback? onTap;
  String? label;
  IconData? iconData;
  IconData? iconDataSuffixx;
  bool isenable;
  bool hasPrefixIcon;
  bool filled;
  bool readOnly;
  DefaultTextForm(
      {super.key,
        required this. textEditingController,
        required this. textInputType,
        this. onFieldSubmitted,
        this. onChanged,
        this. onTap,
        this.isPassword = false,
        required this.validator,
        this. label,
        this. iconData,
        this. iconDataSuffixx,
        this. isenable = true,
        this. hasPrefixIcon = false,
        this.filled=false,
        this.readOnly=false});
  @override
  Widget build(BuildContext context) {
    return     TextFormField(
      style: context.theme.textTheme.headline2?.copyWith(
          color:Get.isDarkMode?Colors.white: AppColors.dark1
      ),textAlign:TextAlign.start,readOnly:readOnly ,
      controller: textEditingController,
      keyboardType: textInputType,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      validator: validator,
      onTap: onTap,
      enabled: isenable,
      obscureText: isPassword,
      decoration: InputDecoration(
          label: Text(label??''),
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xffA5A5A5),
          ),
          // icon: Icon(iconData),
          filled: filled,
          fillColor: filled?AppColors.primarySwatchColor:null,
          prefixIcon: hasPrefixIcon ? Icon(iconData) : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xffCBD4EB)))),
    );

  }
}




