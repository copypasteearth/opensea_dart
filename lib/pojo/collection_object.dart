class CollectionObject {
  Collection? collection;

  CollectionObject({this.collection});

  CollectionObject.fromJson(Map<String, dynamic> json) {
    collection = json['collection'] != null ? new Collection.fromJson(json['collection']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.collection != null) {
      data['collection'] = this.collection!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'CollectionObject{collection: $collection}';
  }
}

class Collection {
  List<dynamic>? editors;
  List<dynamic>? paymentTokens;
  List<dynamic>? primaryAssetContracts;
  Traits? traits;
  Stats? stats;
  String? bannerImageUrl;
  String? chatUrl;
  String? createdDate;
  bool? defaultToFiat;
  String? description;
  String? devBuyerFeeBasisPoints;
  String? devSellerFeeBasisPoints;
  String? discordUrl;
  Traits? displayData;
  String? externalUrl;
  bool? featured;
  String? featuredImageUrl;
  bool? hidden;
  String? safelistRequestStatus;
  String? imageUrl;
  bool? isSubjectToWhitelist;
  String? largeImageUrl;
  String? mediumUsername;
  String? name;
  bool? onlyProxiedTransfers;
  String? openseaBuyerFeeBasisPoints;
  String? openseaSellerFeeBasisPoints;
  String? payoutAddress;
  bool? requireEmail;
  String? shortDescription;
  String? slug;
  String? telegramUrl;
  String? twitterUsername;
  String? instagramUsername;
  String? wikiUrl;

  Collection({this.editors, this.paymentTokens, this.primaryAssetContracts, this.traits, this.stats, this.bannerImageUrl, this.chatUrl, this.createdDate, this.defaultToFiat, this.description, this.devBuyerFeeBasisPoints, this.devSellerFeeBasisPoints, this.discordUrl, this.displayData, this.externalUrl, this.featured, this.featuredImageUrl, this.hidden, this.safelistRequestStatus, this.imageUrl, this.isSubjectToWhitelist, this.largeImageUrl, this.mediumUsername, this.name, this.onlyProxiedTransfers, this.openseaBuyerFeeBasisPoints, this.openseaSellerFeeBasisPoints, this.payoutAddress, this.requireEmail, this.shortDescription, this.slug, this.telegramUrl, this.twitterUsername, this.instagramUsername, this.wikiUrl});

  Collection.fromJson(Map<String, dynamic> json) {
    if (json['editors'] != null) {
      editors = [];
      json['editors'].forEach((v) { editors!.add(v); });
    }
    if (json['payment_tokens'] != null) {
      paymentTokens = [];
      json['payment_tokens'].forEach((v) { paymentTokens!.add(v); });
    }
    if (json['primary_asset_contracts'] != null) {
      primaryAssetContracts = [];
      json['primary_asset_contracts'].forEach((v) { primaryAssetContracts!.add(v); });
    }
    traits = json['traits'] != null ? new Traits.fromJson(json['traits']) : null;
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    bannerImageUrl = json['banner_image_url'];
    chatUrl = json['chat_url'];
    createdDate = json['created_date'];
    defaultToFiat = json['default_to_fiat'];
    description = json['description'];
    devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'];
    devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'];
    discordUrl = json['discord_url'];
    displayData = json['display_data'] != null ? new Traits.fromJson(json['display_data']) : null;
    externalUrl = json['external_url'];
    featured = json['featured'];
    featuredImageUrl = json['featured_image_url'];
    hidden = json['hidden'];
    safelistRequestStatus = json['safelist_request_status'];
    imageUrl = json['image_url'];
    isSubjectToWhitelist = json['is_subject_to_whitelist'];
    largeImageUrl = json['large_image_url'];
    mediumUsername = json['medium_username'];
    name = json['name'];
    onlyProxiedTransfers = json['only_proxied_transfers'];
    openseaBuyerFeeBasisPoints = json['opensea_buyer_fee_basis_points'];
    openseaSellerFeeBasisPoints = json['opensea_seller_fee_basis_points'];
    payoutAddress = json['payout_address'];
    requireEmail = json['require_email'];
    shortDescription = json['short_description'];
    slug = json['slug'];
    telegramUrl = json['telegram_url'];
    twitterUsername = json['twitter_username'];
    instagramUsername = json['instagram_username'];
    wikiUrl = json['wiki_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.editors != null) {
      data['editors'] = this.editors!.map((v) => v).toList();
    }
    if (this.paymentTokens != null) {
      data['payment_tokens'] = this.paymentTokens!.map((v) => v).toList();
    }
    if (this.primaryAssetContracts != null) {
      data['primary_asset_contracts'] = this.primaryAssetContracts!.map((v) => v).toList();
    }
    if (this.traits != null) {
      data['traits'] = this.traits!.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats!.toJson();
    }
    data['banner_image_url'] = this.bannerImageUrl;
    data['chat_url'] = this.chatUrl;
    data['created_date'] = this.createdDate;
    data['default_to_fiat'] = this.defaultToFiat;
    data['description'] = this.description;
    data['dev_buyer_fee_basis_points'] = this.devBuyerFeeBasisPoints;
    data['dev_seller_fee_basis_points'] = this.devSellerFeeBasisPoints;
    data['discord_url'] = this.discordUrl;
    if (this.displayData != null) {
      data['display_data'] = this.displayData!.toJson();
    }
    data['external_url'] = this.externalUrl;
    data['featured'] = this.featured;
    data['featured_image_url'] = this.featuredImageUrl;
    data['hidden'] = this.hidden;
    data['safelist_request_status'] = this.safelistRequestStatus;
    data['image_url'] = this.imageUrl;
    data['is_subject_to_whitelist'] = this.isSubjectToWhitelist;
    data['large_image_url'] = this.largeImageUrl;
    data['medium_username'] = this.mediumUsername;
    data['name'] = this.name;
    data['only_proxied_transfers'] = this.onlyProxiedTransfers;
    data['opensea_buyer_fee_basis_points'] = this.openseaBuyerFeeBasisPoints;
    data['opensea_seller_fee_basis_points'] = this.openseaSellerFeeBasisPoints;
    data['payout_address'] = this.payoutAddress;
    data['require_email'] = this.requireEmail;
    data['short_description'] = this.shortDescription;
    data['slug'] = this.slug;
    data['telegram_url'] = this.telegramUrl;
    data['twitter_username'] = this.twitterUsername;
    data['instagram_username'] = this.instagramUsername;
    data['wiki_url'] = this.wikiUrl;
    return data;
  }

  @override
  String toString() {
    return 'Collection{editors: $editors, paymentTokens: $paymentTokens, primaryAssetContracts: $primaryAssetContracts, traits: $traits, stats: $stats, bannerImageUrl: $bannerImageUrl, chatUrl: $chatUrl, createdDate: $createdDate, defaultToFiat: $defaultToFiat, description: $description, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, discordUrl: $discordUrl, displayData: $displayData, externalUrl: $externalUrl, featured: $featured, featuredImageUrl: $featuredImageUrl, hidden: $hidden, safelistRequestStatus: $safelistRequestStatus, imageUrl: $imageUrl, isSubjectToWhitelist: $isSubjectToWhitelist, largeImageUrl: $largeImageUrl, mediumUsername: $mediumUsername, name: $name, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, payoutAddress: $payoutAddress, requireEmail: $requireEmail, shortDescription: $shortDescription, slug: $slug, telegramUrl: $telegramUrl, twitterUsername: $twitterUsername, instagramUsername: $instagramUsername, wikiUrl: $wikiUrl}';
  }
}

class Traits {
  Map<String, dynamic>? data;

  Traits({this.data});

Traits.fromJson(Map<String, dynamic> json) {
  data = json;
}

Map<String, dynamic> toJson() {
  return data!;
}

  @override
  String toString() {
    return 'Traits{data: $data}';
  }
}

class Stats {
  double? oneDayVolume;
  double? oneDayChange;
  double? oneDaySales;
  double? oneDayAveragePrice;
  double? sevenDayVolume;
  double? sevenDayChange;
  double? sevenDaySales;
  double? sevenDayAveragePrice;
  double? thirtyDayVolume;
  double? thirtyDayChange;
  double? thirtyDaySales;
  double? thirtyDayAveragePrice;
  double? totalVolume;
  double? totalSales;
  double? totalSupply;
  double? count;
  int? numOwners;
  double? averagePrice;
  int? numReports;
  double? marketCap;
  double? floorPrice;

  Stats({this.oneDayVolume, this.oneDayChange, this.oneDaySales, this.oneDayAveragePrice, this.sevenDayVolume, this.sevenDayChange, this.sevenDaySales, this.sevenDayAveragePrice, this.thirtyDayVolume, this.thirtyDayChange, this.thirtyDaySales, this.thirtyDayAveragePrice, this.totalVolume, this.totalSales, this.totalSupply, this.count, this.numOwners, this.averagePrice, this.numReports, this.marketCap, this.floorPrice});

  Stats.fromJson(Map<String, dynamic> json) {
    oneDayVolume = json['one_day_volume'];
    oneDayChange = json['one_day_change'];
    oneDaySales = json['one_day_sales'];
    oneDayAveragePrice = json['one_day_average_price'];
    sevenDayVolume = json['seven_day_volume'];
    sevenDayChange = json['seven_day_change'];
    sevenDaySales = json['seven_day_sales'];
    sevenDayAveragePrice = json['seven_day_average_price'];
    thirtyDayVolume = json['thirty_day_volume'];
    thirtyDayChange = json['thirty_day_change'];
    thirtyDaySales = json['thirty_day_sales'];
    thirtyDayAveragePrice = json['thirty_day_average_price'];
    totalVolume = json['total_volume'];
    totalSales = json['total_sales'];
    totalSupply = json['total_supply'];
    count = json['count'];
    numOwners = json['num_owners'];
    averagePrice = json['average_price'];
    numReports = json['num_reports'];
    marketCap = json['market_cap'];
    floorPrice = json['floor_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['one_day_volume'] = this.oneDayVolume;
    data['one_day_change'] = this.oneDayChange;
    data['one_day_sales'] = this.oneDaySales;
    data['one_day_average_price'] = this.oneDayAveragePrice;
    data['seven_day_volume'] = this.sevenDayVolume;
    data['seven_day_change'] = this.sevenDayChange;
    data['seven_day_sales'] = this.sevenDaySales;
    data['seven_day_average_price'] = this.sevenDayAveragePrice;
    data['thirty_day_volume'] = this.thirtyDayVolume;
    data['thirty_day_change'] = this.thirtyDayChange;
    data['thirty_day_sales'] = this.thirtyDaySales;
    data['thirty_day_average_price'] = this.thirtyDayAveragePrice;
    data['total_volume'] = this.totalVolume;
    data['total_sales'] = this.totalSales;
    data['total_supply'] = this.totalSupply;
    data['count'] = this.count;
    data['num_owners'] = this.numOwners;
    data['average_price'] = this.averagePrice;
    data['num_reports'] = this.numReports;
    data['market_cap'] = this.marketCap;
    data['floor_price'] = this.floorPrice;
    return data;
  }

  @override
  String toString() {
    return 'Stats{oneDayVolume: $oneDayVolume, oneDayChange: $oneDayChange, oneDaySales: $oneDaySales, oneDayAveragePrice: $oneDayAveragePrice, sevenDayVolume: $sevenDayVolume, sevenDayChange: $sevenDayChange, sevenDaySales: $sevenDaySales, sevenDayAveragePrice: $sevenDayAveragePrice, thirtyDayVolume: $thirtyDayVolume, thirtyDayChange: $thirtyDayChange, thirtyDaySales: $thirtyDaySales, thirtyDayAveragePrice: $thirtyDayAveragePrice, totalVolume: $totalVolume, totalSales: $totalSales, totalSupply: $totalSupply, count: $count, numOwners: $numOwners, averagePrice: $averagePrice, numReports: $numReports, marketCap: $marketCap, floorPrice: $floorPrice}';
  }
}



