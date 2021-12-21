/// OrdersObject class
/// dart pojo contsructed when calling the method getOrders()
/// contains a list of orders and the count
class OrdersObject {
  int? count;
  List<Orders>? orders;

  OrdersObject({
    this.count,
    this.orders,
  });

  OrdersObject.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    orders = (json['orders'] as List?)
        ?.map((dynamic e) => Orders.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['orders'] = orders?.map((e) => e.toJson()).toList();
    return json;
  }

  @override
  String toString() {
    return 'OrdersObject{count: $count, orders: $orders}';
  }
}

/// Orders class
/// contains the information about an order
class Orders {
  int? id;
  Asset? asset;
  dynamic assetBundle;
  String? createdDate;
  String? closingDate;
  bool? closingExtendable;
  int? expirationTime;
  int? listingTime;
  String? orderHash;
  Metadata? metadata;
  String? exchange;
  Maker? maker;
  Taker? taker;
  String? currentPrice;
  String? currentBounty;
  String? bountyMultiple;
  String? makerRelayerFee;
  String? takerRelayerFee;
  String? makerProtocolFee;
  String? takerProtocolFee;
  String? makerReferrerFee;
  FeeRecipient? feeRecipient;
  int? feeMethod;
  int? side;
  int? saleKind;
  String? target;
  int? howToCall;
  String? calldata;
  String? replacementPattern;
  String? staticTarget;
  String? staticExtradata;
  String? paymentToken;
  PaymentTokenContract? paymentTokenContract;
  String? basePrice;
  String? extra;
  String? quantity;
  String? salt;
  int? v;
  String? r;
  String? s;
  bool? approvedOnChain;
  bool? cancelled;
  bool? finalized;
  bool? markedInvalid;
  String? prefixedHash;

  Orders({
    this.id,
    this.asset,
    this.assetBundle,
    this.createdDate,
    this.closingDate,
    this.closingExtendable,
    this.expirationTime,
    this.listingTime,
    this.orderHash,
    this.metadata,
    this.exchange,
    this.maker,
    this.taker,
    this.currentPrice,
    this.currentBounty,
    this.bountyMultiple,
    this.makerRelayerFee,
    this.takerRelayerFee,
    this.makerProtocolFee,
    this.takerProtocolFee,
    this.makerReferrerFee,
    this.feeRecipient,
    this.feeMethod,
    this.side,
    this.saleKind,
    this.target,
    this.howToCall,
    this.calldata,
    this.replacementPattern,
    this.staticTarget,
    this.staticExtradata,
    this.paymentToken,
    this.paymentTokenContract,
    this.basePrice,
    this.extra,
    this.quantity,
    this.salt,
    this.v,
    this.r,
    this.s,
    this.approvedOnChain,
    this.cancelled,
    this.finalized,
    this.markedInvalid,
    this.prefixedHash,
  });

