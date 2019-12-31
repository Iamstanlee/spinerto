class User {
  String uid, email, name, paymentId, avatarURL, phoneNumber;
  Map bank;
  double balance;
  User(
      {this.email,
      this.uid,
      this.name,
      this.balance,
      this.bank,
      this.paymentId,
      this.phoneNumber,
      this.avatarURL});
  User.fromMap(Map map) {
    this.uid = map['uid'];
    this.email = map['email'];
    this.name = map['firstname'] + " " + map['lastname'];
    this.balance = map['balance'];
    this.bank = map['bank'];
    this.paymentId = map['paymentId'];
    this.phoneNumber = map['phoneNumber'];
    this.avatarURL = map['avatarURL'];
  }
}
