import 'package:flutter/material.dart';

class DialogueBox extends StatefulWidget {
  const DialogueBox({super.key});

  @override
  State<DialogueBox> createState() => _DialogueBoxState();
}

class _DialogueBoxState extends State<DialogueBox> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => Dialog(
                backgroundColor: const Color(0xfff292a2c),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'For a better experience ,turn \non device location,which uses \nGoogle location service ',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'No Thanks',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'OK',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                   const  SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            child: const Center(
                child: Text(
              'Show Dialog',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
          ),
        ],
      ),
    );
  }
}
