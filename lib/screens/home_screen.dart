import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedWard;
  String? selectedDay;
  String? selectedTime;

  List<String> wardNames = [
    "Ward 1",
    "Ward 2",
    "Ward 3",
    "Ward 4",
    "Ward 5",
    "Ward 6",
    "Ward 7",
    "Ward 8",
    "Ward 9",
    "Ward 10",
  ];

  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  List<String> times = ["Morning (6AM to 9AM)", "Evening (6PM to 10PM)"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Supply"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Ward",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              children: [
                for (final ward in wardNames)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedWard = ward;
                        });
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(150, 50)),
                        elevation: MaterialStateProperty.resolveWith<double?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return 6.0;
                          }
                          return 0.0;
                        }),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return selectedWard == ward ? Colors.red : Colors.blue;
                        }),
                      ),
                      child: Text(
                        ward,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Days",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              children: [
                for (final day in days)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedDay = day;
                        });
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(150, 50)),
                        elevation: MaterialStateProperty.resolveWith<double?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return 6.0;
                          }
                          return 0.0;
                        }),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return selectedDay == day ? Colors.red : Colors.blue;
                        }),
                      ),
                      child: Text(
                        day,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Time",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              children: [
                for (final time in times)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedTime = time;
                        });
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(150, 50)),
                        elevation: MaterialStateProperty.resolveWith<double?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return 6.0;
                          }
                          return 0.0;
                        }),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return selectedTime == time ? Colors.red : Colors.blue;
                        }),
                      ),
                      child: Text(
                        time,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement logic for the "Send Message" button
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Text("Send Message"),
            ),
          ],
        ),
      ),
    );
  }
}
