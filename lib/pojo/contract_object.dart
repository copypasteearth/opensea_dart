// To parse this JSON data, do
//
//     final contractObject = contractObjectFromJson(jsonString);

import 'dart:convert';

ContractObject contractObjectFromJson(String str) => ContractObject.fromJson(json.decode(str));

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
    collection: json["collection"] == null ? null : Collection.fromJson(json["collection"]),
    address: json["address"] == null ? null : json["address"],
    assetContractType: json["asset_contract_type"] == null ? null : json["asset_contract_type"],
    createdDate: json["created_date"] == null ? null : DateTime.parse(json["created_date"]),
    name: json["name"] == null ? null : json["name"],
    nftVersion: json["nft_version"] == null ? null : json["nft_version"],
    openseaVersion: json["opensea_version"],
    owner: json["owner"] == null ? null : json["owner"],
    schemaName: json["schema_name"] == null ? null : json["schema_name"],
    symbol: json["symbol"] == null ? null : json["symbol"],
    totalSupply: json["total_supply"],
    description: json["description"] == null ? null : json["description"],
    externalLink: json["external_link"] == null ? null : json["external_link"],
    imageUrl: json["image_url"] == null ? null : json["image_url"],
    defaultToFiat: json["default_to_fiat"] == null ? null : json["default_to_fiat"],
    devBuyerFeeBasisPoints: json["dev_buyer_fee_basis_points"] == null ? null : json["dev_buyer_fee_basis_points"],
    devSellerFeeBasisPoints: json["dev_seller_fee_basis_points"] == null ? null : json["dev_seller_fee_basis_points"],
    onlyProxiedTransfers: json["only_proxied_transfers"] == null ? null : json["only_proxied_transfers"],
    openseaBuyerFeeBasisPoints: json["opensea_buyer_fee_basis_points"] == null ? null : json["opensea_buyer_fee_basis_points"],
    openseaSellerFeeBasisPoints: json["opensea_seller_fee_basis_points"] == null ? null : json["opensea_seller_fee_basis_points"],
    buyerFeeBasisPoints: json["buyer_fee_basis_points"] == null ? null : json["buyer_fee_basis_points"],
    sellerFeeBasisPoints: json["seller_fee_basis_points"] == null ? null : json["seller_fee_basis_points"],
    payoutAddress: json["payout_address"],
  );

  Map<String, dynamic> toJson() => {
    "collection": collection == null ? null : collection?.toJson(),
    "address": address == null ? null : address,
    "asset_contract_type": assetContractType == null ? null : assetContractType,
    "created_date": createdDate == null ? null : createdDate?.toIso8601String(),
    "name": name == null ? null : name,
    "nft_version": nftVersion == null ? null : nftVersion,
    "opensea_version": openseaVersion,
    "owner": owner == null ? null : owner,
    "schema_name": schemaName == null ? null : schemaName,
    "symbol": symbol == null ? null : symbol,
    "total_supply": totalSupply,
    "description": description == null ? null : description,
    "external_link": externalLink == null ? null : externalLink,
    "image_url": imageUrl == null ? null : imageUrl,
    "default_to_fiat": defaultToFiat == null ? null : defaultToFiat,
    "dev_buyer_fee_basis_points": devBuyerFeeBasisPoints == null ? null : devBuyerFeeBasisPoints,
    "dev_seller_fee_basis_points": devSellerFeeBasisPoints == null ? null : devSellerFeeBasisPoints,
    "only_proxied_transfers": onlyProxiedTransfers == null ? null : onlyProxiedTransfers,
    "opensea_buyer_fee_basis_points": openseaBuyerFeeBasisPoints == null ? null : openseaBuyerFeeBasisPoints,
    "opensea_seller_fee_basis_points": openseaSellerFeeBasisPoints == null ? null : openseaSellerFeeBasisPoints,
    "buyer_fee_basis_points": buyerFeeBasisPoints == null ? null : buyerFeeBasisPoints,
    "seller_fee_basis_points": sellerFeeBasisPoints == null ? null : sellerFeeBasisPoints,
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
    bannerImageUrl: json["banner_image_url"] == null ? null : json["banner_image_url"],
    chatUrl: json["chat_url"],
    createdDate: json["created_date"] == null ? null : DateTime.parse(json["created_date"]),
    defaultToFiat: json["default_to_fiat"] == null ? null : json["default_to_fiat"],
    description: json["description"] == null ? null : json["description"],
    devBuyerFeeBasisPoints: json["dev_buyer_fee_basis_points"] == null ? null : json["dev_buyer_fee_basis_points"],
    devSellerFeeBasisPoints: json["dev_seller_fee_basis_points"] == null ? null : json["dev_seller_fee_basis_points"],
    discordUrl: json["discord_url"] == null ? null : json["discord_url"],
    displayData: json["display_data"] == null ? null : DisplayData.fromJson(json["display_data"]),
    externalUrl: json["external_url"] == null ? null : json["external_url"],
    featured: json["featured"] == null ? null : json["featured"],
    featuredImageUrl: json["featured_image_url"] == null ? null : json["featured_image_url"],
    hidden: json["hidden"] == null ? null : json["hidden"],
    safelistRequestStatus: json["safelist_request_status"] == null ? null : json["safelist_request_status"],
    imageUrl: json["image_url"] == null ? null : json["image_url"],
    isSubjectToWhitelist: json["is_subject_to_whitelist"] == null ? null : json["is_subject_to_whitelist"],
    largeImageUrl: json["large_image_url"] == null ? null : json["large_image_url"],
    mediumUsername: json["medium_username"],
    name: json["name"] == null ? null : json["name"],
    onlyProxiedTransfers: json["only_proxied_transfers"] == null ? null : json["only_proxied_transfers"],
    openseaBuyerFeeBasisPoints: json["opensea_buyer_fee_basis_points"] == null ? null : json["opensea_buyer_fee_basis_points"],
    openseaSellerFeeBasisPoints: json["opensea_seller_fee_basis_points"] == null ? null : json["opensea_seller_fee_basis_points"],
    payoutAddress: json["payout_address"],
    requireEmail: json["require_email"] == null ? null : json["require_email"],
    shortDescription: json["short_description"],
    slug: json["slug"] == null ? null : json["slug"],
    telegramUrl: json["telegram_url"],
    twitterUsername: json["twitter_username"] == null ? null : json["twitter_username"],
    instagramUsername: json["instagram_username"],
    wikiUrl: json["wiki_url"] == null ? null : json["wiki_url"],
  );

  Map<String, dynamic> toJson() => {
    "banner_image_url": bannerImageUrl == null ? null : bannerImageUrl,
    "chat_url": chatUrl,
    "created_date": createdDate == null ? null : createdDate?.toIso8601String(),
    "default_to_fiat": defaultToFiat == null ? null : defaultToFiat,
    "description": description == null ? null : description,
    "dev_buyer_fee_basis_points": devBuyerFeeBasisPoints == null ? null : devBuyerFeeBasisPoints,
    "dev_seller_fee_basis_points": devSellerFeeBasisPoints == null ? null : devSellerFeeBasisPoints,
    "discord_url": discordUrl == null ? null : discordUrl,
    "display_data": displayData == null ? null : displayData?.toJson(),
    "external_url": externalUrl == null ? null : externalUrl,
    "featured": featured == null ? null : featured,
    "featured_image_url": featuredImageUrl == null ? null : featuredImageUrl,
    "hidden": hidden == null ? null : hidden,
    "safelist_request_status": safelistRequestStatus == null ? null : safelistRequestStatus,
    "image_url": imageUrl == null ? null : imageUrl,
    "is_subject_to_whitelist": isSubjectToWhitelist == null ? null : isSubjectToWhitelist,
    "large_image_url": largeImageUrl == null ? null : largeImageUrl,
    "medium_username": mediumUsername,
    "name": name == null ? null : name,
    "only_proxied_transfers": onlyProxiedTransfers == null ? null : onlyProxiedTransfers,
    "opensea_buyer_fee_basis_points": openseaBuyerFeeBasisPoints == null ? null : openseaBuyerFeeBasisPoints,
    "opensea_seller_fee_basis_points": openseaSellerFeeBasisPoints == null ? null : openseaSellerFeeBasisPoints,
    "payout_address": payoutAddress,
    "require_email": requireEmail == null ? null : requireEmail,
    "short_description": shortDescription,
    "slug": slug == null ? null : slug,
    "telegram_url": telegramUrl,
    "twitter_username": twitterUsername == null ? null : twitterUsername,
    "instagram_username": instagramUsername,
    "wiki_url": wikiUrl == null ? null : wikiUrl,
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
    cardDisplayStyle: json["card_display_style"] == null ? null : json["card_display_style"],
  );

  Map<String, dynamic> toJson() => {
    "card_display_style": cardDisplayStyle == null ? null : cardDisplayStyle,
  };

  @override
  String toString() {
    return 'DisplayData{cardDisplayStyle: $cardDisplayStyle}';
  }
}
