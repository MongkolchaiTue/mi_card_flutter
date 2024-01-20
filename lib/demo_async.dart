Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');

}

Future<String> fetchUserOrder() {
  //Imagine that this function is more comples and slow.
  return Future.delayed(const Duration(seconds: 5), () => 'Lerge Latte');


}

void main() async {
  countSeconds(4);
  await printOrderMessage();
}

void countSeconds(int i) {
  for (var x = 1; x <= i; x++) {
    Future.delayed(Duration(seconds: 1),() => print(x));
  }
}
