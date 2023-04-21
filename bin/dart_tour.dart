class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var apidata = [
    {
      "name": "kev",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "kev",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "kev",
      "team": "red",
      "xp": 0,
    },
  ];

  apidata.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
