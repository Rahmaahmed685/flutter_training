import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account ? ',
          style: TextStyle(
              fontSize: 13,
              color: Color(0xff939393),
              fontWeight: FontWeight.bold),
        ),
        const Text(
          'Register Now',
          style: TextStyle(
              fontSize: 15,
              color: Color(0XFF0D9276),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
