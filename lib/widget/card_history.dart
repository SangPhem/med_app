import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:med_app/network/model/history_model.dart';
import 'package:med_app/theme.dart';

class CardHistory extends StatelessWidget {
  final HistoryOrdelModel model;

  CardHistory({required this.model});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Đơn Hàng: " + model.invoice!,
                style: boldTextStyle.copyWith(fontSize: 16)),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          model.orderAt!,
          style: regulerTextStyle.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
            model.status == "1"
                ? "Đơn hàng đang được xác nhận"
                : "Đặt hàng thành công",
            style: lightTextStyle),
        Divider()
      ],
    );
  }
}
