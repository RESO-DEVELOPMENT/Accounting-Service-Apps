# accounting_service

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Misa định nghĩa dử liệu đầu vào
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