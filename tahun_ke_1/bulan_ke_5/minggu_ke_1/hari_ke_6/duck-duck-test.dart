String duckDuckGoose(dynamic players, int goose) {
  num targetIndex = (goose - 1) % players.length;

  return players[targetIndex].name;
}
