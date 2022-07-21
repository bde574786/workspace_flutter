class Album {
  int userId;
  int id;
  String title;
  String body;

  Album(this.userId, this.id, this.title, this.body);

  // factory 타입, 패턴은 아님
  // 싱글톤 패턴 : 한 번 생성된 객체를 재활용 하기 위해 사용
  // 매개변수 map을 사용하여 dart object Album Object로 변환하는 코드
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(json['userId'], json['id'], json['title'], json['body']);
  }
}
