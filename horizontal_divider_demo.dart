import 'package:flutter/material.dart';

class HorizontalDividerDemo extends StatelessWidget {
  const HorizontalDividerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/test.webp',
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Card Title", style: Theme.of(context).textTheme.headlineMedium),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("Sub title", style: Theme.of(context).textTheme.titleMedium),
                      ),
                      const Text('A divider is a thin line that groups content in lists and containers.'),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Tonight's availability", style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(height: 5),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300], elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                            ),
                            child: const Text("5:30PM"),
                            onPressed: () {},
                          ),
                          Container(width: 8),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300], elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                            ),
                            child: const Text("7:30PM"),
                            onPressed: () {},
                          ),
                          Container(width: 8),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300], elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                            ),
                            child: const Text("8:00PM"),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
