import 'package:flutter/material.dart';

class TasbehScreen extends StatefulWidget {
  TasbehScreen({Key? key}) : super(key: key);

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {

  int selectindex = 0;             // the first step define the counter to count all case in function
  int index = 0;                   // the second step define counter to count one case one case
  int alhamdulillah = -33;
  int allahakbr = -66;

  String title = 'سبحان الله ';

  void increese() {
    setState(() {
      selectindex++;
      index++;
      alhamdulillah++;
      allahakbr++;
    });
  }



  void changetitle() {
    if (selectindex >= 0 && selectindex >= 33) {
      setState(() {
        title = 'سبحان الله ';
      });
    }
    if (selectindex >= 34 && selectindex <= 66) {
      setState(() {
        title = 'الحمد لله';
        index = alhamdulillah;
      });
    }
    if (selectindex >= 67 && selectindex <= 99) {
      setState(() {
        title = 'الله اكبر';
        index = allahakbr;
      });
    }
    if (selectindex == 100) {
      index = 0;
      selectindex = 0;
      alhamdulillah = -33;
      allahakbr = -66;
    }
  }





  @override
  Widget build(BuildContext context) {
    double wightscreen = MediaQuery.of(context).size.width;
    double heightscreen = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: wightscreen * 0.8,
        height: heightscreen * 0.7,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                increese();
                changetitle();
              },
              child: Center(child: Image.asset('assets/images/sebhabody.png')),

            ),

            Text(
              "عدد التسبيحات",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: heightscreen * .02,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffB7935F).withOpacity(0.5),
              ),
              height: 70,
              width: 50,
              child: Center(
                child: Text(
                  '$index',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: heightscreen * .03,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffB7935F),
              ),
              height: 50,
              width: 120,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}