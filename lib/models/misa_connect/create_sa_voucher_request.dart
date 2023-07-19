class CreateSAVoucherModel {
  //Item trong chứng từ
  List<Detail>? detail;
  //Loại chứng từ
  int? voucherType;
  bool? isGetNewId;
  String? orgRefid;
  bool? isAllowGroup;
  String? orgRefno;
  int? orgReftype;
  String? orgReftypeName;
  String? refno;
  int? actVoucherType;
  String? refid;
  String? employeeId;
  int? displayOnBook;
  int? outwardExportedStatus;
  int? dueDay;
  int? debtStatus;
  int? reforder;
  int? discountRateVoucher;
  String? refdate;
  String? postedDate;
  String? invDate;
  bool? isPostedFinance;
  bool? isPostedManagement;
  int? includeInvoice;
  bool? includeInvoiceImport;
  bool? isInvoiceExported;
  bool? isPaid;
  bool? isPostedCashBookFinance;
  bool? isPostedCashBookManagement;
  bool? isSaleWithOutward;
  bool? isInvoiceExportedLastYear;
  int? exchangeRate;
  int? totalSaleAmountOc;
  int? totalSaleAmount;
  int? totalAmountOc;
  int? totalAmount;
  int? totalDiscountAmountOc;
  int? cabaAmount;
  int? totalDiscountAmount;
  int? totalVatAmountOc;
  int? totalVatAmount;
  int? totalExportTaxAmount;
  int? cabaAmountOc;
  String? refnoFinance;
  String? refnoManagement;
  String? accountObjectName;
  String? accountObjectAddress;
  String? payer;
  String? journalMemo;
  String? accountObjectTaxCode;
  String? currencyId;
  String? employeeName;
  int? discountType;
  int? paidType;
  String? employeeCode;
  String? accountObjectCode;
  int? publishStatus;
  int? isCreatedInvoice;
  String? saInvoiceRefid;
  String? outwardRefid;
  String? inReforder;
  int? sendEmailStatus;
  bool? ccyExchangeOperator;
  bool? isRemindDebtCus;
  bool? isUnLimit;
  int? excelRowIndex;
  bool? isValid;
  int? reftype;
  String? createdDate;
  String? createdBy;
  String? modifiedDate;
  bool? autoRefno;
  int? state;

  CreateSAVoucherModel(
      {this.detail,
      this.voucherType,
      this.isGetNewId,
      this.orgRefid,
      this.isAllowGroup,
      this.orgRefno,
      this.orgReftype,
      this.orgReftypeName,
      this.refno,
      this.actVoucherType,
      this.refid,
      this.employeeId,
      this.displayOnBook,
      this.outwardExportedStatus,
      this.dueDay,
      this.debtStatus,
      this.reforder,
      this.discountRateVoucher,
      this.refdate,
      this.postedDate,
      this.invDate,
      this.isPostedFinance,
      this.isPostedManagement,
      this.includeInvoice,
      this.includeInvoiceImport,
      this.isInvoiceExported,
      this.isPaid,
      this.isPostedCashBookFinance,
      this.isPostedCashBookManagement,
      this.isSaleWithOutward,
      this.isInvoiceExportedLastYear,
      this.exchangeRate,
      this.totalSaleAmountOc,
      this.totalSaleAmount,
      this.totalAmountOc,
      this.totalAmount,
      this.totalDiscountAmountOc,
      this.cabaAmount,
      this.totalDiscountAmount,
      this.totalVatAmountOc,
      this.totalVatAmount,
      this.totalExportTaxAmount,
      this.cabaAmountOc,
      this.refnoFinance,
      this.refnoManagement,
      this.accountObjectName,
      this.accountObjectAddress,
      this.payer,
      this.journalMemo,
      this.accountObjectTaxCode,
      this.currencyId,
      this.employeeName,
      this.discountType,
      this.paidType,
      this.employeeCode,
      this.accountObjectCode,
      this.publishStatus,
      this.isCreatedInvoice,
      this.saInvoiceRefid,
      this.outwardRefid,
      this.inReforder,
      this.sendEmailStatus,
      this.ccyExchangeOperator,
      this.isRemindDebtCus,
      this.isUnLimit,
      this.excelRowIndex,
      this.isValid,
      this.reftype,
      this.createdDate,
      this.createdBy,
      this.modifiedDate,
      this.autoRefno,
      this.state});

  CreateSAVoucherModel.fromJson(Map<String, dynamic> json) {
    if (json['detail'] != null) {
      detail = <Detail>[];
      json['detail'].forEach((v) {
        detail!.add(Detail.fromJson(v));
      });
    }
    voucherType = json['voucher_type'];
    isGetNewId = json['is_get_new_id'];
    orgRefid = json['org_refid'];
    isAllowGroup = json['is_allow_group'];
    orgRefno = json['org_refno'];
    orgReftype = json['org_reftype'];
    orgReftypeName = json['org_reftype_name'];
    refno = json['refno'];
    actVoucherType = json['act_voucher_type'];
    refid = json['refid'];
    employeeId = json['employee_id'];
    displayOnBook = json['display_on_book'];
    outwardExportedStatus = json['outward_exported_status'];
    dueDay = json['due_day'];
    debtStatus = json['debt_status'];
    reforder = json['reforder'];
    discountRateVoucher = json['discount_rate_voucher'];
    refdate = json['refdate'];
    postedDate = json['posted_date'];
    invDate = json['inv_date'];
    isPostedFinance = json['is_posted_finance'];
    isPostedManagement = json['is_posted_management'];
    includeInvoice = json['include_invoice'];
    includeInvoiceImport = json['include_invoice_import'];
    isInvoiceExported = json['is_invoice_exported'];
    isPaid = json['is_paid'];
    isPostedCashBookFinance = json['is_posted_cash_book_finance'];
    isPostedCashBookManagement = json['is_posted_cash_book_management'];
    isSaleWithOutward = json['is_sale_with_outward'];
    isInvoiceExportedLastYear = json['is_invoice_exported_last_year'];
    exchangeRate = json['exchange_rate'];
    totalSaleAmountOc = json['total_sale_amount_oc'];
    totalSaleAmount = json['total_sale_amount'];
    totalAmountOc = json['total_amount_oc'];
    totalAmount = json['total_amount'];
    totalDiscountAmountOc = json['total_discount_amount_oc'];
    cabaAmount = json['caba_amount'];
    totalDiscountAmount = json['total_discount_amount'];
    totalVatAmountOc = json['total_vat_amount_oc'];
    totalVatAmount = json['total_vat_amount'];
    totalExportTaxAmount = json['total_export_tax_amount'];
    cabaAmountOc = json['caba_amount_oc'];
    refnoFinance = json['refno_finance'];
    refnoManagement = json['refno_management'];
    accountObjectName = json['account_object_name'];
    accountObjectAddress = json['account_object_address'];
    payer = json['payer'];
    journalMemo = json['journal_memo'];
    accountObjectTaxCode = json['account_object_tax_code'];
    currencyId = json['currency_id'];
    employeeName = json['employee_name'];
    discountType = json['discount_type'];
    paidType = json['paid_type'];
    employeeCode = json['employee_code'];
    accountObjectCode = json['account_object_code'];
    publishStatus = json['publish_status'];
    isCreatedInvoice = json['is_created_invoice'];
    saInvoiceRefid = json['sa_invoice_refid'];
    outwardRefid = json['outward_refid'];
    inReforder = json['in_reforder'];
    sendEmailStatus = json['send_email_status'];
    ccyExchangeOperator = json['ccy_exchange_operator'];
    isRemindDebtCus = json['is_remind_debt_cus'];
    isUnLimit = json['is_un_limit'];
    excelRowIndex = json['excel_row_index'];
    isValid = json['is_valid'];
    reftype = json['reftype'];
    createdDate = json['created_date'];
    createdBy = json['created_by'];
    modifiedDate = json['modified_date'];
    autoRefno = json['auto_refno'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (detail != null) {
      data['detail'] = detail!.map((v) => v.toJson()).toList();
    }
    data['voucher_type'] = voucherType;
    data['is_get_new_id'] = isGetNewId;
    data['org_refid'] = orgRefid;
    data['is_allow_group'] = isAllowGroup;
    data['org_refno'] = orgRefno;
    data['org_reftype'] = orgReftype;
    data['org_reftype_name'] = orgReftypeName;
    data['refno'] = refno;
    data['act_voucher_type'] = actVoucherType;
    data['refid'] = refid;
    data['employee_id'] = employeeId;
    data['display_on_book'] = displayOnBook;
    data['outward_exported_status'] = outwardExportedStatus;
    data['due_day'] = dueDay;
    data['debt_status'] = debtStatus;
    data['reforder'] = reforder;
    data['discount_rate_voucher'] = discountRateVoucher;
    data['refdate'] = refdate;
    data['posted_date'] = postedDate;
    data['inv_date'] = invDate;
    data['is_posted_finance'] = isPostedFinance;
    data['is_posted_management'] = isPostedManagement;
    data['include_invoice'] = includeInvoice;
    data['include_invoice_import'] = includeInvoiceImport;
    data['is_invoice_exported'] = isInvoiceExported;
    data['is_paid'] = isPaid;
    data['is_posted_cash_book_finance'] = isPostedCashBookFinance;
    data['is_posted_cash_book_management'] = isPostedCashBookManagement;
    data['is_sale_with_outward'] = isSaleWithOutward;
    data['is_invoice_exported_last_year'] = isInvoiceExportedLastYear;
    data['exchange_rate'] = exchangeRate;
    data['total_sale_amount_oc'] = totalSaleAmountOc;
    data['total_sale_amount'] = totalSaleAmount;
    data['total_amount_oc'] = totalAmountOc;
    data['total_amount'] = totalAmount;
    data['total_discount_amount_oc'] = totalDiscountAmountOc;
    data['caba_amount'] = cabaAmount;
    data['total_discount_amount'] = totalDiscountAmount;
    data['total_vat_amount_oc'] = totalVatAmountOc;
    data['total_vat_amount'] = totalVatAmount;
    data['total_export_tax_amount'] = totalExportTaxAmount;
    data['caba_amount_oc'] = cabaAmountOc;
    data['refno_finance'] = refnoFinance;
    data['refno_management'] = refnoManagement;
    data['account_object_name'] = accountObjectName;
    data['account_object_address'] = accountObjectAddress;
    data['payer'] = payer;
    data['journal_memo'] = journalMemo;
    data['account_object_tax_code'] = accountObjectTaxCode;
    data['currency_id'] = currencyId;
    data['employee_name'] = employeeName;
    data['discount_type'] = discountType;
    data['paid_type'] = paidType;
    data['employee_code'] = employeeCode;
    data['account_object_code'] = accountObjectCode;
    data['publish_status'] = publishStatus;
    data['is_created_invoice'] = isCreatedInvoice;
    data['sa_invoice_refid'] = saInvoiceRefid;
    data['outward_refid'] = outwardRefid;
    data['in_reforder'] = inReforder;
    data['send_email_status'] = sendEmailStatus;
    data['ccy_exchange_operator'] = ccyExchangeOperator;
    data['is_remind_debt_cus'] = isRemindDebtCus;
    data['is_un_limit'] = isUnLimit;
    data['excel_row_index'] = excelRowIndex;
    data['is_valid'] = isValid;
    data['reftype'] = reftype;
    data['created_date'] = createdDate;
    data['created_by'] = createdBy;
    data['modified_date'] = modifiedDate;
    data['auto_refno'] = autoRefno;
    data['state'] = state;
    return data;
  }
}

class Detail {
  int? costMainUnitPrice;
  int? costAmount;
  String? refDetailId;
  String? refid;
  String? inventoryItemId;
  String? unitId;
  String? accountObjectId;
  String? stockId;
  String? mainUnitId;
  int? sortOrder;
  bool? isPromotion;
  bool? unResonableCost;
  bool? notInVatDeclaration;
  int? quantity;
  int? unitPrice;
  int? unitPriceAfterTax;
  int? amountOc;
  int? amount;
  int? discountRate;
  int? panelWidthQuantity;
  int? panelHeightQuantity;
  int? panelRadiusQuantity;
  int? panelQuantity;
  int? panelLengthQuantity;
  int? amountAfterTax;
  int? exportTaxRate;
  int? exportTaxAmount;
  int? mainUnitPrice;
  int? mainConvertRate;
  int? mainQuantity;
  int? discountAmountOc;
  int? discountAmount;
  int? vatRate;
  int? vatAmountOc;
  int? vatAmount;
  int? fobAmount;
  String? description;
  String? inventoryItemCode;
  String? unitName;
  String? mainUnitName;
  String? debitAccount;
  String? creditAccount;
  String? discountAccount;
  String? vatAccount;
  String? accountObjectAddress;
  String? exchangeRateOperator;
  String? vatDescription;
  String? accountObjectName;
  String? accountObjectCode;
  String? stockCode;
  int? inventoryItemType;
  String? costAccount;
  String? stockAccount;
  int? costMainUnitPriceFinance;
  int? costAmountFinance;
  int? costUnitPriceFinance;
  int? costAmountManagement;
  int? costUnitPriceManagement;
  int? costMainUnitPriceManagement;
  int? inventoryResaleTypeId;
  bool? isUnUpdateOutwardPrice;
  String? stockName;
  String? inventoryItemName;
  int? returnQuantity;
  String? refdate;
  String? postedDate;
  int? reftype;
  int? exchangeRate;
  int? discountType;
  int? allocationTime;
  int? allocationType;
  int? paidType;
  bool? isFollowSerialNumber;
  bool? isAllowDuplicateSerialNumber;
  bool? isUnitPriceAfterTax;
  bool? isDescription;
  bool? isDescriptionImport;
  int? mainQuantityDelivered;
  int? mainQuantityRemain;
  int? recordIdMapping;
  int? state;

  Detail(
      {this.costMainUnitPrice,
      this.costAmount,
      this.refDetailId,
      this.refid,
      this.inventoryItemId,
      this.unitId,
      this.accountObjectId,
      this.stockId,
      this.mainUnitId,
      this.sortOrder,
      this.isPromotion,
      this.unResonableCost,
      this.notInVatDeclaration,
      this.quantity,
      this.unitPrice,
      this.unitPriceAfterTax,
      this.amountOc,
      this.amount,
      this.discountRate,
      this.panelWidthQuantity,
      this.panelHeightQuantity,
      this.panelRadiusQuantity,
      this.panelQuantity,
      this.panelLengthQuantity,
      this.amountAfterTax,
      this.exportTaxRate,
      this.exportTaxAmount,
      this.mainUnitPrice,
      this.mainConvertRate,
      this.mainQuantity,
      this.discountAmountOc,
      this.discountAmount,
      this.vatRate,
      this.vatAmountOc,
      this.vatAmount,
      this.fobAmount,
      this.description,
      this.inventoryItemCode,
      this.unitName,
      this.mainUnitName,
      this.debitAccount,
      this.creditAccount,
      this.discountAccount,
      this.vatAccount,
      this.accountObjectAddress,
      this.exchangeRateOperator,
      this.vatDescription,
      this.accountObjectName,
      this.accountObjectCode,
      this.stockCode,
      this.inventoryItemType,
      this.costAccount,
      this.stockAccount,
      this.costMainUnitPriceFinance,
      this.costAmountFinance,
      this.costUnitPriceFinance,
      this.costAmountManagement,
      this.costUnitPriceManagement,
      this.costMainUnitPriceManagement,
      this.inventoryResaleTypeId,
      this.isUnUpdateOutwardPrice,
      this.stockName,
      this.inventoryItemName,
      this.returnQuantity,
      this.refdate,
      this.postedDate,
      this.reftype,
      this.exchangeRate,
      this.discountType,
      this.allocationTime,
      this.allocationType,
      this.paidType,
      this.isFollowSerialNumber,
      this.isAllowDuplicateSerialNumber,
      this.isUnitPriceAfterTax,
      this.isDescription,
      this.isDescriptionImport,
      this.mainQuantityDelivered,
      this.mainQuantityRemain,
      this.recordIdMapping,
      this.state});

  Detail.fromJson(Map<String, dynamic> json) {
    costMainUnitPrice = json['cost_main_unit_price'];
    costAmount = json['cost_amount'];
    refDetailId = json['ref_detail_id'];
    refid = json['refid'];
    inventoryItemId = json['inventory_item_id'];
    unitId = json['unit_id'];
    accountObjectId = json['account_object_id'];
    stockId = json['stock_id'];
    mainUnitId = json['main_unit_id'];
    sortOrder = json['sort_order'];
    isPromotion = json['is_promotion'];
    unResonableCost = json['un_resonable_cost'];
    notInVatDeclaration = json['not_in_vat_declaration'];
    quantity = json['quantity'];
    unitPrice = json['unit_price'];
    unitPriceAfterTax = json['unit_price_after_tax'];
    amountOc = json['amount_oc'];
    amount = json['amount'];
    discountRate = json['discount_rate'];
    panelWidthQuantity = json['panel_width_quantity'];
    panelHeightQuantity = json['panel_height_quantity'];
    panelRadiusQuantity = json['panel_radius_quantity'];
    panelQuantity = json['panel_quantity'];
    panelLengthQuantity = json['panel_length_quantity'];
    amountAfterTax = json['amount_after_tax'];
    exportTaxRate = json['export_tax_rate'];
    exportTaxAmount = json['export_tax_amount'];
    mainUnitPrice = json['main_unit_price'];
    mainConvertRate = json['main_convert_rate'];
    mainQuantity = json['main_quantity'];
    discountAmountOc = json['discount_amount_oc'];
    discountAmount = json['discount_amount'];
    vatRate = json['vat_rate'];
    vatAmountOc = json['vat_amount_oc'];
    vatAmount = json['vat_amount'];
    fobAmount = json['fob_amount'];
    description = json['description'];
    inventoryItemCode = json['inventory_item_code'];
    unitName = json['unit_name'];
    mainUnitName = json['main_unit_name'];
    debitAccount = json['debit_account'];
    creditAccount = json['credit_account'];
    discountAccount = json['discount_account'];
    vatAccount = json['vat_account'];
    accountObjectAddress = json['account_object_address'];
    exchangeRateOperator = json['exchange_rate_operator'];
    vatDescription = json['vat_description'];
    accountObjectName = json['account_object_name'];
    accountObjectCode = json['account_object_code'];
    stockCode = json['stock_code'];
    inventoryItemType = json['inventory_item_type'];
    costAccount = json['cost_account'];
    stockAccount = json['stock_account'];
    costMainUnitPriceFinance = json['cost_main_unit_price_finance'];
    costAmountFinance = json['cost_amount_finance'];
    costUnitPriceFinance = json['cost_unit_price_finance'];
    costAmountManagement = json['cost_amount_management'];
    costUnitPriceManagement = json['cost_unit_price_management'];
    costMainUnitPriceManagement = json['cost_main_unit_price_management'];
    inventoryResaleTypeId = json['inventory_resale_type_id'];
    isUnUpdateOutwardPrice = json['is_un_update_outward_price'];
    stockName = json['stock_name'];
    inventoryItemName = json['inventory_item_name'];
    returnQuantity = json['return_quantity'];
    refdate = json['refdate'];
    postedDate = json['posted_date'];
    reftype = json['reftype'];
    exchangeRate = json['exchange_rate'];
    discountType = json['discount_type'];
    allocationTime = json['allocation_time'];
    allocationType = json['allocation_type'];
    paidType = json['paid_type'];
    isFollowSerialNumber = json['is_follow_serial_number'];
    isAllowDuplicateSerialNumber = json['is_allow_duplicate_serial_number'];
    isUnitPriceAfterTax = json['is_unit_price_after_tax'];
    isDescription = json['is_description'];
    isDescriptionImport = json['is_description_import'];
    mainQuantityDelivered = json['main_quantity_delivered'];
    mainQuantityRemain = json['main_quantity_remain'];
    recordIdMapping = json['record_id_mapping'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cost_main_unit_price'] = costMainUnitPrice;
    data['cost_amount'] = costAmount;
    data['ref_detail_id'] = refDetailId;
    data['refid'] = refid;
    data['inventory_item_id'] = inventoryItemId;
    data['unit_id'] = unitId;
    data['account_object_id'] = accountObjectId;
    data['stock_id'] = stockId;
    data['main_unit_id'] = mainUnitId;
    data['sort_order'] = sortOrder;
    data['is_promotion'] = isPromotion;
    data['un_resonable_cost'] = unResonableCost;
    data['not_in_vat_declaration'] = notInVatDeclaration;
    data['quantity'] = quantity;
    data['unit_price'] = unitPrice;
    data['unit_price_after_tax'] = unitPriceAfterTax;
    data['amount_oc'] = amountOc;
    data['amount'] = amount;
    data['discount_rate'] = discountRate;
    data['panel_width_quantity'] = panelWidthQuantity;
    data['panel_height_quantity'] = panelHeightQuantity;
    data['panel_radius_quantity'] = panelRadiusQuantity;
    data['panel_quantity'] = panelQuantity;
    data['panel_length_quantity'] = panelLengthQuantity;
    data['amount_after_tax'] = amountAfterTax;
    data['export_tax_rate'] = exportTaxRate;
    data['export_tax_amount'] = exportTaxAmount;
    data['main_unit_price'] = mainUnitPrice;
    data['main_convert_rate'] = mainConvertRate;
    data['main_quantity'] = mainQuantity;
    data['discount_amount_oc'] = discountAmountOc;
    data['discount_amount'] = discountAmount;
    data['vat_rate'] = vatRate;
    data['vat_amount_oc'] = vatAmountOc;
    data['vat_amount'] = vatAmount;
    data['fob_amount'] = fobAmount;
    data['description'] = description;
    data['inventory_item_code'] = inventoryItemCode;
    data['unit_name'] = unitName;
    data['main_unit_name'] = mainUnitName;
    data['debit_account'] = debitAccount;
    data['credit_account'] = creditAccount;
    data['discount_account'] = discountAccount;
    data['vat_account'] = vatAccount;
    data['account_object_address'] = accountObjectAddress;
    data['exchange_rate_operator'] = exchangeRateOperator;
    data['vat_description'] = vatDescription;
    data['account_object_name'] = accountObjectName;
    data['account_object_code'] = accountObjectCode;
    data['stock_code'] = stockCode;
    data['inventory_item_type'] = inventoryItemType;
    data['cost_account'] = costAccount;
    data['stock_account'] = stockAccount;
    data['cost_main_unit_price_finance'] = costMainUnitPriceFinance;
    data['cost_amount_finance'] = costAmountFinance;
    data['cost_unit_price_finance'] = costUnitPriceFinance;
    data['cost_amount_management'] = costAmountManagement;
    data['cost_unit_price_management'] = costUnitPriceManagement;
    data['cost_main_unit_price_management'] = costMainUnitPriceManagement;
    data['inventory_resale_type_id'] = inventoryResaleTypeId;
    data['is_un_update_outward_price'] = isUnUpdateOutwardPrice;
    data['stock_name'] = stockName;
    data['inventory_item_name'] = inventoryItemName;
    data['return_quantity'] = returnQuantity;
    data['refdate'] = refdate;
    data['posted_date'] = postedDate;
    data['reftype'] = reftype;
    data['exchange_rate'] = exchangeRate;
    data['discount_type'] = discountType;
    data['allocation_time'] = allocationTime;
    data['allocation_type'] = allocationType;
    data['paid_type'] = paidType;
    data['is_follow_serial_number'] = isFollowSerialNumber;
    data['is_allow_duplicate_serial_number'] = isAllowDuplicateSerialNumber;
    data['is_unit_price_after_tax'] = isUnitPriceAfterTax;
    data['is_description'] = isDescription;
    data['is_description_import'] = isDescriptionImport;
    data['main_quantity_delivered'] = mainQuantityDelivered;
    data['main_quantity_remain'] = mainQuantityRemain;
    data['record_id_mapping'] = recordIdMapping;
    data['state'] = state;
    return data;
  }
}

// detail(List<sa_voucher_detail>): Chi tiết chứng từ  
// in_outward(in_outward): thông tin phiếu xuất kho (sử dụng khi là chứng từ bán hàng kiêm phiếu xuất)
// sa_invoice(sa_invoice): thông tin hóa đơn (sử dụng khi là chứng từ bán hàng kèm hóa đơn)
// sa_voucher/account_object_address(string): Địa chỉ
// sa_voucher/account_object_code(string): Mã đối tượng
// sa_voucher/account_object_id(Guid?): ID khách hàng
// sa_voucher/account_object_name(string): Tên khách hàng
// sa_voucher/account_object_tax_code(string): Mã số thuế
// sa_voucher/attachment_id_list(string): Bảng lưu trữ mảng các id của attachment_id dưới dạng json
// sa_voucher/bank_account_id(Guid?): 
// sa_voucher/bank_account_number(string): 
// sa_voucher/bank_name(string): 
// sa_voucher/branch_id(Guid?): Chi nhánh
// sa_voucher/caba_amount(decimal): 
// sa_voucher/caba_amount_oc(decimal): 
// sa_voucher/cash_book_posted_date(DateTime?): Ngày ghi sổ thủ quỹ
// sa_voucher/created_by(string): 
// sa_voucher/created_date(DateTime?): 
// sa_voucher/currency_id(string): Loại tiền
// sa_voucher/custom_field1(string): Kieu du lieu custom field1
// sa_voucher/custom_field10(string): Kieu du lieu custom field10
// sa_voucher/custom_field2(string): Kieu du lieu custom field3
// sa_voucher/custom_field3(string): Kieu du lieu custom field3
// sa_voucher/custom_field4(string): Kieu du lieu custom field4
// sa_voucher/custom_field5(string): Kieu du lieu custom field5
// sa_voucher/custom_field6(string): Kieu du lieu custom field6
// sa_voucher/custom_field7(string): Kieu du lieu custom field7
// sa_voucher/custom_field8(string): Kieu du lieu custom field8
// sa_voucher/custom_field9(string): Kieu du lieu custom field9
// sa_voucher/debt_status(int?): Tình trạng đòi nợ: (0=nợ bình thường;1=Nợ khó đòi;2=Nợ không thể đòi)
// sa_voucher/discount_rate_voucher(decimal): Tỷ lệ chiết klhấu theo mặt hàng
// sa_voucher/discount_type(int?): Loại chiết khấu:  0: Không chiết khấu 1: Theo mặt hàng 2: theo % hóa đơn 3: số tiền trên tổng số hóa đơn
// sa_voucher/display_on_book(int?): Xác định chứng từ được ghi vào sổ nào (0=Sổ tài chinh;1=Sổ quản trị;2=Cả hai)
// sa_voucher/document_included(string): Kèm theo chứng từ gốc
// sa_voucher/due_date(DateTime?): Hạn thanh toán
// sa_voucher/due_day(int?): Số ngày được nợ
// sa_voucher/employee_code(string): 
// sa_voucher/employee_id(Guid?): Nhân viên bán hàng
// sa_voucher/employee_name(string): mã nhân viên
// sa_voucher/exchange_rate(decimal): Tỉ giá hối đoái
// sa_voucher/include_invoice(int?): có lập kèm hóa đơn: 0 không lập kèm, 1 : có lập kèm hóa đơn
// sa_voucher/in_reforder(DateTime?): Giờ nhập xuất
// sa_voucher/inv_date(DateTime?): Ngày hóa đơn
// sa_voucher/inv_no(string): Danh sách hóa đơn lập kèm hoặc là lập từ các hóa đơn: nếu nhiều cách nhau dấu;
// sa_voucher/inv_series(string): Ký hiệu hóa đơn
// sa_voucher/is_invoice_exported(bool?): Đã xuất hóa đơn
// sa_voucher/is_invoice_exported_last_year(bool?): Đã xuất hóa đơn năm trước
// sa_voucher/is_paid(bool?): Đã thanh toán đủ.Với Chưa thanh toán, khi trả hết tiền thì cập nhật = 1
// sa_voucher/is_posted_cash_book_finance(bool?): Trạng thái ghi sổ thủ quỹ (Sổ tài chính)
// sa_voucher/is_posted_cash_book_management(bool?): Trạng thái ghi sổ thủ quỹ (Sổ quản trị)
// sa_voucher/is_posted_finance(bool?): Trạng thái ghi sổ Sổ tài chính
// sa_voucher/is_posted_management(bool?): Trạng thái ghi sổ Sổ quản trị
// sa_voucher/is_remind_debt(bool?): Tắt/bật tính năng nhắc nợ tự động
// sa_voucher/is_sale_with_outward(bool?): Bán hàng kiêm phiếu xuất kho
// sa_voucher/journal_memo(string): Lý do nộp/Diễn giải
// sa_voucher/modified_by(string): 
// sa_voucher/modified_date(DateTime?): 
// sa_voucher/other_term(string): Điều khoản khác
// sa_voucher/outward_exported_status(int?): Đã xuất hàng (0: Chưa xuất, 1: Đã xuất, 2: Để trắng <đối với hóa đơn bán hàng mà tất cả  mặt hàng đều có tính chất dịchvụ>), 3 là xuất một phần
// sa_voucher/outward_refid(Guid?): id phiếu xuất trong trường hợp có lập kèm phiếu xuất
// sa_voucher/paid_type(int?): hết tiền thì cập nhật = 1 chi tiết: 0: chưa thanh toán, 1: thanh toán hết, 2: thanh toán một phần
// sa_voucher/payer(string): Người nộp (Bán hàng thu tiền ngay) / Người liên hệ (Bán hàng chưa thu tiền)
// sa_voucher/payment_term_code(string): 
// sa_voucher/payment_term_id(Guid?): Điều kiện thanh toán
// sa_voucher/payment_term_name(string): 
// sa_voucher/posted_date(DateTime?): Ngày hạch toán
// sa_voucher/pu_voucher_refid(Guid?): 
// sa_voucher/refdate(DateTime?): Ngày chứng từ
// sa_voucher/refid(Guid?): PK
// sa_voucher/refno_finance(string): Số chứng từ sổ tài chính
// sa_voucher/refno_management(string): Số chứng từ sổ quản trị
// sa_voucher/reforder(long?): Số thứ tự nhập chứng từ
// sa_voucher/reftype(int?): Loại chứng từ
// sa_voucher/reftype_name(string): Tên loại chứng từ
// sa_voucher/sa_invoice_refid(Guid?): Id của hóa  đơn trong trường hợp bán hàng lập kèm hóa đơn
// sa_voucher/sa_invoice_request_refid(Guid?): 
// sa_voucher/shipping_address(string): Địa điểm giao hàng
// sa_voucher/supplier_code(string): Mã nhà cung cấp
// sa_voucher/supplier_id(Guid?): Nhà cung cấp/Đơn vị ủy thác xuất khẩu
// sa_voucher/supplier_name(string): Tên nhà cung cấp/đơn vị ủy thác xuất khẩu
// sa_voucher/total_amount(decimal): Tổng tiền thanh toán quy đổi
// sa_voucher/total_amount_oc(decimal): Tổng tiền thanh toán
// sa_voucher/total_discount_amount(decimal): Tổng tiền chiết khấu quy đổi
// sa_voucher/total_discount_amount_oc(decimal): Tổng tiền chiết khấu
// sa_voucher/total_export_tax_amount(decimal): Tiền thuế xuất khẩu QĐ
// sa_voucher/total_export_tax_amount_oc(decimal): Tiền thuế xuất khẩu
// sa_voucher/total_sale_amount(decimal): Tổng tiền hàng quy đổi
// sa_voucher/total_sale_amount_oc(decimal): Tổng tiền hàng
// sa_voucher/total_vat_amount(decimal): Tổng tiền thuế quy đổi
// sa_voucher/total_vat_amount_oc(decimal): Tổng tiền thuế
