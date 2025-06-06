// Fixed BottleDetails class
class BottleDetails {
  final String distillery;
  final String region;
  final String country;
  final String type;
  final String ageStatement;
  final String filled;
  final String bottled;
  final String caskNumber;
  final String abv;
  final String size;
  final String finish;

  BottleDetails({
    required this.distillery,
    required this.region,
    required this.country,
    required this.type,
    required this.ageStatement,
    required this.filled,
    required this.bottled,
    required this.caskNumber,
    required this.abv,
    required this.size,
    required this.finish,
  });

  factory BottleDetails.fromJson(Map<String, dynamic> json) {
    return BottleDetails(
      distillery: json['Distillery']?.toString() ?? '',
      region: json['Region']?.toString() ?? '',
      country: json['Country']?.toString() ?? '',
      type: json['Type']?.toString() ?? '',
      ageStatement: json['Age statement']?.toString() ?? '',
      filled: json['Filled']?.toString() ?? '',
      bottled: json['Bottled']?.toString() ?? '',
      caskNumber: json['Cask number']?.toString() ?? '',
      abv: json['ABV']?.toString() ?? '',
      size: json['Size']?.toString() ?? '',
      finish: json['Finish']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Distillery': distillery,
      'Region': region,
      'Country': country,
      'Type': type,
      'Age statement': ageStatement,
      'Filled': filled,
      'Bottled': bottled,
      'Cask number': caskNumber,
      'ABV': abv,
      'Size': size,
      'Finish': finish,
    };
  }
}
