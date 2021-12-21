import 'dart:convert';

/// converts json string to SingleAssetObject
SingleAssetObject singleAssetObjectFromJson(String str) =>
    SingleAssetObject.fromJson(json.decode(str));

/// converts a SingleAsserObject to a string of json
String singleAssetObjectToJson(SingleAssetObject data) =>
    json.encode(data.toJson());

/// SingleAssetObject class
/// called when a single asset is retrieved with getAsset() method
class SingleAssetObject {
  SingleAssetObject({
    this.id,
    this.tokenId,
    this.numSales,
    this.backgroundColor,
    this.imageUrl,
    this.imagePreviewUrl,
    this.imageThumbnailUrl,
    this.imageOriginalUrl,
    this.animationUrl,
    this.animationOriginalUrl,
    this.name,
    this.description,
    this.externalLink,
    this.assetContract,
    this.permalink,
    this.collection,
    this.decimals,
    this.tokenMetadata,
    this.owner,
    this.sellOrders,
    this.creator,
    this.traits,
    this.lastSale,
    this.topBid,
    this.listingDate,
    this.isPresale,
    this.transferFeePaymentToken,
    this.transferFee,
    this.relatedAssets,
    this.orders,
    this.auctions,
    this.supportsWyvern,
    this.topOwnerships,
    this.ownership,
    this.highestBuyerCommitment,
  });

  int? id;
  String? tokenId;
  int? numSales;
  dynamic backgroundColor;
  String? imageUrl;
  String? imagePreviewUrl;
  String? imageThumbnailUrl;
  String? imageOriginalUrl;
  dynamic animationUrl;
  dynamic animationOriginalUrl;
  String? name;
  dynamic description;
  String? externalLink;
  AssetContract? assetContract;
  String? permalink;
  Collection? collection;
  dynamic decimals;
  String? tokenMetadata;
  Creator? owner;
  dynamic sellOrders;
  Creator? creator;
  List<Trait>? traits;
  LastSale? lastSale;
  dynamic topBid;
  dynamic listingDate;
  bool? isPresale;
  dynamic transferFeePaymentToken;
  dynamic transferFee;
  List<dynamic>? relatedAssets;
  List<dynamic>? orders;
  List<dynamic>? auctions;
  bool? supportsWyvern;
  List<Ownership>? topOwnerships;
  Ownership? ownership;
  dynamic highestBuyerCommitment;

