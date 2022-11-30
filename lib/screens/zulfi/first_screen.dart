import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final kwhController = TextEditingController();
  final hourPerDayController = TextEditingController();
  final powerOfUsedController = TextEditingController();
  final effiOfSolarController = TextEditingController();
  String displayMsg = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(0.0),
              //   child: Container(color: const Color(0xff023047),
              //       width: double.infinity,
              //       height: 70,
              //       padding: const EdgeInsets.only(top: 10,bottom: 10),
              //       child: Image.asset('assets/images/odlogo.png',)),
              // ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: const Color(0xfffb8500),
                  // borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(color: const Color(0xfffb8500).withOpacity(.2),
                        offset: const Offset(0, 16),
                        spreadRadius: -9)],),
                child: Center(
                  child: Text('Panel Calculator gfdg',
                    style:
                    GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Color(0xff023047), letterSpacing: .5,
                          fontWeight: FontWeight.w600,fontSize: 24),
                    ),
                  ),
                ),),
              const SizedBox(height: 28,),
              myText('Electricity Consumption in KWh'),
              const SizedBox(height: 11,),
              myTextField('KWh',kwhController),
              const SizedBox(height: 16,),
              myText('Peak sun hours per day'),
              const SizedBox(height: 11,),
              myTextField('hrs.per day',hourPerDayController),
              const SizedBox(height: 16,),
              myText('Power of the used panels'),
              const SizedBox(height: 11,),
              myTextField('W',powerOfUsedController),
              const SizedBox(height: 16,),
              myText('Efficiency of the Solar Panels'),
              const SizedBox(height: 11,),
              myTextField('%',effiOfSolarController),
              const SizedBox(height: 31,),

              Padding(
                padding: const EdgeInsets.only(right: 40,bottom: 0,left: 40,top: 0),
                child: SizedBox(
                  height: 40,
                  width:300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(const Color(0xff023047)),
                        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xfffb8500)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: const BorderSide(color: Color(0xfffb8500))
                            )
                        )
                    ),
                    onPressed: () {
                      final result = int.parse(kwhController.text) + int.parse(hourPerDayController.text)
                          + int.parse(powerOfUsedController.text) + int.parse(effiOfSolarController.text);
                      setState(() {
                        displayMsg = '$result';
                      });
                    },
                    child: Text("Calculate".toUpperCase(), style:GoogleFonts.poppins(
                      textStyle:const TextStyle(color: Color(0xff023047), letterSpacing: .5,
                          fontWeight: FontWeight.w600,fontSize: 18),
                    ),

                      // TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
              ),
              Text(displayMsg)
            ]),
      ),
    );
  }

  myText(cusText){
    return Container(
      margin: const EdgeInsets.only(left: 44),
      alignment: Alignment.centerLeft,
      child: Text(cusText, style:GoogleFonts.poppins(
          textStyle:  const TextStyle(color: Color(0xff023047),
              fontWeight: FontWeight.w600,fontSize: 14)),),
    );
  }

  myTextField(hint, mController){
    return Padding(
      padding: const EdgeInsets.only(right: 40,bottom: 0,left: 40,top: 0),
      child: SizedBox(
        height: 38,
        child: TextField(
          controller: mController,
          keyboardType: TextInputType.number,style:GoogleFonts.poppins(
          textStyle:const TextStyle(color: Color(0xff023047), letterSpacing: .2,fontWeight: FontWeight.w500,fontSize: 13),
        ),
          // style: TextStyle(color:Color(0xff023047),fontSize: 14,fontWeight: FontWeight.w600,),
          decoration:InputDecoration(suffixText:hint,suffixStyle:const TextStyle(fontSize: 13,fontWeight: FontWeight.w700,color: Color(0xff023047)),
              filled: true,
              fillColor: const Color(0xfffca311).withOpacity(0.4),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(width: 2, color: Color(0xfffb8500)),)
          ),
        ),
      ),
    );
  }
}