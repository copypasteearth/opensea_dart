/// OrderBy class
/// can be used as a parameter to getAssets function
class OrderBy {
  static String get saleDate => "sale_date";
  static String get saleCount => "sale_count";
  static String get salePrice => "sale_price";
}

/// OrderDirection class
/// can be used as parameter to getAssets function
class OrderDirection {
  static String get asc => "asc";
  static String get desc => "desc";
}

/// EventType class
/// can be used to filter events as a parameter to getEvents function
class EventType {
  static String get created => "created";
  static String get successful => "successful";
  static String get cancelled => "cancelled";
  static String get bidEntered => "bid_entered";
  static String get bidWithdrawn => "bid_withdrawn";
  static String get transfer => "transfer";
  static String get approve => "approve";
}

/// AuctionType class
/// Can be english for English Auctions, dutch for fixed-price and declining-price sell orders (Dutch Auctions), or min-price for CryptoPunks bidding auctions.
class AuctionType {
  static String get english => "english";
  static String get dutch => "dutch";
  static String get minPrice => "min_price";
}

/// OrderSide class
/// Filter by the side of the order. 0 for buy orders and 1 for sell orders. (getOrders())
class OrderSide {
  static String get buy => "0";
  static String get sell => "1";
}

/// SaleKind class
/// Filter by the kind of sell order. 0 for fixed-price sales or min-bid auctions, and 1 for declining-price Dutch Auctions. NOTE: use only_english=true for filtering for only English Auctions
class SaleKind {
  static String get fixedPriceMinBid => "0";
  static String get decliningPriceDutchAuctions => "1";
}

/// GetOrdersOrderBy class
/// How to sort the orders. Can be created_date for when they were made, or eth_price to see the lowest-priced orders first (converted to their ETH values). eth_price is only supported when asset_contract_address and token_id are also defined.
class GetOrdersOrderBy {
  static String get createdDate => "created_date";
  static String get ethPrice => "eth_price";
}
