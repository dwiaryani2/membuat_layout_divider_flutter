import 'package:flutter/material.dart';

class VerticalDividerDemo extends StatelessWidget {
  const VerticalDividerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(height: 5),
                        Text("Demos Title", style: Theme.of(context).textTheme.headlineMedium),
                        Container(height: 5),
                        Text("Bolt UiX", style: Theme.of(context).textTheme.titleMedium),
                        Container(height: 10),
                        const Text('A divider is a thin line that groups content in lists and containers.'),
                      ],
                    ),
                  ),
                  Container(width: 10),
                  const VerticalDivider(),
                  Container(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Tonight's availability", style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(height: 5),
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
