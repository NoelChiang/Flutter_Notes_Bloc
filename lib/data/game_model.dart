enum GamePlatform { ns, ps4, ps5, all }

class GameData {
  final String name;
  final GamePlatform platform;
  final List<String> images;
  final List<String> tags;

  GameData({
    required this.name,
    required this.platform,
    required this.images,
    required this.tags,
  });

  String get platformName {
    switch (platform) {
      case GamePlatform.ns:
        return "Switch";
      case GamePlatform.ps4:
        return "PlayStation4";
      case GamePlatform.ps5:
        return "PlayStation5";
      case GamePlatform.all:
        return "All platform";
    }
  }

  static List<GameData> get mock {
    return [
      GameData(
        name: "Demon Souls Remake",
        platform: GamePlatform.ps5,
        images: [
          "https://image.api.playstation.com/vulcan/img/rnd/202011/1717/GemRaOZaCMhGxQ9dRhnQQyT5.png"
        ],
        tags: ["動作", "角色扮演"],
      ),
      GameData(name: "Final Fantask VII Remake", platform: GamePlatform.ps5, images: [
        "https://image.api.playstation.com/vulcan/img/rnd/202010/0723/vDLeyNzrJdGwabFlEo44GkEZ.png?w=440"
      ], tags: [
        "動作",
        "角色扮演"
      ]),
      GameData(
        name: "Super Mario Odyssey",
        platform: GamePlatform.ns,
        images: [
          "https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperMarioOdyssey_image1600w.jpg"
        ],
        tags: ["動作"],
      ),
      GameData(
        name: "Hollow Knight",
        platform: GamePlatform.ps4,
        images: ["https://p2.bahamut.com.tw/B/2KU/18/69216983f19dc192abd1eb373b15eda5.JPG"],
        tags: ["動作", "解謎"],
      ),
      GameData(
        name: "Hollow Knight",
        platform: GamePlatform.ns,
        images: ["https://p2.bahamut.com.tw/B/2KU/18/69216983f19dc192abd1eb373b15eda5.JPG"],
        tags: ["動作", "解謎"],
      ),
      GameData(
        name: "Ori and the Will of the Wisps",
        platform: GamePlatform.ns,
        images: [
          "https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_OriAndTheWillOfTheWisps_image1600w.jpg"
        ],
        tags: ["動作", "解謎"],
      ),
      GameData(
        name: "Super Robot Wars 30",
        platform: GamePlatform.ps4,
        images: [
          "https://image.api.playstation.com/vulcan/ap/rnd/202106/2811/a1JO7IB1DhzXIBje9abGZAYc.png"
        ],
        tags: ["策略模擬"],
      ),
      GameData(
        name: "Super Robot Wars 30",
        platform: GamePlatform.ns,
        images: [
          "https://image.api.playstation.com/vulcan/ap/rnd/202106/2811/a1JO7IB1DhzXIBje9abGZAYc.png"
        ],
        tags: ["策略模擬"],
      ),
      GameData(
        name: "Amaho No Sakuna Hime",
        platform: GamePlatform.ps5,
        images: [
          "https://p2.bahamut.com.tw/B/2KU/91/40960003b62f97f8410bdb432e1aiwz5.JPG?v=1605080909708"
        ],
        tags: ["動作", "角色扮演"],
      ),
      GameData(
        name: "Nine Parchments",
        platform: GamePlatform.ps4,
        images: [
          "https://www.mobygames.com/images/covers/l/441118-nine-parchments-nintendo-switch-front-cover.jpg"
        ],
        tags: ["動作", "角色扮演"],
      ),
      GameData(
        name: "Resident Evil Village",
        platform: GamePlatform.ps5,
        images: [
          "https://image.api.playstation.com/vulcan/ap/rnd/202101/0812/FkzwjnJknkrFlozkTdeQBMub.png"
        ],
        tags: ["動作", "射擊"],
      ),
      GameData(
        name: "It Takes Two",
        platform: GamePlatform.ps4,
        images: [
          "https://image.api.playstation.com/vulcan/ap/rnd/202012/0815/0Xqi1LgRoEtJ5zlFprpd54Vu.png"
        ],
        tags: ["動作", "解謎"],
      ),
      GameData(
        name: "R-Type Final 2",
        platform: GamePlatform.ps4,
        images: [
          "https://static.wikia.nocookie.net/rtype/images/1/1a/R-Type_Final_2_Cover_Art.jpg/revision/latest?cb=20210709221910"
        ],
        tags: ["射擊"],
      ),
      GameData(
        name: "Tales of Arise",
        platform: GamePlatform.ps5,
        images: ["https://img.3dmgame.com/uploads/images/news/20210423/1619142109_520595.jpg"],
        tags: ["動作", "角色扮演"],
      ),
      GameData(
        name: "Monster Hunter World Iceborne",
        platform: GamePlatform.ps4,
        images: [
          "https://image.api.playstation.com/vulcan/img/cfn/11307w1cgpWhpZ4A6XhLYZL8FEwerYV6dfbaxRb0fkbbnX8QNN90rGAIcyRqRJhCEHWcwpO3gK8EF8D7vUlmJhjEzZkbASBB.png"
        ],
        tags: ["動作"],
      ),
      GameData(
        name: "Monster Hunter Rise",
        platform: GamePlatform.ns,
        images: ["https://www.monsterhunter.com/rise/assets/images/common/share.png"],
        tags: ["動作"],
      ),
      GameData(
        name: "Blood Borne The Old Hunter",
        platform: GamePlatform.ps4,
        images: [
          "https://image.api.playstation.com/cdn/EP9000/CUSA00207_00/PYBKeRa0XQYnX6IL4TyQwAdjsG1yIiHr.png"
        ],
        tags: ["動作", "角色扮演"],
      ),
      GameData(
        name: "Nier Automata",
        platform: GamePlatform.ps4,
        images: [
          "https://image.api.playstation.com/cdn/HP0082/CUSA06592_00/O9k8kwZ1hbPiFTXYN2DJ2G5XxLik6gJEBd19vNPN1jSAJIVyD9fgxrkdkUIiErJw.png"
        ],
        tags: ["動作", "角色扮演", "射擊"],
      ),
      GameData(
        name: "Super Mario 3D world",
        platform: GamePlatform.ns,
        images: [
          "https://assets1.ignimgs.com/2020/01/30/super-mario-3d-world---button-2020-1580421829688.jpg"
        ],
        tags: ["動作"],
      ),
      GameData(
        name: "Spelunker Party!",
        platform: GamePlatform.ns,
        images: [
          "https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_SpelunkerParty_image1600w.jpg"
        ],
        tags: ["動作"],
      ),
      GameData(
        name: "Super Mario Cart 8",
        platform: GamePlatform.ns,
        images: [
          "https://external-preview.redd.it/eQDrGAx61Azyz9TARuuDVNrQavH3TSru-EvPZjTbTmU.jpg?auto=webp&s=78c39bb611859451f6332a5fab109d6fd330ec82"
        ],
        tags: ["競速"],
      ),
    ];
  }
}