  Orders.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    asset = (json['asset'] as Map<String, dynamic>?) != null
        ? Asset.fromJson(json['asset'] as Map<String, dynamic>)
        : null;
    assetBundle = json['asset_bundle'];
    createdDate = json['created_date'] as String?;
    closingDate = json['closing_date'] as String?;
    closingExtendable = json['closing_extendable'] as bool?;
    expirationTime = json['expiration_time'] as int?;
    listingTime = json['listing_time'] as int?;
    orderHash = json['order_hash'] as String?;
    metadata = (json['metadata'] as Map<String, dynamic>?) != null
        ? Metadata.fromJson(json['metadata'] as Map<String, dynamic>)
        : null;
    exchange = json['exchange'] as String?;
    maker = (json['maker'] as Map<String, dynamic>?) != null
        ? Maker.fromJson(json['maker'] as Map<String, dynamic>)
        : null;
    taker = (json['taker'] as Map<String, dynamic>?) != null
        ? Taker.fromJson(json['taker'] as Map<String, dynamic>)
        : null;
    currentPrice = json['current_price'] as String?;
    currentBounty = json['current_bounty'] as String?;
    bountyMultiple = json['bounty_multiple'] as String?;
    makerRelayerFee = json['maker_relayer_fee'] as String?;
    takerRelayerFee = json['taker_relayer_fee'] as String?;
    makerProtocolFee = json['maker_protocol_fee'] as String?;
    takerProtocolFee = json['taker_protocol_fee'] as String?;
    makerReferrerFee = json['maker_referrer_fee'] as String?;
    feeRecipient = (json['fee_recipient'] as Map<String, dynamic>?) != null
        ? FeeRecipient.fromJson(json['fee_recipient'] as Map<String, dynamic>)
        : null;
    feeMethod = json['fee_method'] as int?;
    side = json['side'] as int?;
    saleKind = json['sale_kind'] as int?;
    target = json['target'] as String?;
    howToCall = json['how_to_call'] as int?;
    calldata = json['calldata'] as String?;
    replacementPattern = json['replacement_pattern'] as String?;
    staticTarget = json['static_target'] as String?;
    staticExtradata = json['static_extradata'] as String?;
    paymentToken = json['payment_token'] as String?;
    paymentTokenContract =
        (json['payment_token_contract'] as Map<String, dynamic>?) != null
            ? PaymentTokenContract.fromJson(
                json['payment_token_contract'] as Map<String, dynamic>)
            : null;
    basePrice = json['base_price'] as String?;
    extra = json['extra'] as String?;
    quantity = json['quantity'] as String?;
    salt = json['salt'] as String?;
    v = json['v'] as int?;
    r = json['r'] as String?;
    s = json['s'] as String?;
    approvedOnChain = json['approved_on_chain'] as bool?;
    cancelled = json['cancelled'] as bool?;
    finalized = json['finalized'] as bool?;
    markedInvalid = json['marked_invalid'] as bool?;
    prefixedHash = json['prefixed_hash'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['asset'] = asset?.toJson();
    json['asset_bundle'] = assetBundle;
    json['created_date'] = createdDate;
    json['closing_date'] = closingDate;
    json['closing_extendable'] = closingExtendable;
    json['expiration_time'] = expirationTime;
    json['listing_time'] = listingTime;
    json['order_hash'] = orderHash;
    json['metadata'] = metadata?.toJson();
    json['exchange'] = exchange;
    json['maker'] = maker?.toJson();
    json['taker'] = taker?.toJson();
    json['current_price'] = currentPrice;
    json['current_bounty'] = currentBounty;
    json['bounty_multiple'] = bountyMultiple;
    json['maker_relayer_fee'] = makerRelayerFee;
    json['taker_relayer_fee'] = takerRelayerFee;
    json['maker_protocol_fee'] = makerProtocolFee;
    json['taker_protocol_fee'] = takerProtocolFee;
    json['maker_referrer_fee'] = makerReferrerFee;
    json['fee_recipient'] = feeRecipient?.toJson();
    json['fee_method'] = feeMethod;
    json['side'] = side;
    json['sale_kind'] = saleKind;
    json['target'] = target;
    json['how_to_call'] = howToCall;
    json['calldata'] = calldata;
    json['replacement_pattern'] = replacementPattern;
    json['static_target'] = staticTarget;
    json['static_extradata'] = staticExtradata;
    json['payment_token'] = paymentToken;
    json['payment_token_contract'] = paymentTokenContract?.toJson();
    json['base_price'] = basePrice;
    json['extra'] = extra;
    json['quantity'] = quantity;
    json['salt'] = salt;
    json['v'] = v;
    json['r'] = r;
    json['s'] = s;
    json['approved_on_chain'] = approvedOnChain;
    json['cancelled'] = cancelled;
    json['finalized'] = finalized;
    json['marked_invalid'] = markedInvalid;
    json['prefixed_hash'] = prefixedHash;
    return json;
  }

