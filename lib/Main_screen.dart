
import 'package:flutter/material.dart';
import 'package:multi_provider_state_managment/x_provider.dart';
import 'package:provider/provider.dart';
class Main_screen extends StatefulWidget {
  const Main_screen({Key? key}) : super(key: key);

  @override
  _Main_screenState createState() => _Main_screenState();
}

class _Main_screenState extends State<Main_screen> {
  double value = 0 ;
  @override
  Widget build(BuildContext context) {
    final provideer = Provider.of<value_provider>(context,listen: false);
    print('Build is called.....................................');
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.redAccent.withOpacity(1.0),
        centerTitle: true,
        title: Text('MULTI-PROVIDER'),
      ),
      body: Center(
        child: Column(
          children: [

            //for
            SizedBox(height: 60,),
            Center(child:

            Consumer<value_provider>(
              builder: (context, value, child) {
                return Text('${value.get_double.toStringAsFixed(8)}',style: TextStyle(fontSize: 40),);
              }),
            ),
            SizedBox(height: 60,),


            Consumer<value_provider>(builder: (context, value, child) {

             print('Slider is called');
             return  Slider(
             min: 0,
             max: 1.0,
      value: provideer.get_double,
      onChanged: (val){
      value.set_double(val);
      });

           }),
            Row(
              children: [
                Consumer<value_provider>(builder: (context, value, child) {
                  print("Container 1");
                  return Expanded(child: Container(
                  height: 100,
    color: Colors.redAccent.withOpacity(provideer.get_double),
    ));
                }),
                Consumer<value_provider>(builder: (context, value, child) {
                  print("Container 2");
                  return Expanded(child: Container(
                    height: 100,
                    color: Colors.greenAccent.withOpacity(provideer.get_double),
                  ));
                }),
              ],
            ),
            SizedBox(height: 30,),
            Text('BY:- HAMZA JAVAID'),
          ],
        ),
      )
    );
  }
}
