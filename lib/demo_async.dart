
Future<void> printOrderMessage() async {
  try {
    print('Awaiting user order...');
    var order = await fetchUserOrder();
    print('Your order is: $order');
  } catch (err) {
    print('Order -> Caught error: $err');
    throw 'Cannot locate Order';
  }
}

Future<String> fetchUserOrder() {
  //Imagine that this function is more complex and slow.
  var str = Future.delayed(
      //const Duration(seconds: 5), () => 'Large Latte');
      const Duration(seconds: 5),
      () => throw 'Cannot locate user order');
  return str;
}

void main() async {
  try {
    countSeconds(4);
    await printOrderMessage();
  } catch (err) {
    print('main -> Caught error: $err');
  }
}

int countSeconds(int i) {
  // Stream<List<int>> stream = File('demo_async.dart').openRead();
  // stream.transform(utf8.decoder).forEach(print);

  for (int x = 1; x <= i; x++) {
    Future.delayed(Duration(seconds: 1),() => print(x));
  }

  return i++;
}
