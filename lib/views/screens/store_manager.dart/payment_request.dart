import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PaymentRequestScreen extends StatefulWidget {
  const PaymentRequestScreen({super.key});

  @override
  State<PaymentRequestScreen> createState() => _PaymentRequestScreenState();
}

class _PaymentRequestScreenState extends State<PaymentRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.colorScheme.primaryContainer,
        title: const Text(
          'Yêu cầu thanh toán',
        ),
      ),
      floatingActionButton: FilledButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Icon(
            Icons.add,
            size: 24,
          ),
        ),
      ),
      body: Center(
        child: Text('Payment Request Screen'),
      ),
    );
  }
}
