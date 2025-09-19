import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MaximumBid(title: 'Flutter Demo Page'),
    );
  }
}

class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key, required this.title});

  final String title;

  @override
  State<MaximumBid> createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  double _currentBid = 0;

  void _toggleBid() {
    setState(() {

      if (_currentBid < 100) {
        _currentBid += 10;  // Increase bid
      } else if (_currentBid > 0) {
        _currentBid -= 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Your Current Maximum Bid:'),
            Text(
              '\$${_currentBid.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _toggleBid,
              child: Text(
                _currentBid < 100 ? 'Increase Bid' : 'Decrease Bid',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
