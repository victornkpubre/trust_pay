class UserInput {
  final String image;
  final String username;
  final String? account;
  final int? totalTransaction;
  final double? completionRate;
  UserInput({
    required this.image, 
    required this.username, 
    this.account, 
    this.totalTransaction, 
    this.completionRate
  });
}
