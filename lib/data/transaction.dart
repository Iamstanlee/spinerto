enum TrxType { withdrawal, payment }

class Transaction {
  TrxType type;
  String timestamp, name, email, reference;
  dynamic usd, ngn;
  Transaction(
      {this.type,
      this.timestamp,
      this.usd,
      this.ngn,
      this.name,
      this.email,
      this.reference});

  Transaction.fromMap(Map map) {
    this.type = map['type'] == 'payment' ? TrxType.payment : TrxType.withdrawal;
    this.email = map['email'];
    this.name = map['name'];
    this.usd = map['amountInDollar'];
    this.ngn = map['amountInNaira'];
    this.reference = map['reference'];
    this.timestamp = map['timeStamp'];
  }
}
