import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvoiceCardWidget extends StatelessWidget {
  late String label;
  InvoiceCardWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 120, maxWidth: Get.width),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            const Text(
              "Rp.9.000,00",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 12,
            ),
            _buildInvoiceItem(label: "Beban", value: "Rp.5.000"),
            const SizedBox(
              height: 12,
            ),
            _buildInvoiceItem(
                label: "2 x Beban Kubikasi Rp,2.000/c", value: "Rp.4.000"),
            const Text(
              "Lunas",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w800,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInvoiceItem({required String label, required String value}) {
    return Container(
      width: Get.width,
      height: 24,
      child: Row(
        children: [
          Flexible(flex: 4, fit: FlexFit.tight, child: Text(label)),
          Flexible(flex: 1, fit: FlexFit.tight, child: Text(": $value")),
        ],
      ),
    );
  }
}
