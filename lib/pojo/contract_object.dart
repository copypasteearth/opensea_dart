// To parse this JSON data, do
//
//     final contractObject = contractObjectFromJson(jsonString);

import 'dart:convert';

ContractObject contractObjectFromJson(String str) =>
    ContractObject.fromJson(json.decode(str));

String contractObjectToJson(ContractObject data) => json.encode(data.toJson());

class ContractObject {
  ContractObject({
    this.collection,
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

  Collection? collection;
  String? address;
  String? assetContractType;
  DateTime? createdDate;
  String? name;
  String? nftVersion;
  dynamic openseaVersion;
  int? owner;
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
  dynamic payoutAddress;

  factory ContractObject.fromJson(Map<String, dynamic> json) => ContractObject(
        collection: json["collection"] == null
            ? null
            : Collection.fromJson(json["collection"]),
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
        "collection": collection?.toJson(),
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
    return 'ContractObject{collection: $collection, address: $address, assetContractType: $assetContractType, createdDate: $createdDate, name: $name, nftVersion: $nftVersion, openseaVersion: $openseaVersion, owner: $owner, schemaName: $schemaName, symbol: $symbol, totalSupply: $totalSupply, description: $description, externalLink: $externalLink, imageUrl: $imageUrl, defaultToFiat: $defaultToFiat, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, buyerFeeBasisPoints: $buyerFeeBasisPoints, sellerFeeBasisPoints: $sellerFeeBasisPoints, payoutAddress: $payoutAddress}';
  }
}

class Collection {
  Collection({
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
  dynamic payoutAddress;
  bool? requireEmail;
  dynamic shortDescription;
  String? slug;
  dynamic telegramUrl;
  String? twitterUsername;
  dynamic instagramUsername;
  String? wikiUrl;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
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
    return 'Collection{bannerImageUrl: $bannerImageUrl, chatUrl: $chatUrl, createdDate: $createdDate, defaultToFiat: $defaultToFiat, description: $description, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, discordUrl: $discordUrl, displayData: $displayData, externalUrl: $externalUrl, featured: $featured, featuredImageUrl: $featuredImageUrl, hidden: $hidden, safelistRequestStatus: $safelistRequestStatus, imageUrl: $imageUrl, isSubjectToWhitelist: $isSubjectToWhitelist, largeImageUrl: $largeImageUrl, mediumUsername: $mediumUsername, name: $name, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, payoutAddress: $payoutAddress, requireEmail: $requireEmail, shortDescription: $shortDescription, slug: $slug, telegramUrl: $telegramUrl, twitterUsername: $twitterUsername, instagramUsername: $instagramUsername, wikiUrl: $wikiUrl}';
  }
}

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