  factory SingleAssetObject.fromJson(Map<String, dynamic> json) =>
      SingleAssetObject(
        id: json["id"],
        tokenId: json["token_id"],
        numSales: json["num_sales"],
        backgroundColor: json["background_color"],
        imageUrl: json["image_url"],
        imagePreviewUrl: json["image_preview_url"],
        imageThumbnailUrl: json["image_thumbnail_url"],
        imageOriginalUrl: json["image_original_url"],
        animationUrl: json["animation_url"],
        animationOriginalUrl: json["animation_original_url"],
        name: json["name"],
        description: json["description"],
        externalLink: json["external_link"],
        assetContract: json["asset_contract"] == null
            ? null
            : AssetContract.fromJson(json["asset_contract"]),
        permalink: json["permalink"],
        collection: json["collection"] == null
            ? null
            : Collection.fromJson(json["collection"]),
        decimals: json["decimals"],
        tokenMetadata: json["token_metadata"],
        owner: json["owner"] == null ? null : Creator.fromJson(json["owner"]),
        sellOrders: json["sell_orders"],
        creator:
            json["creator"] == null ? null : Creator.fromJson(json["creator"]),
        traits: json["traits"] == null
            ? null
            : List<Trait>.from(json["traits"].map((x) => Trait.fromJson(x))),
        lastSale: json["last_sale"] == null
            ? null
            : LastSale.fromJson(json["last_sale"]),
        topBid: json["top_bid"],
        listingDate: json["listing_date"],
        isPresale: json["is_presale"],
        transferFeePaymentToken: json["transfer_fee_payment_token"],
        transferFee: json["transfer_fee"],
        relatedAssets: json["related_assets"] == null
            ? null
            : List<dynamic>.from(json["related_assets"].map((x) => x)),
        orders: json["orders"] == null
            ? null
            : List<dynamic>.from(json["orders"].map((x) => x)),
        auctions: json["auctions"] == null
            ? null
            : List<dynamic>.from(json["auctions"].map((x) => x)),
        supportsWyvern: json["supports_wyvern"],
        topOwnerships: json["top_ownerships"] == null
            ? null
            : List<Ownership>.from(
                json["top_ownerships"].map((x) => Ownership.fromJson(x))),
        ownership: json["ownership"] == null
            ? null
            : Ownership.fromJson(json["ownership"]),
        highestBuyerCommitment: json["highest_buyer_commitment"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "token_id": tokenId,
        "num_sales": numSales,
        "background_color": backgroundColor,
        "image_url": imageUrl,
        "image_preview_url": imagePreviewUrl,
        "image_thumbnail_url": imageThumbnailUrl,
        "image_original_url": imageOriginalUrl,
        "animation_url": animationUrl,
        "animation_original_url": animationOriginalUrl,
        "name": name,
        "description": description,
        "external_link": externalLink,
        "asset_contract": assetContract?.toJson(),
        "permalink": permalink,
        "collection": collection?.toJson(),
        "decimals": decimals,
        "token_metadata": tokenMetadata,
        "owner": owner?.toJson(),
        "sell_orders": sellOrders,
        "creator": creator?.toJson(),
        "traits": traits == null
            ? null
            : List<dynamic>.from(traits!.map((x) => x.toJson())),
        "last_sale": lastSale?.toJson(),
        "top_bid": topBid,
        "listing_date": listingDate,
        "is_presale": isPresale,
        "transfer_fee_payment_token": transferFeePaymentToken,
        "transfer_fee": transferFee,
        "related_assets": relatedAssets == null
            ? null
            : List<dynamic>.from(relatedAssets!.map((x) => x)),
        "orders":
            orders == null ? null : List<dynamic>.from(orders!.map((x) => x)),
        "auctions": auctions == null
            ? null
            : List<dynamic>.from(auctions!.map((x) => x)),
        "supports_wyvern": supportsWyvern,
        "top_ownerships": topOwnerships == null
            ? null
            : List<dynamic>.from(topOwnerships!.map((x) => x.toJson())),
        "ownership": ownership?.toJson(),
        "highest_buyer_commitment": highestBuyerCommitment,
      };

  @override
  String toString() {
    return 'SingleAssetObject{id: $id, tokenId: $tokenId, numSales: $numSales, backgroundColor: $backgroundColor, imageUrl: $imageUrl, imagePreviewUrl: $imagePreviewUrl, imageThumbnailUrl: $imageThumbnailUrl, imageOriginalUrl: $imageOriginalUrl, animationUrl: $animationUrl, animationOriginalUrl: $animationOriginalUrl, name: $name, description: $description, externalLink: $externalLink, assetContract: $assetContract, permalink: $permalink, collection: $collection, decimals: $decimals, tokenMetadata: $tokenMetadata, owner: $owner, sellOrders: $sellOrders, creator: $creator, traits: $traits, lastSale: $lastSale, topBid: $topBid, listingDate: $listingDate, isPresale: $isPresale, transferFeePaymentToken: $transferFeePaymentToken, transferFee: $transferFee, relatedAssets: $relatedAssets, orders: $orders, auctions: $auctions, supportsWyvern: $supportsWyvern, topOwnerships: $topOwnerships, ownership: $ownership, highestBuyerCommitment: $highestBuyerCommitment}';
  }
}

/// AssetContract class
/// information about the contract of an asset
class AssetContract {
  AssetContract({
    this.address,
    this.assetContractType,
    this.createdDate,
    this.name,
    this.nftVersion,
    this.openseaVersion,
    this.owner,
    this.schemaName,
    this.symbol,
    this.totalSupply,
    this.description,
    this.externalLink,
    this.imageUrl,
    this.defaultToFiat,
    this.devBuyerFeeBasisPoints,
    this.devSellerFeeBasisPoints,
    this.onlyProxiedTransfers,
    this.openseaBuyerFeeBasisPoints,
    this.openseaSellerFeeBasisPoints,
    this.buyerFeeBasisPoints,
    this.sellerFeeBasisPoints,
    this.payoutAddress,
  });

