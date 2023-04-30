main() {
  final k = 1; // finalの変数は初期化時のみ代入可能
  // k = 2; // 再代入しようとするとエラー
  const l = 1; // 定数、再代入はエラーになる(コンパイル時に埋め込まれる)
  // l = 2;
  List m = const [1, 2, 3]; // 定数配列を代入
  // m.add(1); // 定数配列の中身の変更はできない（実行時エラー：Cannot add to an unmodifiable list）
  m = [2, 3, 4];
  const List n = [1, 2, 3];
  // n = [2, 3, 4]; // n自体がconstなので変更不可
  print('$k, $l, $m, $n');
}
