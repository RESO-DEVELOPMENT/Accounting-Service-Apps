import 'package:flutter/foundation.dart';

enum ProofOfSaleStatusEnums {
  SMCreated,
  AMChecked,
  AMDenied,
  AccountingChecked,
  AccountingDenied,
  SyncedMisa,
  Canceled,
}

extension ProofOfSaleStatusEnumsExtend on ProofOfSaleStatusEnums {
  String get name => describeEnum(this);
  String get displayTitle {
    switch (this) {
      case ProofOfSaleStatusEnums.SMCreated:
        return 'Cưa hàng trưởng đã tạo';
      case ProofOfSaleStatusEnums.AMChecked:
        return 'Khu vực đã duyệt';
      case ProofOfSaleStatusEnums.AMDenied:
        return 'Khu vực đã từ chối';
      case ProofOfSaleStatusEnums.AccountingChecked:
        return 'Kế toán đã duyệt';
      case ProofOfSaleStatusEnums.AccountingDenied:
        return 'Kế toán đã từ chối';
      case ProofOfSaleStatusEnums.SyncedMisa:
        return 'Đã đồng bộ MISA';
      case ProofOfSaleStatusEnums.Canceled:
        return 'Đã hủy';
      default:
        return 'Đã hủy';
    }
  }
}

String showProofOfSaleStatus(String enums) {
  for (var element in ProofOfSaleStatusEnums.values) {
    if (element.name == enums) {
      return element.displayTitle;
    }
  }
  return 'Đã hủy';
}

enum PaymentEnums {
  CASH,
  BANKING,
}

extension PaymentEnumsExtend on PaymentEnums {
  String get name => describeEnum(this);
  String get displayTitle {
    switch (this) {
      case PaymentEnums.CASH:
        return 'Tiền mặt';
      case PaymentEnums.BANKING:
        return 'Chuyển khoản';
      default:
        return 'Tiền mặt';
    }
  }
}

String showPaymentType(String payment) {
  for (var element in PaymentEnums.values) {
    if (element.name == payment) {
      return element.displayTitle;
    }
  }
  return 'Tiền mặt';
}
