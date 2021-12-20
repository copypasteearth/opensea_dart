class AssetsObject {
  List<Assets>? assets;

  AssetsObject({this.assets});

  AssetsObject.fromJson(Map<String, dynamic> json) {
    if (json['assets'] != null) {
      assets = [];
      json['assets'].forEach((v) {
        assets!.add(new Assets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.assets != null) {
      data['assets'] = this.assets!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'AssetsObject{assets: $assets}';
  }
}

class Assets {
  int? id;
  String? tokenId;
  int? numSales;
  dynamic? backgroundColor;
  String? imageUrl;
  String? imagePreviewUrl;
  String? imageThumbnailUrl;
  String? imageOriginalUrl;
  String? animationUrl;
  String? animationOriginalUrl;
  String? name;
  String? description;
  String? externalLink;
  AssetContract? assetContract;
  String? permalink;
  Collection? collection;
  int? decimals;
  String? tokenMetadata;
  Owner? owner;
  dynamic? sellOrders;
  Owner? creator;
  List<Traits>? traits;
  dynamic? lastSale;
  dynamic? topBid;
  dynamic? listingDate;
  bool? isPresale;
  dynamic? transferFeePaymentToken;
  dynamic? transferFee;

  Assets(
      {this.id,
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
        this.transferFee});

  Assets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tokenId = json['token_id'];
    numSales = json['num_sales'];
    backgroundColor = json['background_color'];
    imageUrl = json['image_url'];
    imagePreviewUrl = json['image_preview_url'];
    imageThumbnailUrl = json['image_thumbnail_url'];
    imageOriginalUrl = json['image_original_url'];
    animationUrl = json['animation_url'];
    animationOriginalUrl = json['animation_original_url'];
    name = json['name'];
    description = json['description'];
    externalLink = json['external_link'];
    assetContract = json['asset_contract'] != null
        ? new AssetContract.fromJson(json['asset_contract'])
        : null;
    permalink = json['permalink'];
    collection = json['collection'] != null
        ? new Collection.fromJson(json['collection'])
        : null;
    decimals = json['decimals'];
    tokenMetadata = json['token_metadata'];
    owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
    sellOrders = json['sell_orders'];
    creator =
    json['creator'] != null ? new Owner.fromJson(json['creator']) : null;
    if (json['traits'] != null) {
      traits = [];
      json['traits'].forEach((v) {
        traits!.add(new Traits.fromJson(v));
      });
    }
    lastSale = json['last_sale'];
    topBid = json['top_bid'];
    listingDate = json['listing_date'];
    isPresale = json['is_presale'];
    transferFeePaymentToken = json['transfer_fee_payment_token'];
    transferFee = json['transfer_fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['token_id'] = this.tokenId;
    data['num_sales'] = this.numSales;
    data['background_color'] = this.backgroundColor;
    data['image_url'] = this.imageUrl;
    data['image_preview_url'] = this.imagePreviewUrl;
    data['image_thumbnail_url'] = this.imageThumbnailUrl;
    data['image_original_url'] = this.imageOriginalUrl;
    data['animation_url'] = this.animationUrl;
    data['animation_original_url'] = this.animationOriginalUrl;
    data['name'] = this.name;
    data['description'] = this.description;
    data['external_link'] = this.externalLink;
    if (this.assetContract != null) {
      data['asset_contract'] = this.assetContract!.toJson();
    }
    data['permalink'] = this.permalink;
    if (this.collection != null) {
      data['collection'] = this.collection!.toJson();
    }
    data['decimals'] = this.decimals;
    data['token_metadata'] = this.tokenMetadata;
    if (this.owner != null) {
      data['owner'] = this.owner!.toJson();
    }
    data['sell_orders'] = this.sellOrders;
    if (this.creator != null) {
      data['creator'] = this.creator!.toJson();
    }
    if (this.traits != null) {
      data['traits'] = this.traits!.map((v) => v.toJson()).toList();
    }
    data['last_sale'] = this.lastSale;
    data['top_bid'] = this.topBid;
    data['listing_date'] = this.listingDate;
    data['is_presale'] = this.isPresale;
    data['transfer_fee_payment_token'] = this.transferFeePaymentToken;
    data['transfer_fee'] = this.transferFee;
    return data;
  }

  @override
  String toString() {
    return 'Assets{id: $id, tokenId: $tokenId, numSales: $numSales, backgroundColor: $backgroundColor, imageUrl: $imageUrl, imagePreviewUrl: $imagePreviewUrl, imageThumbnailUrl: $imageThumbnailUrl, imageOriginalUrl: $imageOriginalUrl, animationUrl: $animationUrl, animationOriginalUrl: $animationOriginalUrl, name: $name, description: $description, externalLink: $externalLink, assetContract: $assetContract, permalink: $permalink, collection: $collection, decimals: $decimals, tokenMetadata: $tokenMetadata, owner: $owner, sellOrders: $sellOrders, creator: $creator, traits: $traits, lastSale: $lastSale, topBid: $topBid, listingDate: $listingDate, isPresale: $isPresale, transferFeePaymentToken: $transferFeePaymentToken, transferFee: $transferFee}';
  }
}

class AssetContract {
  String? address;
  String? assetContractType;
  String? createdDate;
  String? name;
  String? nftVersion;
  dynamic? openseaVersion;
  int? owner;
  String? schemaName;
  String? symbol;
  String? totalSupply;
  dynamic? description;
  dynamic? externalLink;
  dynamic? imageUrl;
  bool? defaultToFiat;
  int? devBuyerFeeBasisPoints;
  int? devSellerFeeBasisPoints;
  bool? onlyProxiedTransfers;
  int? openseaBuyerFeeBasisPoints;
  int? openseaSellerFeeBasisPoints;
  int? buyerFeeBasisPoints;
  int? sellerFeeBasisPoints;
  dynamic? payoutAddress;

  AssetContract(
      {this.address,
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
        this.payoutAddress});

  AssetContract.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    assetContractType = json['asset_contract_type'];
    createdDate = json['created_date'];
    name = json['name'];
    nftVersion = json['nft_version'];
    openseaVersion = json['opensea_version'];
    owner = json['owner'];
    schemaName = json['schema_name'];
    symbol = json['symbol'];
    totalSupply = json['total_supply'];
    description = json['description'];
    externalLink = json['external_link'];
    imageUrl = json['image_url'];
    defaultToFiat = json['default_to_fiat'];
    devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'];
    devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'];
    onlyProxiedTransfers = json['only_proxied_transfers'];
    openseaBuyerFeeBasisPoints = json['opensea_buyer_fee_basis_points'];
    openseaSellerFeeBasisPoints = json['opensea_seller_fee_basis_points'];
    buyerFeeBasisPoints = json['buyer_fee_basis_points'];
    sellerFeeBasisPoints = json['seller_fee_basis_points'];
    payoutAddress = json['payout_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['asset_contract_type'] = this.assetContractType;
    data['created_date'] = this.createdDate;
    data['name'] = this.name;
    data['nft_version'] = this.nftVersion;
    data['opensea_version'] = this.openseaVersion;
    data['owner'] = this.owner;
    data['schema_name'] = this.schemaName;
    data['symbol'] = this.symbol;
    data['total_supply'] = this.totalSupply;
    data['description'] = this.description;
    data['external_link'] = this.externalLink;
    data['image_url'] = this.imageUrl;
    data['default_to_fiat'] = this.defaultToFiat;
    data['dev_buyer_fee_basis_points'] = this.devBuyerFeeBasisPoints;
    data['dev_seller_fee_basis_points'] = this.devSellerFeeBasisPoints;
    data['only_proxied_transfers'] = this.onlyProxiedTransfers;
    data['opensea_buyer_fee_basis_points'] = this.openseaBuyerFeeBasisPoints;
    data['opensea_seller_fee_basis_points'] = this.openseaSellerFeeBasisPoints;
    data['buyer_fee_basis_points'] = this.buyerFeeBasisPoints;
    data['seller_fee_basis_points'] = this.sellerFeeBasisPoints;
    data['payout_address'] = this.payoutAddress;
    return data;
  }

  @override
  String toString() {
    return 'AssetContract{address: $address, assetContractType: $assetContractType, createdDate: $createdDate, name: $name, nftVersion: $nftVersion, openseaVersion: $openseaVersion, owner: $owner, schemaName: $schemaName, symbol: $symbol, totalSupply: $totalSupply, description: $description, externalLink: $externalLink, imageUrl: $imageUrl, defaultToFiat: $defaultToFiat, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, buyerFeeBasisPoints: $buyerFeeBasisPoints, sellerFeeBasisPoints: $sellerFeeBasisPoints, payoutAddress: $payoutAddress}';
  }
}

class Collection {
  dynamic? bannerImageUrl;
  dynamic? chatUrl;
  String? createdDate;
  bool? defaultToFiat;
  dynamic? description;
  String? devBuyerFeeBasisPoints;
  String? devSellerFeeBasisPoints;
  dynamic? discordUrl;
  DisplayData? displayData;
  dynamic? externalUrl;
  bool? featured;
  dynamic? featuredImageUrl;
  bool? hidden;
  String? safelistRequestStatus;
  dynamic? imageUrl;
  bool? isSubjectToWhitelist;
  dynamic? largeImageUrl;
  dynamic? mediumUsername;
  String? name;
  bool? onlyProxiedTransfers;
  String? openseaBuyerFeeBasisPoints;
  String? openseaSellerFeeBasisPoints;
  dynamic? payoutAddress;
  bool? requireEmail;
  dynamic? shortDescription;
  String? slug;
  dynamic? telegramUrl;
  dynamic? twitterUsername;
  dynamic? instagramUsername;
  dynamic? wikiUrl;

  Collection(
      {this.bannerImageUrl,
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
    bannerImageUrl = json['banner_image_url'];
    chatUrl = json['chat_url'];
    createdDate = json['created_date'];
    defaultToFiat = json['default_to_fiat'];
    description = json['description'];
    devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'];
    devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'];
    discordUrl = json['discord_url'];
    displayData = json['display_data'] != null
        ? new DisplayData.fromJson(json['display_data'])
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    return 'Collection{bannerImageUrl: $bannerImageUrl, chatUrl: $chatUrl, createdDate: $createdDate, defaultToFiat: $defaultToFiat, description: $description, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, discordUrl: $discordUrl, displayData: $displayData, externalUrl: $externalUrl, featured: $featured, featuredImageUrl: $featuredImageUrl, hidden: $hidden, safelistRequestStatus: $safelistRequestStatus, imageUrl: $imageUrl, isSubjectToWhitelist: $isSubjectToWhitelist, largeImageUrl: $largeImageUrl, mediumUsername: $mediumUsername, name: $name, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, payoutAddress: $payoutAddress, requireEmail: $requireEmail, shortDescription: $shortDescription, slug: $slug, telegramUrl: $telegramUrl, twitterUsername: $twitterUsername, instagramUsername: $instagramUsername, wikiUrl: $wikiUrl}';
  }
}

class DisplayData {
  String? cardDisplayStyle;
  List<dynamic>? images;

  DisplayData({this.cardDisplayStyle, this.images});

  DisplayData.fromJson(Map<String, dynamic> json) {
    cardDisplayStyle = json['card_display_style'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_display_style'] = this.cardDisplayStyle;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'DisplayData{cardDisplayStyle: $cardDisplayStyle, images: $images}';
  }
}

class Owner {
  User? user;
  String? profileImgUrl;
  String? address;
  String? config;

  Owner({this.user, this.profileImgUrl, this.address, this.config});

  Owner.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    profileImgUrl = json['profile_img_url'];
    address = json['address'];
    config = json['config'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['profile_img_url'] = this.profileImgUrl;
    data['address'] = this.address;
    data['config'] = this.config;
    return data;
  }

  @override
  String toString() {
    return 'Owner{user: $user, profileImgUrl: $profileImgUrl, address: $address, config: $config}';
  }
}

class User {
  dynamic? username;

  User({this.username});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    return data;
  }

  @override
  String toString() {
    return 'User{username: $username}';
  }
}

class Traits {
  String? traitType;
  dynamic? value;
  dynamic? displayType;
  dynamic? maxValue;
  int? traitCount;
  dynamic? order;

  Traits(
      {this.traitType,
        this.value,
        this.displayType,
        this.maxValue,
        this.traitCount,
        this.order});

  Traits.fromJson(Map<String, dynamic> json) {
    traitType = json['trait_type'];
    value = json['value'];
    displayType = json['display_type'];
    maxValue = json['max_value'];
    traitCount = json['trait_count'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trait_type'] = this.traitType;
    data['value'] = this.value;
    data['display_type'] = this.displayType;
    data['max_value'] = this.maxValue;
    data['trait_count'] = this.traitCount;
    data['order'] = this.order;
    return data;
  }

  @override
  String toString() {
    return 'Traits{traitType: $traitType, value: $value, displayType: $displayType, maxValue: $maxValue, traitCount: $traitCount, order: $order}';
  }
}
