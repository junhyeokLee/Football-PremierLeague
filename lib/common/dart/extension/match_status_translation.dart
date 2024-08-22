
extension MatchStatusTranslation on String {
  String get matchStatusTranslation {
    const matchStatusTranslation = {
      'TIMED': '경기예정',
      'SCHEDULED': '경기예정',
      'FINISHED': '경기종료',
      'LIVE' : '경기중',
      'IN_PLAY' : '경기중',
      'PAUSED' : '경기중지',
      'POSTPONED' : '경기연기',
      'SUSPENDED' : '경기중단',
      'CANCELED' : '경기취소',
    };
    return matchStatusTranslation[this] ?? this; // 번역된 이름을 반환, 없으면 영어 이름 그대로 반환
  }
}