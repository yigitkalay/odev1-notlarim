void main() {
  int romanToInt(String s) {
    Map<String, int> map = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };
    int toplam = 0;
    for (var i = 0; i < s.length; i++) {
      if (i < s.length - 1 && map[s[i]]! < map[s[i + 1]]!) {
        toplam = toplam - map[s[i]]!;
      } else {
        toplam = toplam + map[s[i]]!;
      }
    }
    return toplam;
  }
}
