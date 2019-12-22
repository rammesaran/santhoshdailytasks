class PlayerMode {
  String name;
  String image;
  int rank;
  String nation;
  int matchodi;
  int matchtest;
  String summery;

  PlayerMode(
      {this.name,
      this.image,
      this.matchodi,
      this.matchtest,
      this.nation,
      this.rank,
      this.summery});

  List<PlayerMode> players = [
    PlayerMode(
      name: "sachin",
      image:
          "https://c.ndtvimg.com/2019-07/u16tdj8s_sachin-tendulkar-icc-twitter_625x300_19_July_19.jpg?output-quality=70&output-format=webp&downsize=555:*",
      rank: 1,
      nation: "india",
      matchodi: 25,
      matchtest: 50,
      summery: "hai this is sachin",
    ),
    PlayerMode(
      name: "dravid",
      image: "https://s.ndtvimg.com/images/entities/120/rahul-dravid-174.jpg",
      rank: 2,
      nation: "india",
      matchodi: 50,
      matchtest: 100,
      summery: "hai this is dravid",
    ),
    PlayerMode(
      name: "dhoni",
      image:
          "https://img.etimg.com/thumb/msid-61166425,width-300,imgsize-126503,resizemode-4/why-after-13-years-mahendra-singh-dhoni-is-still-not-out.jpg",
      rank: 3,
      nation: "india",
      matchodi: 100,
      matchtest: 100,
      summery: "hai this is dhoni",
    ),
    PlayerMode(
        name: "raina",
        image: "https://www.mykhel.com/img/2018/10/raina-1538638720.jpg",
        rank: 4,
        nation: "india",
        matchodi: 65,
        matchtest: 100,
        summery: "hai this is raina"),
  ];
}
