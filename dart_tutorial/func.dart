// 関数（処理のまとまりを記述する）

main() {
  const x = 10;
  // print('$y'); // 関数の内部で定義されているyは参照できない（変数のスコープ）

  // トップレベルでなくても関数内部でも関数定義できる
  // 戻り値の型を指定しない場合はdynamicになる（あまり推奨されていない）
  // 戻り値がいらない場合は戻り値にvoidを指定する
  int testFunction() {
    const y = 20;
    print('$x, $y'); // 関数の外で定義されているxは参照できる
    return x + y;
  }

  var result = testFunction();
  print('$result');

  // 一行の場合、ファットアローで省略記法がかける（JavaScriptのアロー関数と同じ）
  int oneline(a, b) => a + b;
  // この関数と等価
  // int oneline(a,b){ return a + b }
  print(oneline(1, 2));

  // {}は名前付き任意引数
  void enableFlags({bool bold = false, bool hidden = false}) {
    print('$bold $hidden');
  }

  // 引数ラベルをつけて呼び出す(記述順序は任意)
  // boldにはnull、hiddenにはtrueが渡される
  enableFlags(hidden: true);

  // []は順序付き任意引数、特定の位置以降の引数を省略可能
  // 任意引数にはデフォルト値をもたせることも可能（nullの場合、=の右辺の値が代入される）
  String say(String from, String msg,
      [String device = 'unknown', String? mood]) {
    // ?? 演算子はnullの場合に右側の値が適応される
    return '$from says $msg platform: ${device} mood: ${mood ?? 'unknown'}';
  }

  print(say("He", "Hello"));
}