  @override
  String toString() {
    return 'Orders{id: $id, asset: $asset, assetBundle: $assetBundle, createdDate: $createdDate, closingDate: $closingDate, closingExtendable: $closingExtendable, expirationTime: $expirationTime, listingTime: $listingTime, orderHash: $orderHash, metadata: $metadata, exchange: $exchange, maker: $maker, taker: $taker, currentPrice: $currentPrice, currentBounty: $currentBounty, bountyMultiple: $bountyMultiple, makerRelayerFee: $makerRelayerFee, takerRelayerFee: $takerRelayerFee, makerProtocolFee: $makerProtocolFee, takerProtocolFee: $takerProtocolFee, makerReferrerFee: $makerReferrerFee, feeRecipient: $feeRecipient, feeMethod: $feeMethod, side: $side, saleKind: $saleKind, target: $target, howToCall: $howToCall, calldata: $calldata, replacementPattern: $replacementPattern, staticTarget: $staticTarget, staticExtradata: $staticExtradata, paymentToken: $paymentToken, paymentTokenContract: $paymentTokenContract, basePrice: $basePrice, extra: $extra, quantity: $quantity, salt: $salt, v: $v, r: $r, s: $s, approvedOnChain: $approvedOnChain, cancelled: $cancelled, finalized: $finalized, markedInvalid: $markedInvalid, prefixedHash: $prefixedHash}';
  }
}

/// Asset class
/// contains information about an asset associated with an order
class Asset {
  int? id;
  String? tokenId;
  int? numSales;
  dynamic backgroundColor;
  String? imageUrl;
  String? imagePreviewUrl;
  String? imageThumbnailUrl;
  dynamic imageOriginalUrl;
  dynamic animationUrl;
  dynamic animationOriginalUrl;
  String? name;
  String? description;
  dynamic externalLink;
  AssetContract? assetContract;
  String? permalink;
  Collection? collection;
  dynamic decimals;
  dynamic tokenMetadata;
  Owner? owner;

  Asset({
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
  });

  Asset.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    tokenId = json['token_id'] as String?;
    numSales = json['num_sales'] as int?;
    backgroundColor = json['background_color'];
    imageUrl = json['image_url'] as String?;
    imagePreviewUrl = json['image_preview_url'] as String?;
    imageThumbnailUrl = json['image_thumbnail_url'] as String?;
    imageOriginalUrl = json['image_original_url'];
    animationUrl = json['animation_url'];
    animationOriginalUrl = json['animation_original_url'];
    name = json['name'] as String?;
    description = json['description'] as String?;
    externalLink = json['external_link'];
    assetContract = (json['asset_contract'] as Map<String, dynamic>?) != null
        ? AssetContract.fromJson(json['asset_contract'] as Map<String, dynamic>)
        : null;
    permalink = json['permalink'] as String?;
    collection = (json['collection'] as Map<String, dynamic>?) != null
        ? Collection.fromJson(json['collection'] as Map<String, dynamic>)
        : null;
    decimals = json['decimals'];
    tokenMetadata = json['token_metadata'];
    owner = (json['owner'] as Map<String, dynamic>?) != null
        ? Owner.fromJson(json['owner'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['token_id'] = tokenId;
    json['num_sales'] = numSales;
    json['background_color'] = backgroundColor;
    json['image_url'] = imageUrl;
    json['image_preview_url'] = imagePreviewUrl;
    json['image_thumbnail_url'] = imageThumbnailUrl;
    json['image_original_url'] = imageOriginalUrl;
    json['animation_url'] = animationUrl;
    json['animation_original_url'] = animationOriginalUrl;
    json['name'] = name;
    json['description'] = description;
    json['external_link'] = externalLink;
    json['asset_contract'] = assetContract?.toJson();
    json['permalink'] = permalink;
    json['collection'] = collection?.toJson();
    json['decimals'] = decimals;
    json['token_metadata'] = tokenMetadata;
    json['owner'] = owner?.toJson();
    return json;
  }

  @override
  String toString() {
    return 'Asset{id: $id, tokenId: $tokenId, numSales: $numSales, backgroundColor: $backgroundColor, imageUrl: $imageUrl, imagePreviewUrl: $imagePreviewUrl, imageThumbnailUrl: $imageThumbnailUrl, imageOriginalUrl: $imageOriginalUrl, animationUrl: $animationUrl, animationOriginalUrl: $animationOriginalUrl, name: $name, description: $description, externalLink: $externalLink, assetContract: $assetContract, permalink: $permalink, collection: $collection, decimals: $decimals, tokenMetadata: $tokenMetadata, owner: $owner}';
  }
}

/// AssetContract
/// contains the contractual information about and asset in an order
class AssetContract {
  String? address;
  String? assetContractType;
  String? createdDate;
  String? name;
  dynamic nftVersion;
  String? openseaVersion;
  int? owner;
  String? schemaName;
  String? symbol;
  dynamic totalSupply;
  String? description;
  dynamic externalLink;
  dynamic imageUrl;
  bool? defaultToFiat;
  int? devBuyerFeeBasisPoints;
  int? devSellerFeeBasisPoints;
  bool? onlyProxiedTransfers;
  int? openseaBuyerFeeBasisPoints;
  int? openseaSellerFeeBasisPoints;
  int? buyerFeeBasisPoints;
  int? sellerFeeBasisPoints;
  dynamic payoutAddress;

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