  String? address;
  String? assetContractType;
  DateTime? createdDate;
  String? name;
  String? nftVersion;
  dynamic openseaVersion;
  dynamic owner;
  String? schemaName;
  String? symbol;
  dynamic totalSupply;
  String? description;
  String? externalLink;
  String? imageUrl;
  bool? defaultToFiat;
  int? devBuyerFeeBasisPoints;
  int? devSellerFeeBasisPoints;
  bool? onlyProxiedTransfers;
  int? openseaBuyerFeeBasisPoints;
  int? openseaSellerFeeBasisPoints;
  int? buyerFeeBasisPoints;
  int? sellerFeeBasisPoints;
  String? payoutAddress;

  factory AssetContract.fromJson(Map<String, dynamic> json) => AssetContract(
        address: json["address"],
        assetContractType: json["asset_contract_type"],
        createdDate: json["created_date"] == null
            ? null
            : DateTime.parse(json["created_date"]),
        name: json["name"],
        nftVersion: json["nft_version"],
        openseaVersion: json["opensea_version"],
        owner: json["owner"],
        schemaName: json["schema_name"],
        symbol: json["symbol"],
        totalSupply: json["total_supply"],
        description: json["description"],
        externalLink: json["external_link"],
        imageUrl: json["image_url"],
        defaultToFiat: json["default_to_fiat"],
        devBuyerFeeBasisPoints: json["dev_buyer_fee_basis_points"],
        devSellerFeeBasisPoints: json["dev_seller_fee_basis_points"],
        onlyProxiedTransfers: json["only_proxied_transfers"],
        openseaBuyerFeeBasisPoints: json["opensea_buyer_fee_basis_points"],
        openseaSellerFeeBasisPoints: json["opensea_seller_fee_basis_points"],
        buyerFeeBasisPoints: json["buyer_fee_basis_points"],
        sellerFeeBasisPoints: json["seller_fee_basis_points"],
        payoutAddress: json["payout_address"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "asset_contract_type": assetContractType,
        "created_date": createdDate?.toIso8601String(),
        "name": name,
        "nft_version": nftVersion,
        "opensea_version": openseaVersion,
        "owner": owner,
        "schema_name": schemaName,
        "symbol": symbol,
        "total_supply": totalSupply,
        "description": description,
        "external_link": externalLink,
        "image_url": imageUrl,
        "default_to_fiat": defaultToFiat,
        "dev_buyer_fee_basis_points": devBuyerFeeBasisPoints,
        "dev_seller_fee_basis_points": devSellerFeeBasisPoints,
        "only_proxied_transfers": onlyProxiedTransfers,
        "opensea_buyer_fee_basis_points": openseaBuyerFeeBasisPoints,
        "opensea_seller_fee_basis_points": openseaSellerFeeBasisPoints,
        "buyer_fee_basis_points": buyerFeeBasisPoints,
        "seller_fee_basis_points": sellerFeeBasisPoints,
        "payout_address": payoutAddress,
      };

  @override
  String toString() {
    return 'AssetContract{address: $address, assetContractType: $assetContractType, createdDate: $createdDate, name: $name, nftVersion: $nftVersion, openseaVersion: $openseaVersion, owner: $owner, schemaName: $schemaName, symbol: $symbol, totalSupply: $totalSupply, description: $description, externalLink: $externalLink, imageUrl: $imageUrl, defaultToFiat: $defaultToFiat, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, buyerFeeBasisPoints: $buyerFeeBasisPoints, sellerFeeBasisPoints: $sellerFeeBasisPoints, payoutAddress: $payoutAddress}';
  }
}

/// Collection class
/// information about the collection associated with the asset
class Collection {
  Collection({
    this.paymentTokens,
    this.primaryAssetContracts,
    this.traits,
    this.stats,
    this.bannerImageUrl,
    this.chatUrl,
    this.createdDate,
    this.defaultToFiat,
    this.description,
    this.devBuyerFeeBasisPoints,
    this.devSellerFeeBasisPoints,
    this.discordUrl,
    this.displayData,
    this.externalUrl,
    this.featured,
    this.featuredImageUrl,
    this.hidden,
    this.safelistRequestStatus,
    this.imageUrl,
    this.isSubjectToWhitelist,
    this.largeImageUrl,
    this.mediumUsername,
    this.name,
    this.onlyProxiedTransfers,
    this.openseaBuyerFeeBasisPoints,
    this.openseaSellerFeeBasisPoints,
    this.payoutAddress,
    this.requireEmail,
    this.shortDescription,
    this.slug,
    this.telegramUrl,
    this.twitterUsername,
    this.instagramUsername,
    this.wikiUrl,
  });

