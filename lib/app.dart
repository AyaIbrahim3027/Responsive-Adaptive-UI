import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constrains) {
            if (constrains.maxWidth <= 500) {
              return const MobileLayout();
            } else {
              return const DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailsView(number: index + 1);
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              color: Colors.blue,
              child: ListTile(
                title: Text('${index + 1}'),
              ),
            ),
          );
        });
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    number = index + 1;
                    setState(() {});
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    color: Colors.blue,
                    child: ListTile(
                      title: Text('${index + 1}'),
                    ),
                  ),
                );
              }),
        ),
        Expanded(
            child: SizedBox(
          child: Center(child: Text(number.toString())),
        ))
      ],
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
