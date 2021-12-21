class EventObject {
  List<AssetEvents>? assetEvents;

  EventObject({
    this.assetEvents,
  });

  EventObject.fromJson(Map<String, dynamic> json) {
    assetEvents = (json['asset_events'] as List?)?.map((dynamic e) => AssetEvents.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['asset_events'] = assetEvents?.map((e) => e.toJson()).toList();
    return json;
  }

  @override
  String toString() {
    return 'EventObject{assetEvents: $assetEvents}';
  }
}

class AssetEvents {
  dynamic approvedAccount;
  Asset? asset;
  dynamic assetBundle;
  dynamic auctionType;
  dynamic bidAmount;
  String? collectionSlug;
  String? contractAddress;
  String? createdDate;
  dynamic customEventName;
  dynamic devFeePaymentEvent;
  dynamic devSellerFeeBasisPoints;
  dynamic duration;
  String? endingPrice;
  String? eventType;
  FromAccount? fromAccount;
  int? id;
  dynamic isPrivate;
  dynamic ownerAccount;
  dynamic paymentToken;
  String? quantity;
  dynamic seller;
  String? startingPrice;
  dynamic toAccount;
  dynamic totalPrice;
  dynamic transaction;
  dynamic winnerAccount;
  dynamic listingTime;

  AssetEvents({
    this.approvedAccount,
    this.asset,
    this.assetBundle,
    this.auctionType,
    this.bidAmount,
    this.collectionSlug,
    this.contractAddress,
    this.createdDate,
    this.customEventName,
    this.devFeePaymentEvent,
    this.devSellerFeeBasisPoints,
    this.duration,
    this.endingPrice,
    this.eventType,
    this.fromAccount,
    this.id,
    this.isPrivate,
    this.ownerAccount,
    this.paymentToken,
    this.quantity,
    this.seller,
    this.startingPrice,
    this.toAccount,
    this.totalPrice,
    this.transaction,
    this.winnerAccount,
    this.listingTime,
  });

  AssetEvents.fromJson(Map<String, dynamic> json) {
    approvedAccount = json['approved_account'];
    asset = (json['asset'] as Map<String,dynamic>?) != null ? Asset.fromJson(json['asset'] as Map<String,dynamic>) : null;
    assetBundle = json['asset_bundle'];
    auctionType = json['auction_type'];
    bidAmount = json['bid_amount'];
    collectionSlug = json['collection_slug'] as String?;
    contractAddress = json['contract_address'] as String?;
    createdDate = json['created_date'] as String?;
    customEventName = json['custom_event_name'];
    devFeePaymentEvent = json['dev_fee_payment_event'];
    devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'];
    duration = json['duration'];
    endingPrice = json['ending_price'] as String?;
    eventType = json['event_type'] as String?;
    fromAccount = (json['from_account'] as Map<String,dynamic>?) != null ? FromAccount.fromJson(json['from_account'] as Map<String,dynamic>) : null;
    id = json['id'] as int?;
    isPrivate = json['is_private'];
    ownerAccount = json['owner_account'];
    paymentToken = json['payment_token'];
    quantity = json['quantity'] as String?;
    seller = json['seller'];
    startingPrice = json['starting_price'] as String?;
    toAccount = json['to_account'];
    totalPrice = json['total_price'];
    transaction = json['transaction'];
    winnerAccount = json['winner_account'];
    listingTime = json['listing_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['approved_account'] = approvedAccount;
    json['asset'] = asset?.toJson();
    json['asset_bundle'] = assetBundle;
    json['auction_type'] = auctionType;
    json['bid_amount'] = bidAmount;
    json['collection_slug'] = collectionSlug;
    json['contract_address'] = contractAddress;
    json['created_date'] = createdDate;
    json['custom_event_name'] = customEventName;
    json['dev_fee_payment_event'] = devFeePaymentEvent;
    json['dev_seller_fee_basis_points'] = devSellerFeeBasisPoints;
    json['duration'] = duration;
    json['ending_price'] = endingPrice;
    json['event_type'] = eventType;
    json['from_account'] = fromAccount?.toJson();
    json['id'] = id;
    json['is_private'] = isPrivate;
    json['owner_account'] = ownerAccount;
    json['payment_token'] = paymentToken;
    json['quantity'] = quantity;
    json['seller'] = seller;
    json['starting_price'] = startingPrice;
    json['to_account'] = toAccount;
    json['total_price'] = totalPrice;
    json['transaction'] = transaction;
    json['winner_account'] = winnerAccount;
    json['listing_time'] = listingTime;
    return json;
  }

  @override
  String toString() {
    return 'AssetEvents{approvedAccount: $approvedAccount, asset: $asset, assetBundle: $assetBundle, auctionType: $auctionType, bidAmount: $bidAmount, collectionSlug: $collectionSlug, contractAddress: $contractAddress, createdDate: $createdDate, customEventName: $customEventName, devFeePaymentEvent: $devFeePaymentEvent, devSellerFeeBasisPoints: $devSellerFeeBasisPoints, duration: $duration, endingPrice: $endingPrice, eventType: $eventType, fromAccount: $fromAccount, id: $id, isPrivate: $isPrivate, ownerAccount: $ownerAccount, paymentToken: $paymentToken, quantity: $quantity, seller: $seller, startingPrice: $startingPrice, toAccount: $toAccount, totalPrice: $totalPrice, transaction: $transaction, winnerAccount: $winnerAccount, listingTime: $listingTime}';
  }
}

class Asset {
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
  String? description;
  dynamic externalLink;
  AssetContract? assetContract;
  String? permalink;
  Collection? collection;
  dynamic decimals;
  String? tokenMetadata;
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
    imageOriginalUrl = json['image_original_url'] as String?;
    animationUrl = json['animation_url'];
    animationOriginalUrl = json['animation_original_url'];
    name = json['name'] as String?;
    description = json['description'] as String?;
    externalLink = json['external_link'];
    assetContract = (json['asset_contract'] as Map<String,dynamic>?) != null ? AssetContract.fromJson(json['asset_contract'] as Map<String,dynamic>) : null;
    permalink = json['permalink'] as String?;
    collection = (json['collection'] as Map<String,dynamic>?) != null ? Collection.fromJson(json['collection'] as Map<String,dynamic>) : null;
    decimals = json['decimals'];
    tokenMetadata = json['token_metadata'] as String?;
    owner = (json['owner'] as Map<String,dynamic>?) != null ? Owner.fromJson(json['owner'] as Map<String,dynamic>) : null;
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

class AssetContract {
  String? address;
  String? assetContractType;
  String? createdDate;
  String? name;
  dynamic nftVersion;
  dynamic openseaVersion;
  int? owner;
  String? schemaName;
  String? symbol;
  String? totalSupply;
  String? description;
  dynamic externalLink;
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
    openseaVersion = json['opensea_version'];
    owner = json['owner'] as int?;
    schemaName = json['schema_name'] as String?;
    symbol = json['symbol'] as String?;
    totalSupply = json['total_supply'] as String?;
    description = json['description'] as String?;
    externalLink = json['external_link'];
    imageUrl = json['image_url'] as String?;
    defaultToFiat = json['default_to_fiat'] as bool?;
    devBuyerFeeBasisPoints = json['dev_buyer_fee_basis_points'] as int?;
    devSellerFeeBasisPoints = json['dev_seller_fee_basis_points'] as int?;
    onlyProxiedTransfers = json['only_proxied_transfers'] as bool?;
    openseaBuyerFeeBasisPoints = json['opensea_buyer_fee_basis_points'] as int?;
    openseaSellerFeeBasisPoints = json['opensea_seller_fee_basis_points'] as int?;
    buyerFeeBasisPoints = json['buyer_fee_basis_points'] as int?;
    sellerFeeBasisPoints = json['seller_fee_basis_points'] as int?;
    payoutAddress = json['payout_address'] as String?;
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

class Collection {
  String? bannerImageUrl;
  dynamic chatUrl;
  String? createdDate;
  bool? defaultToFiat;
  String? description;
  String? devBuyerFeeBasisPoints;
  String? devSellerFeeBasisPoints;
  String? discordUrl;
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
  String? payoutAddress;
  bool? requireEmail;
  dynamic shortDescription;
  String? slug;
  dynamic telegramUrl;
  String? twitterUsername;
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
    discordUrl = json['discord_url'] as String?;
    displayData = (json['display_data'] as Map<String,dynamic>?) != null ? DisplayData.fromJson(json['display_data'] as Map<String,dynamic>) : null;
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
    openseaBuyerFeeBasisPoints = json['opensea_buyer_fee_basis_points'] as String?;
    openseaSellerFeeBasisPoints = json['opensea_seller_fee_basis_points'] as String?;
    payoutAddress = json['payout_address'] as String?;
    requireEmail = json['require_email'] as bool?;
    shortDescription = json['short_description'];
    slug = json['slug'] as String?;
    telegramUrl = json['telegram_url'];
    twitterUsername = json['twitter_username'] as String?;
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

class Owner {
  dynamic user;
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
    user = json['user'];
    profileImgUrl = json['profile_img_url'] as String?;
    address = json['address'] as String?;
    config = json['config'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user'] = user;
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

class FromAccount {
  dynamic user;
  String? profileImgUrl;
  String? address;
  String? config;

  FromAccount({
    this.user,
    this.profileImgUrl,
    this.address,
    this.config,
  });

  FromAccount.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    profileImgUrl = json['profile_img_url'] as String?;
    address = json['address'] as String?;
    config = json['config'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user'] = user;
    json['profile_img_url'] = profileImgUrl;
    json['address'] = address;
    json['config'] = config;
    return json;
  }

  @override
  String toString() {
    return 'FromAccount{user: $user, profileImgUrl: $profileImgUrl, address: $address, config: $config}';
  }
}