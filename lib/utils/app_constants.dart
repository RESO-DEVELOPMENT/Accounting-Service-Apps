class AppConstants {
  static const String APP_NAME = 'Accounting App';
  static const double APP_VERSION = 1.1;

  // api
  static const String BASE_URL_PRODUCTION =
      'https://accounting.endy.bio/api/v1/';
  static const String BASE_URL_DEV = 'https://localhost:7083/api/v1/';

  //api Misa Sync
  static const String BASE__MISA_URL_PROD = 'https://actapp.misa.vn/';
  static const String BASE__MISA_URL_DEV = 'https://testactapp.misa.vn/';

  static const String SYNC_SAVOUCHER_MISA = 'misa/sync/savoucher/';

  //ProoOfSale api
  static const String PROOF_OF_SALE_CREATE = 'proof-of-sale';
  static const String INVENTORY_ITEM_FILTER = 'misa/inventory-item';
  static const String PROOF_OF_SALE_DETAILS = 'proof-of-sale/';

  // Shared Key
  static const String THEME = 'theme';
  static const String TOKEN = 'token';
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';
  static const String CART_LIST = 'cart_list';
  static const String USER_PASSWORD = 'user_password';
  static const String USER_ADDRESS = 'user_address';
  static const String USER_NUMBER = 'user_number';
  static const String SEARCH_ADDRESS = 'search_address';
  static const String TOPIC = 'notify';
  static const String TABLE_NUMBER = 'table_number';
  static const String BRANCH = 'branch';
  static const String ORDER_INFO = 'order_info';
  static const String IS_FIX_TABLE = 'is_fix_table';
}