  AssetContract.fromJson(Map<String, dynamic> json) {
    address = json['address'] as String?;
    assetContractType = json['asset_contract_type'] as String?;
    createdDate = json['created_date'] as String?;
    name = json['name'] as String?;
    nftVersion = json['nft_version'];
    openseaVersion = json['opensea_version'] as String?;
    owner = json['owner'] as int?;
    schemaName = json['schema_name'] as String?;
    symbol = json['symbol'] as String?;
    totalSupply = json['total_supply'];
    description = json['description'] as String?;
    externalLink = json['external_link'];
    imageUrl = json['image_url'];
    defaultToFiat = json['default_to_fiat'] as bool?;
    devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'] as int?;
    devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'] as int?;
    onlyProxiedTransfers = json['only_proxied_transfers'] as bool?;
    openseaBuyerFeeBasisPoints = json['opensea_buyer_fee_basis_points'] as int?;
    openseaSellerFeeBasisPoints =
        json['opensea_seller_fee_basis_points'] as int?;
    buyerFeeBasisPoints = json['buyer_fee_basis_points'] as int?;
    sellerFeeBasisPoints = json['seller_fee_basis_points'] as int?;
    payoutAddress = json['payout_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['address'] = address;
    json['asset_contract_type'] = assetContractType;
    json['created_date'] = createdDate;
    json['name'] = name;
    json['nft_version'] = nftVersion;
    json['opensea_version'] = openseaVersion;
    json['owner'] = owner;
    json['schema_name'] = schemaName;
    json['symbol'] = symbol;
    json['total_supply'] = totalSupply;
    json['description'] = description;
    json['external_link'] = externalLink;
    json['image_url'] = imageUrl;
    json['default_to_fiat'] = defaultToFiat;
    json['dev_buyer_fee_basis_points'] = devBuyerFeeBasisPoints;
    json['dev_seller_fee_basis_points'] = devSellerFeeBasisPoints;
    json['only_proxied_transfers'] = onlyProxiedTransfers;
    json['opensea_buyer_fee_basis_points'] = openseaBuyerFeeBasisPoints;
    json['opensea_seller_fee_basis_points'] = openseaSellerFeeBasisPoints;
    json['buyer_fee_basis_points'] = buyerFeeBasisPoints;
    json['seller_fee_basis_points'] = sellerFeeBasisPoints;
    json['payout_address'] = payoutAddress;
    return json;
  }

  @override
  String toString() {
    return 'AssetContract{address: $address, assetContractType: $assetContractType, createdDate: $createdDate, name: $name, nftVersion: $nftVersion, openseaVersion: $openseaVersion, owner: $owner, schemaName: $schemaName, symbol: $symbol, totalSupply: $totalSupply, description: $description, externalLink: $externalLink, imageUrl: $imageUrl, defaultToFiat: $defaultToFiat, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, buyerFeeBasisPoints: $buyerFeeBasisPoints, sellerFeeBasisPoints: $sellerFeeBasisPoints, payoutAddress: $payoutAddress}';
  }
}

/// Collection class
/// contains information about the collection associated with the asset and order
class Collection {
  String? bannerImageUrl;
  dynamic chatUrl;
  String? createdDate;
  bool? defaultToFiat;
  String? description;
  String? devBuyerFeeBasisPoints;
  String? devSellerFeeBasisPoints;
  dynamic discordUrl;
  DisplayData? displayData;
  dynamic externalUrl;
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
  dynamic twitterUsername;
  dynamic instagramUsername;
  dynamic wikiUrl;

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