  List<PaymentTokenElement>? paymentTokens;
  List<AssetContract>? primaryAssetContracts;
  Traits? traits;
  Map<String, double>? stats;
  String? bannerImageUrl;
  dynamic chatUrl;
  DateTime? createdDate;
  bool? defaultToFiat;
  String? description;
  String? devBuyerFeeBasisPoints;
  String? devSellerFeeBasisPoints;
  String? discordUrl;
  DisplayData? displayData;
  String? externalUrl;
  bool? featured;
  String? featuredImageUrl;
  bool? hidden;
  String? safelistRequestStatus;
  String? imageUrl;
  bool? isSubjectToWhitelist;
  String? largeImageUrl;
  dynamic mediumUsername;
  String? name;
  bool? onlyProxiedTransfers;
  String? openseaBuyerFeeBasisPoints;
  String? openseaSellerFeeBasisPoints;
  String? payoutAddress;
  bool? requireEmail;
  dynamic shortDescription;
  String? slug;
  dynamic telegramUrl;
  String? twitterUsername;
  dynamic instagramUsername;
  dynamic wikiUrl;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        paymentTokens: json["payment_tokens"] == null
            ? null
            : List<PaymentTokenElement>.from(json["payment_tokens"]
                .map((x) => PaymentTokenElement.fromJson(x))),
        primaryAssetContracts: json["primary_asset_contracts"] == null
            ? null
            : List<AssetContract>.from(json["primary_asset_contracts"]
                .map((x) => AssetContract.fromJson(x))),
        traits: json["traits"] == null ? null : Traits.fromJson(json["traits"]),
        stats: json["stats"] == null
            ? null
            : Map.from(json["stats"])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        bannerImageUrl: json["banner_image_url"],
        chatUrl: json["chat_url"],
        createdDate: json["created_date"] == null
            ? null
            : DateTime.parse(json["created_date"]),
        defaultToFiat: json["default_to_fiat"],
        description: json["description"],
        devBuyerFeeBasisPoints: json["dev_buyer_fee_basis_points"],
        devSellerFeeBasisPoints: json["dev_seller_fee_basis_points"],
        discordUrl: json["discord_url"],
        displayData: json["display_data"] == null
            ? null
            : DisplayData.fromJson(json["display_data"]),
        externalUrl: json["external_url"],
        featured: json["featured"],
        featuredImageUrl: json["featured_image_url"],
        hidden: json["hidden"],
        safelistRequestStatus: json["safelist_request_status"],
        imageUrl: json["image_url"],
        isSubjectToWhitelist: json["is_subject_to_whitelist"],
        largeImageUrl: json["large_image_url"],
        mediumUsername: json["medium_username"],
        name: json["name"],
        onlyProxiedTransfers: json["only_proxied_transfers"],
        openseaBuyerFeeBasisPoints: json["opensea_buyer_fee_basis_points"],
        openseaSellerFeeBasisPoints: json["opensea_seller_fee_basis_points"],
        payoutAddress: json["payout_address"],
        requireEmail: json["require_email"],
        shortDescription: json["short_description"],
        slug: json["slug"],
        telegramUrl: json["telegram_url"],
        twitterUsername: json["twitter_username"],
        instagramUsername: json["instagram_username"],
        wikiUrl: json["wiki_url"],
      );

