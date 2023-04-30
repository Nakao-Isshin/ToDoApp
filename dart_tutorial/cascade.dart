main() {
  // カスケード記法、..で対象のインスタンスに対するメンバ関数呼び出しの操作を続けられる
  var fullString = StringBuffer()
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..toString();
  print(fullString);
  // 次と等価
  // var sb = StringBuffer();
  // sb.write('Use a StringBuffer for ');
  // sb.writeAll(['efficient', 'string', 'creation'], ' ');
  // var fullString = sb.toString();
  // print(fullString);
}
