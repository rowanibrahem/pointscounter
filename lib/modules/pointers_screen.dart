import 'package:flutter/material.dart';

class PointsCounters extends StatefulWidget {
  const PointsCounters({Key? key}) : super(key: key);

  @override
  State<PointsCounters> createState() => _PointsCountersState();
}

class _PointsCountersState extends State<PointsCounters> {
  int add1 = 0;
  int add2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'Basket Ball Points Counter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                         Text(
                          'Team A',
                           style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          '$add1',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.all(20.0),
                            // minimumSize: Size(150, 50),
                          ),
                          onPressed: (){
                            setState(() {
                              add1++;
                            });
                          },
                            child:  Text(
                              'Add 1 point',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.all(20.0),
                            // minimumSize: Size(150, 50),
                          ),
                          onPressed: (){
                            setState(() {
                              add1+=2;
                            });
                          },
                          child:  Text(
                            'Add 2 point',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.all(20.0),
                            // minimumSize: Size(150, 50),
                          ),
                          onPressed: (){
                          setState(() {
                            add1+=3;
                          });
                          },
                          child:  Text(
                            'Add 3 point',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                     height: 500,
                     child: VerticalDivider(
                      color: Colors.grey[300],  //color of divider
                      width: 50, //width space of divider
                      thickness: 3, //thickness of divider line
                      indent: 30, //Spacing at the top of divider.
                      endIndent: 20, //Spacing at the bottom of divider.
                  ),
                   ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Text(
                          'Team B',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          '$add2',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.all(20.0),
                            // minimumSize: Size(150, 50),
                          ),
                          onPressed: (){
                            setState(() {
                              add2++;
                            });
                          },
                          child:  Text(
                            'Add 1 point',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.all(20.0),
                            // minimumSize: Size(150, 50),
                          ),
                          onPressed: (){
                          setState(() {
                            add2+=2;
                          });
                          },
                          child:  Text(
                            'Add 2 point',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.all(20.0),
                            // minimumSize: Size(150, 50),
                          ),
                          onPressed: (){
                          setState(() {
                            add2+=3;
                          });
                          },
                          child:  Text(
                            'Add 3 point',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding: const EdgeInsets.all(8),
                  minimumSize: const Size(150, 50),
                ),
                onPressed: (){
                  setState(() {
                    add1 = 0;
                    add2 = 0;
                  });
                },
                child:  Text(
                  'Reset',
                  style: Theme.of(context).textTheme.headlineMedium,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
