import 'package:flutter/material.dart';
import 'package:flutter_jobs_app/contents.dart';
import 'package:flutter_jobs_app/widgets/buildField.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});
  static String id = 'ChangePasswordScreen';
  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final formkey = GlobalKey<FormState>();
  var pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/Rectangle 4307.png',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Form(
                  key: formkey,
                  child: Container(
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: kMainColor,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "إنشاء كلمة مرور جديدة",
                            style: TextStyle(
                                color: kMainColor,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, bottom: 40),
                            child: Image.asset(
                              'images/Frame1.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: buildTextField(
                              pass: pass,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: buildTextField(
                              pass: pass,
                            ),
                          ),
                          speech("تتكون من حروف وارقام ورموز"),
                          speech("تتكون بحد اقصى 12 حرف اورقم اورمز"),
                          speech("تختلف بشكل ملحوظ عن كلمات المرور السابقة"),
                          speech(
                              "من السهل عليك تذكره ولكن يصعب على الآخرين تخمينه"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.055,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40.0),
                            child: InkWell(
                              onTap: () {
                                if (formkey.currentState!.validate()) {
                                  bottomSheet(context);
                                }
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Container(
                                  height: 60,
                                  child: Center(
                                    child: Text(
                                      "تغيير",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: kMainColor,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> bottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          padding: EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height * 0.34,
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(
                'images/Frame2.png',
                height: 150,
                width: 150,
              ),
              Text(
                "تم تعيين كلمة المرور الجديدة بنجاح",
                style: TextStyle(fontSize: 20, color: kMainColor),
              ),
              SizedBox(height: 16.0),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      "بدء الاستخدام",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Padding speech(String str) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            str,
            style: TextStyle(color: kMainColor, fontSize: 14),
          ),
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.square,
            size: 6.0,
            color: kMainColor,
          ),
        ],
      ),
    );
  }
}
