import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/navigation_bar.dart';

class StoreManagerHome extends StatefulWidget {
  const StoreManagerHome({super.key});

  @override
  State<StoreManagerHome> createState() => _StoreManagerHomeState();
}

class _StoreManagerHomeState extends State<StoreManagerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getNavigationDrawer(),
      appBar: buildAppBar(context, 'Store Manager Home'),
      body: Center(
        child: Text('Store Manager Home'),
      ),
    );
  }
}
