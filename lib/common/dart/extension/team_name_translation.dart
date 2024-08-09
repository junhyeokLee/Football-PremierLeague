
extension TeamNameTranslation on String {
  String get translate {
    const translations = {
      'Arsenal FC': '아스날 FC',
      'Aston Villa FC': '애스턴 빌라 FC',
      'Chelsea FC': '첼시 FC',
      'Everton FC': '에버턴 FC',
      'Fulham FC': '풀럼 FC',
      'Liverpool FC': '리버풀 FC',
      'Manchester City FC': '맨체스터 시티 FC',
      'Manchester United FC': '맨체스터 유나이티드 FC',
      'Newcastle United FC': '뉴캐슬 유나이티드 FC',
      'Tottenham Hotspur FC': '토트넘 홋스퍼 FC',
      'Wolverhampton Wanderers FC': '울버햄프턴 원더러스 FC',
      'Leicester City FC': '레스터 시티 FC',
      'Southampton FC': '사우샘프턴 FC',
      'Ipswich Town FC': '입스위치 타운 FC',
      'Nottingham Forest FC': '노팅엄 포레스트 FC',
      'Crystal Palace FC': '크리스탈 팰리스 FC',
      'Brighton & Hove Albion FC': '브라이튼 앤 호브 알비온 FC',
      'Brentford FC': '브렌트퍼드 FC',
      'West Ham United FC': '웨스트햄 유나이티드 FC',
      'AFC Bournemouth': 'AFC 본머스'
    };

    return translations[this] ?? this; // 번역된 이름을 반환, 없으면 영어 이름 그대로 반환
  }
}