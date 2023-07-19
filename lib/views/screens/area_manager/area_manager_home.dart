import 'package:accounting_service/routes/routes_constraints.dart';
import 'package:accounting_service/views/widgets/app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../view_models/login_view_model.dart';
import '../../widgets/navigation_bar.dart';

class AreaManagerHome extends StatefulWidget {
  const AreaManagerHome({super.key});

  @override
  State<AreaManagerHome> createState() => _AreaManagerHomeState();
}

class _AreaManagerHomeState extends State<AreaManagerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getNavigationDrawer(),
      appBar: buildAppBar(context, 'Area Manager Home'),
      body: Center(
        child: Text('Area Manager Home'),
      ),
    );
  }
}