  Map<String, dynamic> toJson() => {
        "payment_tokens": paymentTokens == null
            ? null
            : List<dynamic>.from(paymentTokens!.map((x) => x.toJson())),
        "primary_asset_contracts": primaryAssetContracts == null
            ? null
            : List<dynamic>.from(primaryAssetContracts!.map((x) => x.toJson())),
        "traits": traits?.toJson(),
        "stats": stats == null
            ? null
            : Map.from(stats!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "banner_image_url": bannerImageUrl,
        "chat_url": chatUrl,
        "created_date": createdDate?.toIso8601String(),
        "default_to_fiat": defaultToFiat,
        "description": description,
        "dev_buyer_fee_basis_points": devBuyerFeeBasisPoints,
        "dev_seller_fee_basis_points": devSellerFeeBasisPoints,
        "discord_url": discordUrl,
        "display_data": displayData?.toJson(),
        "external_url": externalUrl,
        "featured": featured,
        "featured_image_url": featuredImageUrl,
        "hidden": hidden,
        "safelist_request_status": safelistRequestStatus,
        "image_url": imageUrl,
        "is_subject_to_whitelist": isSubjectToWhitelist,
        "large_image_url": largeImageUrl,
        "medium_username": mediumUsername,
        "name": name,
        "only_proxied_transfers": onlyProxiedTransfers,
        "opensea_buyer_fee_basis_points": openseaBuyerFeeBasisPoints,
        "opensea_seller_fee_basis_points": openseaSellerFeeBasisPoints,
        "payout_address": payoutAddress,
        "require_email": requireEmail,
        "short_description": shortDescription,
        "slug": slug,
        "telegram_url": telegramUrl,
        "twitter_username": twitterUsername,
        "instagram_username": instagramUsername,
        "wiki_url": wikiUrl,
      };

  @override
  String toString() {
    return 'Collection{paymentTokens: $paymentTokens, primaryAssetContracts: $primaryAssetContracts, traits: $traits, stats: $stats, bannerImageUrl: $bannerImageUrl, chatUrl: $chatUrl, createdDate: $createdDate, defaultToFiat: $defaultToFiat, description: $description, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, discordUrl: $discordUrl, displayData: $displayData, externalUrl: $externalUrl, featured: $featured, featuredImageUrl: $featuredImageUrl, hidden: $hidden, safelistRequestStatus: $safelistRequestStatus, imageUrl: $imageUrl, isSubjectToWhitelist: $isSubjectToWhitelist, largeImageUrl: $largeImageUrl, mediumUsername: $mediumUsername, name: $name, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, payoutAddress: $payoutAddress, requireEmail: $requireEmail, shortDescription: $shortDescription, slug: $slug, telegramUrl: $telegramUrl, twitterUsername: $twitterUsername, instagramUsername: $instagramUsername, wikiUrl: $wikiUrl}';
  }
}

/// DisplayData class
/// information about display style
class DisplayData {
  DisplayData({
    this.cardDisplayStyle,
  });

  String? cardDisplayStyle;

  factory DisplayData.fromJson(Map<String, dynamic> json) => DisplayData(
        cardDisplayStyle: json["card_display_style"],
      );

  Map<String, dynamic> toJson() => {
        "card_display_style": cardDisplayStyle,
      };

  @override
  String toString() {
    return 'DisplayData{cardDisplayStyle: $cardDisplayStyle}';
  }
}

/// PaymentTokenElement class
/// information about payment
class PaymentTokenElement {
  PaymentTokenElement({
    this.id,
    this.symbol,
    this.address,
    this.imageUrl,
    this.name,
    this.decimals,
    this.ethPrice,
    this.usdPrice,
  });

  int? id;
  String? symbol;
  String? address;
  String? imageUrl;
  String? name;
  int? decimals;
  double? ethPrice;
  double? usdPrice;

  factory PaymentTokenElement.fromJson(Map<String, dynamic> json) =>
      PaymentTokenElement(
        id: json["id"],
        symbol: json["symbol"],
        address: json["address"],
        imageUrl: json["image_url"],
        name: json["name"],
        decimals: json["decimals"],
        ethPrice: json["eth_price"].toDouble(),
        usdPrice: json["usd_price"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "address": address,
        "image_url": imageUrl,
        "name": name,
        "decimals": decimals,
        "eth_price": ethPrice,
        "usd_price": usdPrice,
      };

  @override
  String toString() {
    return 'PaymentTokenElement{id: $id, symbol: $symbol, address: $address, imageUrl: $imageUrl, name: $name, decimals: $decimals, ethPrice: $ethPrice, usdPrice: $usdPrice}';
  }
}

/// Traits class
/// traits object
class Traits {
  Traits();

