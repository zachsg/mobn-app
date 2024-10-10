import 'package:flutter/material.dart';

import '../../helpers/labels.dart';

class MobsView extends StatelessWidget {
  const MobsView({super.key});

  static const routeName = '/mobs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mobsLabel),
      ),
      body: Center(
        child: Text(mobsLabel),
      ),
    );
  }
}
