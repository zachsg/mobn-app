import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class LearnView extends StatelessWidget {
  const LearnView({super.key});

  static const routeName = '/learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(learnLabel),
      ),
      body: Center(
        child: Text(learnLabel),
      ),
    );
  }
}