  factory Traits.fromJson(Map<String, dynamic> json) => Traits();

  Map<String, dynamic> toJson() => {};

  @override
  String toString() {
    return 'Traits{}';
  }
}

/// Creator class
/// information about the creator of the asset
class Creator {
  Creator({
    this.user,
    this.profileImgUrl,
    this.address,
    this.config,
  });

  User? user;
  String? profileImgUrl;
  String? address;
  String? config;

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        profileImgUrl: json["profile_img_url"],
        address: json["address"],
        config: json["config"],
      );

  Map<String, dynamic> toJson() => {
        "user": user == null ? null : user!.toJson(),
        "profile_img_url": profileImgUrl,
        "address": address,
        "config": config,
      };

  @override
  String toString() {
    return 'Creator{user: $user, profileImgUrl: $profileImgUrl, address: $address, config: $config}';
  }
}

/// User class
/// username of user associated with asset
class User {
  User({
    this.username,
  });

  String? username;

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
      };

  @override
  String toString() {
    return 'User{username: $username}';
  }
}

/// LastSale class
/// information about the last sale of the asset
class LastSale {
  LastSale({
    this.asset,
    this.assetBundle,
    this.eventType,
    this.eventTimestamp,
    this.auctionType,
    this.totalPrice,
    this.paymentToken,
    this.transaction,
    this.createdDate,
    this.quantity,
  });

  Asset? asset;
  dynamic assetBundle;
  String? eventType;
  DateTime? eventTimestamp;
  dynamic auctionType;
  String? totalPrice;
  LastSalePaymentToken? paymentToken;
  Transaction? transaction;
  DateTime? createdDate;
  String? quantity;

  factory LastSale.fromJson(Map<String, dynamic> json) => LastSale(
        asset: json["asset"] == null ? null : Asset.fromJson(json["asset"]),
        assetBundle: json["asset_bundle"],
        eventType: json["event_type"],
        eventTimestamp: json["event_timestamp"] == null
            ? null
            : DateTime.parse(json["event_timestamp"]),
        auctionType: json["auction_type"],
        totalPrice: json["total_price"],
        paymentToken: json["payment_token"] == null
            ? null
            : LastSalePaymentToken.fromJson(json["payment_token"]),
        transaction: json["transaction"] == null
            ? null
            : Transaction.fromJson(json["transaction"]),
        createdDate: json["created_date"] == null
            ? null
            : DateTime.parse(json["created_date"]),
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "asset": asset?.toJson(),
        "asset_bundle": assetBundle,
        "event_type": eventType,
        "event_timestamp": eventTimestamp?.toIso8601String(),
        "auction_type": auctionType,
        "total_price": totalPrice,
        "payment_token": paymentToken?.toJson(),
        "transaction": transaction?.toJson(),
        "created_date": createdDate?.toIso8601String(),
        "quantity": quantity,
      };

  @override
  String toString() {
    return 'LastSale{asset: $asset, assetBundle: $assetBundle, eventType: $eventType, eventTimestamp: $eventTimestamp, auctionType: $auctionType, totalPrice: $totalPrice, paymentToken: $paymentToken, transaction: $transaction, createdDate: $createdDate, quantity: $quantity}';
  }
}

/// Asset class
/// quick reference to an asset
class Asset {
  Asset({
    this.tokenId,
    this.decimals,
  });

  String? tokenId;
  dynamic decimals;

  factory Asset.fromJson(Map<String, dynamic> json) => Asset(
        tokenId: json["token_id"],
        decimals: json["decimals"],
      );

  Map<String, dynamic> toJson() => {
        "token_id": tokenId,
        "decimals": decimals,
      };

  @override
  String toString() {
    return 'Asset{tokenId: $tokenId, decimals: $decimals}';
  }
}

/// LastSalePaymentToken class
/// payment information about last payment
class LastSalePaymentToken {
  LastSalePaymentToken({
    this.id,
    this.symbol,
    this.address,
    this.imageUrl,
    this.name,
    this.decimals,
    this.ethPrice,
    this.usdPrice,
  });

