class Study {
  final String id;
  final String cid;
  final String imageUrl;
  final String channel;
  final String category;
  final String leader;
  final String format;
  final String location;
  final String mindesc;
  final String maxdesc;
  final String price;
  final String favorite;
  final String members;
  final String ratings;
  final String comments;

  Study({
    required this.id,
    required this.cid,
    required this.imageUrl,
    required this.channel,
    required this.category,
    required this.leader,
    required this.format,
    required this.location,
    required this.mindesc,
    required this.maxdesc,
    required this.price,
    required this.favorite,
    required this.members,
    required this.ratings,
    required this.comments,
  });
}

List<Study> studyList = [
  study0,
  study1,
  study2,
  study3,
  study4,
  study5,
];

final Study study0 = Study(
    id: "0",
    cid: "0",
    imageUrl: "assets/study0.png",
    channel: "부캐부클이",
    category: "독서",
    leader: "조승연",
    format: "오프라인",
    location: "성수동",
    mindesc: "매주 1권, 한달 4권 독서 토론!",
    maxdesc: "책에 미친 사람들이 엄청나게 많다구요!",
    price: "15000",
    favorite: "812",
    members: "201",
    ratings: "123",
    comments: "완전 좋아요");

final Study study1 = Study(
    id: "1",
    cid: "1",
    imageUrl: "assets/study1.png",
    channel: "스마트스토어러스",
    category: "부업",
    leader: "손오공",
    format: "오프라인",
    location: "망원동",
    mindesc: "매달 50만 원씩만 더 법시다",
    maxdesc: "단 2달만에 온라인 셀러로!",
    price: "18000",
    favorite: "123",
    members: "98",
    ratings: "45",
    comments: "진짜 좋아요");

final Study study2 = Study(
    id: "2",
    cid: "2",
    imageUrl: "assets/study2.png",
    channel: "공인만 팝니다",
    category: "자격증",
    leader: "김상식",
    format: "오프라인",
    location: "이태원동",
    mindesc: "커리어 전환이 가능해요",
    maxdesc: "땀내나는 현장을 함께해요",
    price: "12000",
    favorite: "73",
    members: "23",
    ratings: "19",
    comments: "땀내 납니다");

final Study study3 = Study(
    id: "3",
    cid: "3",
    imageUrl: "assets/study3.png",
    channel: "개발새발해",
    category: "1인창업",
    leader: "오박사",
    format: "오프라인",
    location: "청담동",
    mindesc: "플러터로 앱만들기해요",
    maxdesc: "당신도 1인 개발자로 창업까지!",
    price: "25000",
    favorite: "523",
    members: "912",
    ratings: "427",
    comments: "성공했습니다!");

final Study study4 = Study(
    id: "4",
    cid: "4",
    imageUrl: "assets/study4.png",
    channel: "예비창업자 수다방",
    category: "스타트업",
    leader: "이승건",
    format: "오프라인",
    location: "역삼동",
    mindesc: "힘든 상황 공유해요",
    maxdesc: "하면 된다니깐",
    price: "10000",
    favorite: "232",
    members: "192",
    ratings: "80",
    comments: "완전 재밌어요~");

final Study study5 = Study(
    id: "5",
    cid: "5",
    imageUrl: "assets/study5.png",
    channel: "나이트러너스",
    category: "건강",
    leader: "최계란",
    format: "오프라인",
    location: "반포동",
    mindesc: "직장인 뜁시당~!",
    maxdesc: "세달 동안 10kg 그냥 빠져요~",
    price: "5000",
    favorite: "832",
    members: "190",
    ratings: "47",
    comments: "스트레스 확 날아감~");
