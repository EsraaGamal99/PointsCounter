import 'package:flutter/material.dart';

class PonitsCounter extends StatefulWidget {

  @override
  State<PonitsCounter> createState() => _PonitsCounterState();
}

class _PonitsCounterState extends State<PonitsCounter> {
  @override
  void initState() {
    super.initState();
  }
  int counterA=0;
  int counterB=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text('Points Counter',)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Team A',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Text('$counterA',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 150.0,
                  ),
                  ),
                  MaterialButton(
                    color: Colors.deepOrange,
                    onPressed: (){
                      setState(() {
                        counterA++;
                      });

                    },
                  child: Text('Add 1 Point'),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          counterA+=2;
                        });

                      },
                      color: Colors.deepOrange,
                      child: Text('Add 2 Point'),),
                  ),
                  MaterialButton(color: Colors.deepOrange,
                    onPressed: (){
                    setState(() {
                      counterA+=3;
                    });
                    },
                    child: Text('Add 3 Point'),),




                  //MaterialButton(onPressed: (){},),
                ],
              ),

              VerticalDivider(
                color: Colors.grey[400],
                thickness: 1,
                indent: 20.0,
                endIndent: 20.0,

              ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Team B',
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          Text('$counterB',
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontSize: 150.0,
            ),
          ),
          MaterialButton(
            color: Colors.deepOrange,
            onPressed: (){
              setState(() {
                counterB++;
              });
            },
            child: Text('Add 1 Point'),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: MaterialButton(
              onPressed: (){
                setState(() {
                  counterB+=2;
                });
              },
              color: Colors.deepOrange,
              child: Text('Add 2 Point'),),
          ),
          MaterialButton(color: Colors.deepOrange,
            onPressed: (){
              setState(() {
                counterB+=3;
              });
            },
            child: Text('Add 3 Point'),),

        ],
      ),
            ],
          ),

          SizedBox(height: 50.0,),
          MaterialButton(onPressed: (){
            setState(() {
              counterB=0;
              counterA=0;
            });
          },
          color: Colors.deepOrange,
          child: Text('RESET'),),
        ],
      ),
    );
  }
}
