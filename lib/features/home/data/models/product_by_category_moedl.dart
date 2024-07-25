class ProductByCategoryMoedl {
  String? asin;
  String? productTitle;
  String? productPrice;
  String? productOriginalPrice;
  String? currency;
  double? productStarRating;
  int? productNumRatings;
  String? productUrl;
  String? productPhoto;
  int? productNumOffers;
  String? productMinimumOfferPrice;
  bool? isBestSeller;
  bool? isAmazonChoice;
  bool? isPrime;
  bool? climatePledgeFriendly;
  String? salesVolume;
  String? delivery;
  bool? hasVariations;

  ProductByCategoryMoedl({
    this.asin,
    this.productTitle,
    this.productPrice,
    this.productOriginalPrice,
    this.currency,
    this.productStarRating,
    this.productNumRatings,
    this.productUrl,
    this.productPhoto,
    this.productNumOffers,
    this.productMinimumOfferPrice,
    this.isBestSeller,
    this.isAmazonChoice,
    this.isPrime,
    this.climatePledgeFriendly,
    this.salesVolume,
    this.delivery,
    this.hasVariations,
  });

  factory ProductByCategoryMoedl.fromJson(Map<String, dynamic> json) {
    return ProductByCategoryMoedl(
      asin: json['asin'] as String?,
      productTitle: json['product_title'] as String?,
      productPrice: json['product_price'] as String?,
      productOriginalPrice: json['product_original_price'] as String?,
      currency: json['currency'] as String?,
      productStarRating: _parseStarRating(json['product_star_rating']),
      productNumRatings: json['product_num_ratings'] as int?,
      productUrl: json['product_url'] as String?,
      productPhoto: json['product_photo'] as String?,
      productNumOffers: json['product_num_offers'] as int?,
      productMinimumOfferPrice: json['product_minimum_offer_price'] as String?,
      isBestSeller: json['is_best_seller'] as bool?,
      isAmazonChoice: json['is_amazon_choice'] as bool?,
      isPrime: json['is_prime'] as bool?,
      climatePledgeFriendly: json['climate_pledge_friendly'] as bool?,
      salesVolume: json['sales_volume'] as String?,
      delivery: json['delivery'] as String?,
      hasVariations: json['has_variations'] as bool?,
    );
  }

  // Helper method to parse star rating safely
  static double? _parseStarRating(dynamic value) {
    if (value == null) return null;
    if (value is num) return value.toDouble(); // Handle numeric types directly
    if (value is String) return double.tryParse(value); // Convert String to double if possible
    return null; // Return null if parsing fails
  }
}
