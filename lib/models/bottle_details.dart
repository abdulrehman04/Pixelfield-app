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
      distillery: json['Distillery'],
      region: json['Region'],
      country: json['Country'],
      type: json['Type'],
      ageStatement: json['Age statement'],
      filled: json['Filled'],
      bottled: json['Bottled'],
      caskNumber: json['Cask number'],
      abv: json['ABV'],
      size: json['Size'],
      finish: json['Finish'],
    );
  }
}
