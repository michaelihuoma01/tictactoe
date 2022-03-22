import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WinnerDialog extends StatefulWidget {
  final String? winner;

  const WinnerDialog({Key? key, this.winner}) : super(key: key);

  @override
  State<WinnerDialog> createState() => _WinnerDialogState();
}

class _WinnerDialogState extends State<WinnerDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        height: MediaQuery.of(context).size.height * .20,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (widget.winner! == 'X')
                        ? const Icon(Icons.clear, color: Colors.red, size: 50)
                        : const Icon(Icons.circle_outlined,
                            color: Colors.green, size: 50),
                    const SizedBox(width: 10),
                    const Text(
                      'Won!',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Play again',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawDialog extends StatefulWidget {
  const DrawDialog({Key? key}) : super(key: key);

  @override
  State<DrawDialog> createState() => _DrawDialogState();
}

class _DrawDialogState extends State<DrawDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        height: MediaQuery.of(context).size.height * .20,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'It\'s a tie, Nobody wins',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Restart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
