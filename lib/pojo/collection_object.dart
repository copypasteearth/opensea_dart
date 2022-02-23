/// CollectionListObject class
/// this is constructed from the getCollections method making a list of collections based on query
class CollectionListObject {
  List<Collection>? collections;

  CollectionListObject({this.collections});

  CollectionListObject.fromJson(Map<String, dynamic> json) {
    if (json["collections"] != null) {
      collections = [];
      json["collections"].forEach((v) {
        collections!.add(Collection.fromJson(v));
      });
    }
  }
  CollectionListObject.fromJsonList(List<dynamic> json) {
    collections = [];
    for (var element in json) {
      collections!.add(Collection.fromJson(element));
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (collections != null) {
      data['collections'] = collections!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'CollectionListObject{collections: $collections}';
  }
}

/// CollectionObject class
/// this is constructed when calling the method getCollection, contains a single collection
class CollectionObject {
  Collection? collection;

  CollectionObject({this.collection});

  CollectionObject.fromJson(Map<String, dynamic> json) {
    collection = json['collection'] != null
        ? Collection.fromJson(json['collection'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (collection != null) {
      data['collection'] = collection!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'CollectionObject{collection: $collection}';
  }
}

/// Collection class
/// this contains details about a collection of NFT's
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

  Collection(
      {this.editors,
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
      this.wikiUrl});

  Collection.fromJson(Map<String, dynamic> json) {
    if (json['editors'] != null) {
      editors = [];
      json['editors'].forEach((v) {
        editors!.add(v);
      });
    }
    if (json['payment_tokens'] != null) {
      paymentTokens = [];
      json['payment_tokens'].forEach((v) {
        paymentTokens!.add(v);
      });
    }
    if (json['primary_asset_contracts'] != null) {
      primaryAssetContracts = [];
      json['primary_asset_contracts'].forEach((v) {
        primaryAssetContracts!.add(v);
      });
    }
    traits = json['traits'] != null ? Traits(data: json['traits']) : null;
    stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
    bannerImageUrl = json['banner_image_url'];
    chatUrl = json['chat_url'];
    createdDate = json['created_date'];
    defaultToFiat = json['default_to_fiat'];
    description = json['description'];
    devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'];
    devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'];
    discordUrl = json['discord_url'];
    displayData = json['display_data'] != null
        ? Traits(data: json['display_data'])
        : null;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    if (editors != null) {
      data['editors'] = editors!.map((v) => v).toList();
    }
    if (paymentTokens != null) {
      data['payment_tokens'] = paymentTokens!.map((v) => v).toList();
    }
    if (primaryAssetContracts != null) {
      data['primary_asset_contracts'] =
          primaryAssetContracts!.map((v) => v).toList();
    }
    if (traits != null) {
      data['traits'] = traits!.toJson();
    }
    if (stats != null) {
      data['stats'] = stats!.toJson();
    }
    data['banner_image_url'] = bannerImageUrl;
    data['chat_url'] = chatUrl;
    data['created_date'] = createdDate;
    data['default_to_fiat'] = defaultToFiat;
    data['description'] = description;
    data['dev_buyer_fee_basis_points'] = devBuyerFeeBasisPoints;
    data['dev_seller_fee_basis_points'] = devSellerFeeBasisPoints;
    data['discord_url'] = discordUrl;
    if (displayData != null) {
      data['display_data'] = displayData!.toJson();
    }
    data['external_url'] = externalUrl;
    data['featured'] = featured;
    data['featured_image_url'] = featuredImageUrl;
    data['hidden'] = hidden;
    data['safelist_request_status'] = safelistRequestStatus;
    data['image_url'] = imageUrl;
    data['is_subject_to_whitelist'] = isSubjectToWhitelist;
    data['large_image_url'] = largeImageUrl;
    data['medium_username'] = mediumUsername;
    data['name'] = name;
    data['only_proxied_transfers'] = onlyProxiedTransfers;
    data['opensea_buyer_fee_basis_points'] = openseaBuyerFeeBasisPoints;
    data['opensea_seller_fee_basis_points'] = openseaSellerFeeBasisPoints;
    data['payout_address'] = payoutAddress;
    data['require_email'] = requireEmail;
    data['short_description'] = shortDescription;
    data['slug'] = slug;
    data['telegram_url'] = telegramUrl;
    data['twitter_username'] = twitterUsername;
    data['instagram_username'] = instagramUsername;
    data['wiki_url'] = wikiUrl;
    return data;
  }

  @override
  String toString() {
    return 'Collection{editors: $editors, paymentTokens: $paymentTokens, primaryAssetContracts: $primaryAssetContracts, traits: $traits, stats: $stats, bannerImageUrl: $bannerImageUrl, chatUrl: $chatUrl, createdDate: $createdDate, defaultToFiat: $defaultToFiat, description: $description, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, discordUrl: $discordUrl, displayData: $displayData, externalUrl: $externalUrl, featured: $featured, featuredImageUrl: $featuredImageUrl, hidden: $hidden, safelistRequestStatus: $safelistRequestStatus, imageUrl: $imageUrl, isSubjectToWhitelist: $isSubjectToWhitelist, largeImageUrl: $largeImageUrl, mediumUsername: $mediumUsername, name: $name, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, payoutAddress: $payoutAddress, requireEmail: $requireEmail, shortDescription: $shortDescription, slug: $slug, telegramUrl: $telegramUrl, twitterUsername: $twitterUsername, instagramUsername: $instagramUsername, wikiUrl: $wikiUrl}';
  }
}

/// Traits class
/// this holds all of the custom data about an NFT
class Traits {
  Map<String, dynamic>? data;

  Traits({this.data});

  Map<String, dynamic> toJson() {
    return data!;
  }

  @override
  String toString() {
    return 'Traits{data: $data}';
  }
}

/// Stats class
/// contains information about a collections statistics
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

  Stats(
      {this.oneDayVolume,
      this.oneDayChange,
      this.oneDaySales,
      this.oneDayAveragePrice,
      this.sevenDayVolume,
      this.sevenDayChange,
      this.sevenDaySales,
      this.sevenDayAveragePrice,
      this.thirtyDayVolume,
      this.thirtyDayChange,
      this.thirtyDaySales,
      this.thirtyDayAveragePrice,
      this.totalVolume,
      this.totalSales,
      this.totalSupply,
      this.count,
      this.numOwners,
      this.averagePrice,
      this.numReports,
      this.marketCap,
      this.floorPrice});

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
    floorPrice = json['floor_price']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['one_day_volume'] = oneDayVolume;
    data['one_day_change'] = oneDayChange;
    data['one_day_sales'] = oneDaySales;
    data['one_day_average_price'] = oneDayAveragePrice;
    data['seven_day_volume'] = sevenDayVolume;
    data['seven_day_change'] = sevenDayChange;
    data['seven_day_sales'] = sevenDaySales;
    data['seven_day_average_price'] = sevenDayAveragePrice;
    data['thirty_day_volume'] = thirtyDayVolume;
    data['thirty_day_change'] = thirtyDayChange;
    data['thirty_day_sales'] = thirtyDaySales;
    data['thirty_day_average_price'] = thirtyDayAveragePrice;
    data['total_volume'] = totalVolume;
    data['total_sales'] = totalSales;
    data['total_supply'] = totalSupply;
    data['count'] = count;
    data['num_owners'] = numOwners;
    data['average_price'] = averagePrice;
    data['num_reports'] = numReports;
    data['market_cap'] = marketCap;
    data['floor_price'] = floorPrice;
    return data;
  }

  @override
  String toString() {
    return 'Stats{oneDayVolume: $oneDayVolume, oneDayChange: $oneDayChange, oneDaySales: $oneDaySales, oneDayAveragePrice: $oneDayAveragePrice, sevenDayVolume: $sevenDayVolume, sevenDayChange: $sevenDayChange, sevenDaySales: $sevenDaySales, sevenDayAveragePrice: $sevenDayAveragePrice, thirtyDayVolume: $thirtyDayVolume, thirtyDayChange: $thirtyDayChange, thirtyDaySales: $thirtyDaySales, thirtyDayAveragePrice: $thirtyDayAveragePrice, totalVolume: $totalVolume, totalSales: $totalSales, totalSupply: $totalSupply, count: $count, numOwners: $numOwners, averagePrice: $averagePrice, numReports: $numReports, marketCap: $marketCap, floorPrice: $floorPrice}';
  }
}