  Collection.fromJson(Map<String, dynamic> json) {
    bannerImageUrl = json['banner_image_url'] as String?;
    chatUrl = json['chat_url'];
    createdDate = json['created_date'] as String?;
    defaultToFiat = json['default_to_fiat'] as bool?;
    description = json['description'] as String?;
    devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'] as String?;
    devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'] as String?;
    discordUrl = json['discord_url'];
    displayData = (json['display_data'] as Map<String, dynamic>?) != null
        ? DisplayData.fromJson(json['display_data'] as Map<String, dynamic>)
        : null;
    externalUrl = json['external_url'];
    featured = json['featured'] as bool?;
    featuredImageUrl = json['featured_image_url'] as String?;
    hidden = json['hidden'] as bool?;
    safelistRequestStatus = json['safelist_request_status'] as String?;
    imageUrl = json['image_url'] as String?;
    isSubjectToWhitelist = json['is_subject_to_whitelist'] as bool?;
    largeImageUrl = json['large_image_url'] as String?;
    mediumUsername = json['medium_username'];
    name = json['name'] as String?;
    onlyProxiedTransfers = json['only_proxied_transfers'] as bool?;
    openseaBuyerFeeBasisPoints =
        json['opensea_buyer_fee_basis_points'] as String?;
    openseaSellerFeeBasisPoints =
        json['opensea_seller_fee_basis_points'] as String?;
    payoutAddress = json['payout_address'];
    requireEmail = json['require_email'] as bool?;
    shortDescription = json['short_description'];
    slug = json['slug'] as String?;
    telegramUrl = json['telegram_url'];
    twitterUsername = json['twitter_username'];
    instagramUsername = json['instagram_username'];
    wikiUrl = json['wiki_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['banner_image_url'] = bannerImageUrl;
    json['chat_url'] = chatUrl;
    json['created_date'] = createdDate;
    json['default_to_fiat'] = defaultToFiat;
    json['description'] = description;
    json['dev_buyer_fee_basis_points'] = devBuyerFeeBasisPoints;
    json['dev_seller_fee_basis_points'] = devSellerFeeBasisPoints;
    json['discord_url'] = discordUrl;
    json['display_data'] = displayData?.toJson();
    json['external_url'] = externalUrl;
    json['featured'] = featured;
    json['featured_image_url'] = featuredImageUrl;
    json['hidden'] = hidden;
    json['safelist_request_status'] = safelistRequestStatus;
    json['image_url'] = imageUrl;
    json['is_subject_to_whitelist'] = isSubjectToWhitelist;
    json['large_image_url'] = largeImageUrl;
    json['medium_username'] = mediumUsername;
    json['name'] = name;
    json['only_proxied_transfers'] = onlyProxiedTransfers;
    json['opensea_buyer_fee_basis_points'] = openseaBuyerFeeBasisPoints;
    json['opensea_seller_fee_basis_points'] = openseaSellerFeeBasisPoints;
    json['payout_address'] = payoutAddress;
    json['require_email'] = requireEmail;
    json['short_description'] = shortDescription;
    json['slug'] = slug;
    json['telegram_url'] = telegramUrl;
    json['twitter_username'] = twitterUsername;
    json['instagram_username'] = instagramUsername;
    json['wiki_url'] = wikiUrl;
    return json;
  }

  @override
  String toString() {
    return 'Collection{bannerImageUrl: $bannerImageUrl, chatUrl: $chatUrl, createdDate: $createdDate, defaultToFiat: $defaultToFiat, description: $description, devBuyerFeeBasisPoints: $devBuyerFeeBasisPoints, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, discordUrl: $discordUrl, displayData: $displayData, externalUrl: $externalUrl, featured: $featured, featuredImageUrl: $featuredImageUrl, hidden: $hidden, safelistRequestStatus: $safelistRequestStatus, imageUrl: $imageUrl, isSubjectToWhitelist: $isSubjectToWhitelist, largeImageUrl: $largeImageUrl, mediumUsername: $mediumUsername, name: $name, onlyProxiedTransfers: $onlyProxiedTransfers, openseaBuyerFeeBasisPoints: $openseaBuyerFeeBasisPoints, openseaSellerFeeBasisPoints: $openseaSellerFeeBasisPoints, payoutAddress: $payoutAddress, requireEmail: $requireEmail, shortDescription: $shortDescription, slug: $slug, telegramUrl: $telegramUrl, twitterUsername: $twitterUsername, instagramUsername: $instagramUsername, wikiUrl: $wikiUrl}';
  }
}

/// DisplayData class
/// contains information on the display style
class DisplayData {
  String? cardDisplayStyle;

