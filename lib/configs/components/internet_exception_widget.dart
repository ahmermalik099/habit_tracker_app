import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InterNetExceptionWidget extends StatefulWidget {
  const InterNetExceptionWidget({super.key});

  @override
  State<InterNetExceptionWidget> createState() =>
      _InterNetExceptionWidgetState();
}

class _InterNetExceptionWidgetState extends State<InterNetExceptionWidget> {
  Future<void> _retry() async {
    // Check internet connection
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // If there is an internet connection, refresh the app
      Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
    } else {
      // Show a message if there is no internet connection

    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .15),
          const Icon(
            Icons.cloud_off,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                  'We’re unable to show results.\nPlease check your data\nconnection.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 20)),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .15),
          ElevatedButton(
            onPressed: _retry,
            child: Center(
              child: Text(
                'RETRY',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
