import 'package:badminton_bareng/gen/gen.dart';

enum MatchType {
  randomSpin,
  fairPlay,
  winnerStay;

  String get title {
    switch (this) {
      case MatchType.randomSpin:
        return 'Random Spin';
      case MatchType.fairPlay:
        return 'Fair Play';
      case MatchType.winnerStay:
        return 'Winner Stay';
    }
  }

  String get description {
    switch (this) {
      case MatchType.randomSpin:
        return 'Semua pemain diacak penuh tanpa aturan, siapa aja bisa ketemu siapa.';
      case MatchType.fairPlay:
        return 'Sistem pastikan semua kebagian main rata, nggak ada yang kelamaan nunggu.';
      case MatchType.winnerStay:
        return 'Tim pemenang lanjut main lagi, lawan diganti pemain baru.';
    }
  }

  String get iconPath {
    switch (this) {
      case MatchType.randomSpin:
        return Assets.icons.icRandom.path;
      case MatchType.fairPlay:
        return Assets.icons.icFairPlay.path;
      case MatchType.winnerStay:
        return Assets.icons.icWinnerStay.path;
    }
  }
}