  DisplayData({
    this.cardDisplayStyle,
  });

  DisplayData.fromJson(Map<String, dynamic> json) {
    cardDisplayStyle = json['card_display_style'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['card_display_style'] = cardDisplayStyle;
    return json;
  }

  @override
  String toString() {
    return 'DisplayData{cardDisplayStyle: $cardDisplayStyle}';
  }
}

/// Owner class
/// information about the owner of the asset in the order
class Owner {
  User? user;
  String? profileImgUrl;
  String? address;
  String? config;

  Owner({
    this.user,
    this.profileImgUrl,
    this.address,
    this.config,
  });

  Owner.fromJson(Map<String, dynamic> json) {
    user = (json['user'] as Map<String, dynamic>?) != null
        ? User.fromJson(json['user'] as Map<String, dynamic>)
        : null;
    profileImgUrl = json['profile_img_url'] as String?;
    address = json['address'] as String?;
    config = json['config'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user'] = user?.toJson();
    json['profile_img_url'] = profileImgUrl;
    json['address'] = address;
    json['config'] = config;
    return json;
  }

  @override
  String toString() {
    return 'Owner{user: $user, profileImgUrl: $profileImgUrl, address: $address, config: $config}';
  }
}

/// Metadata class
/// contains quick data about order
class Metadata {
  AssetMeta? asset;
  String? schema;

  Metadata({
    this.asset,
    this.schema,
  });

  Metadata.fromJson(Map<String, dynamic> json) {
    asset = (json['asset'] as Map<String, dynamic>?) != null
        ? AssetMeta.fromJson(json['asset'] as Map<String, dynamic>)
        : null;
    schema = json['schema'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['asset'] = asset?.toJson();
    json['schema'] = schema;
    return json;
  }

  @override
  String toString() {
    return 'Metadata{asset: $asset, schema: $schema}';
  }
}

/// AssetMeta class
/// contains data about an asset
class AssetMeta {
  String? id;
  String? address;
  String? quantity;

  AssetMeta({
    this.id,
    this.address,
    this.quantity,
  });

  AssetMeta.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    address = json['address'] as String?;
    quantity = json['quantity'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['address'] = address;
    json['quantity'] = quantity;
    return json;
  }

  @override
  String toString() {
    return 'AssetMeta{id: $id, address: $address, quantity: $quantity}';
  }
}

/// Maker class
/// contains data about the maker of asset
class Maker {
  User? user;
  String? profileImgUrl;
  String? address;
  String? config;