  int? id;
  String? symbol;
  String? address;
  String? imageUrl;
  String? name;
  int? decimals;
  String? ethPrice;
  String? usdPrice;

  factory LastSalePaymentToken.fromJson(Map<String, dynamic> json) =>
      LastSalePaymentToken(
        id: json["id"],
        symbol: json["symbol"],
        address: json["address"],
        imageUrl: json["image_url"],
        name: json["name"],
        decimals: json["decimals"],
        ethPrice: json["eth_price"],
        usdPrice: json["usd_price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "address": address,
        "image_url": imageUrl,
        "name": name,
        "decimals": decimals,
        "eth_price": ethPrice,
        "usd_price": usdPrice,
      };

  @override
  String toString() {
    return 'LastSalePaymentToken{id: $id, symbol: $symbol, address: $address, imageUrl: $imageUrl, name: $name, decimals: $decimals, ethPrice: $ethPrice, usdPrice: $usdPrice}';
  }
}

/// Transaction class
/// contains information about the transaction on the blockchain
class Transaction {
  Transaction({
    this.blockHash,
    this.blockNumber,
    this.fromAccount,
    this.id,
    this.timestamp,
    this.toAccount,
    this.transactionHash,
    this.transactionIndex,
  });

  String? blockHash;
  String? blockNumber;
  Creator? fromAccount;
  int? id;
  DateTime? timestamp;
  Creator? toAccount;
  String? transactionHash;
  String? transactionIndex;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        blockHash: json["block_hash"],
        blockNumber: json["block_number"],
        fromAccount: json["from_account"] == null
            ? null
            : Creator.fromJson(json["from_account"]),
        id: json["id"],
        timestamp: json["timestamp"] == null
            ? null
            : DateTime.parse(json["timestamp"]),
        toAccount: json["to_account"] == null
            ? null
            : Creator.fromJson(json["to_account"]),
        transactionHash: json["transaction_hash"],
        transactionIndex: json["transaction_index"],
      );

  Map<String, dynamic> toJson() => {
        "block_hash": blockHash,
        "block_number": blockNumber,
        "from_account": fromAccount?.toJson(),
        "id": id,
        "timestamp": timestamp?.toIso8601String(),
        "to_account": toAccount?.toJson(),
        "transaction_hash": transactionHash,
        "transaction_index": transactionIndex,
      };

  @override
  String toString() {
    return 'Transaction{blockHash: $blockHash, blockNumber: $blockNumber, fromAccount: $fromAccount, id: $id, timestamp: $timestamp, toAccount: $toAccount, transactionHash: $transactionHash, transactionIndex: $transactionIndex}';
  }
}

/// Ownership class
/// details about who owns the asset and how many
class Ownership {
  Ownership({
    this.owner,
    this.quantity,
  });

  Creator? owner;
  String? quantity;

  factory Ownership.fromJson(Map<String, dynamic> json) => Ownership(
        owner: json["owner"] == null ? null : Creator.fromJson(json["owner"]),
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "owner": owner?.toJson(),
        "quantity": quantity,
      };

  @override
  String toString() {
    return 'Ownership{owner: $owner, quantity: $quantity}';
  }
}

/// Trait class
/// custom details about the asset
class Trait {
  Trait({
    this.traitType,
    this.value,
    this.displayType,
    this.maxValue,
    this.traitCount,
    this.order,
  });

  String? traitType;
  String? value;
  dynamic displayType;
  dynamic maxValue;
  int? traitCount;
  dynamic order;

  factory Trait.fromJson(Map<String, dynamic> json) => Trait(
        traitType: json["trait_type"],
        value: json["value"],
        displayType: json["display_type"],
        maxValue: json["max_value"],
        traitCount: json["trait_count"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "trait_type": traitType,
        "value": value,
        "display_type": displayType,
        "max_value": maxValue,
        "trait_count": traitCount,
        "order": order,
      };

  @override
  String toString() {
    return 'Trait{traitType: $traitType, value: $value, displayType: $displayType, maxValue: $maxValue, traitCount: $traitCount, order: $order}';
  }
}
