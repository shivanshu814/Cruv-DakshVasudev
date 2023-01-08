import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusableCard.dart';

void main() {
  runApp(MaterialApp(
    title: "Seat Finder",
    debugShowCheckedModeBanner: false,
    home: new App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seat finder',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Seat Finder',
            style: TextStyle(
                color: kHeadlineColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: kHeadlineColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: const Center(
                          child: Text(
                            'Find your seat here',
                            style: TextStyle(
                              color: kHeadlineColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Find',
                          style: TextStyle(
                            color: kHeadlineColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Row(
              children: [
                Expanded(
                  child: ReuasbleCard(seatn: 1, seatpos: 'Lower'),
                ),
                Expanded(
                  child: ReuasbleCard(seatn: 2, seatpos: 'Middle'),
                ),
                Expanded(
                  child: ReuasbleCard(seatn: 3, seatpos: 'Upper'),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: ReuasbleCard(seatn: 7, seatpos: 'Side Lower'),
                ),
              ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    child: ReuasbleCard(seatn: 4, seatpos: 'Lower'),
                  ),
                  Expanded(
                    child: ReuasbleCard(seatn: 5, seatpos: 'Middle'),
                  ),
                  Expanded(
                    child: ReuasbleCard(seatn: 6, seatpos: 'Upper'),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: ReuasbleCard(seatn: 8, seatpos: 'Side Upper'),
                  ),
                ],
              ),
            ),

      ],
        ),
      ),
    );
  }
}