  Maker({
    this.user,
    this.profileImgUrl,
    this.address,
    this.config,
  });

  Maker.fromJson(Map<String, dynamic> json) {
    user = (json['user'] as Map<String, dynamic>?) != null
        ? User.fromJson(json['user'] as Map<String, dynamic>)
        : null;
    profileImgUrl = json['profile_img_url'] as String?;
    address = json['address'] as String?;
    config = json['config'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user'] = user?.toJson();
    json['profile_img_url'] = profileImgUrl;
    json['address'] = address;
    json['config'] = config;
    return json;
  }

  @override
  String toString() {
    return 'Maker{user: $user, profileImgUrl: $profileImgUrl, address: $address, config: $config}';
  }
}

/// User class
/// contains the username of a user
class User {
  dynamic username;

  User({
    this.username,
  });

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['username'] = username;
    return json;
  }

  @override
  String toString() {
    return 'User{username: $username}';
  }
}

/// Taker
/// information about the recieving end of a contract
class Taker {
  User? user;
  String? profileImgUrl;
  String? address;
  String? config;

  Taker({
    this.user,
    this.profileImgUrl,
    this.address,
    this.config,
  });

  Taker.fromJson(Map<String, dynamic> json) {
    user = (json['user'] as Map<String, dynamic>?) != null
        ? User.fromJson(json['user'] as Map<String, dynamic>)
        : null;
    profileImgUrl = json['profile_img_url'] as String?;
    address = json['address'] as String?;
    config = json['config'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user'] = user?.toJson();
    json['profile_img_url'] = profileImgUrl;
    json['address'] = address;
    json['config'] = config;
    return json;
  }

  @override
  String toString() {
    return 'Taker{user: $user, profileImgUrl: $profileImgUrl, address: $address, config: $config}';
  }
}

/// FeeReciepent class
/// information about partys that recieved payment
class FeeRecipient {
  User? user;
  String? profileImgUrl;
  String? address;
  String? config;

  FeeRecipient({
    this.user,
    this.profileImgUrl,
    this.address,
    this.config,
  });

  FeeRecipient.fromJson(Map<String, dynamic> json) {
    user = (json['user'] as Map<String, dynamic>?) != null
        ? User.fromJson(json['user'] as Map<String, dynamic>)
        : null;
    profileImgUrl = json['profile_img_url'] as String?;
    address = json['address'] as String?;
    config = json['config'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user'] = user?.toJson();
    json['profile_img_url'] = profileImgUrl;
    json['address'] = address;
    json['config'] = config;
    return json;
  }

  @override
  String toString() {
    return 'FeeRecipient{user: $user, profileImgUrl: $profileImgUrl, address: $address, config: $config}';
  }
}

/// PaymentTokenContract class
/// information about currency used
class PaymentTokenContract {
  int? id;
  String? symbol;
  String? address;
  String? imageUrl;
  String? name;
  int? decimals;
  String? ethPrice;
  String? usdPrice;

  PaymentTokenContract({
    this.id,
    this.symbol,
    this.address,
    this.imageUrl,
    this.name,
    this.decimals,
    this.ethPrice,
    this.usdPrice,
  });

  PaymentTokenContract.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    symbol = json['symbol'] as String?;
    address = json['address'] as String?;
    imageUrl = json['image_url'] as String?;
    name = json['name'] as String?;
    decimals = json['decimals'] as int?;
    ethPrice = json['eth_price'] as String?;
    usdPrice = json['usd_price'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['symbol'] = symbol;
    json['address'] = address;
    json['image_url'] = imageUrl;
    json['name'] = name;
    json['decimals'] = decimals;
    json['eth_price'] = ethPrice;
    json['usd_price'] = usdPrice;
    return json;
  }

  @override
  String toString() {
    return 'PaymentTokenContract{id: $id, symbol: $symbol, address: $address, imageUrl: $imageUrl, name: $name, decimals: $decimals, ethPrice: $ethPrice, usdPrice: $usdPrice}';
  }
}
