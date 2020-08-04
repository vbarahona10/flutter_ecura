import '../model/tile_model.dart';

int points = 0, selectedTileIndex;
bool selcted = false;
String selectedImageAssetPath = "";

List<TileModel> pairs = new List<TileModel>();

List<TileModel> visiblePairs = new List<TileModel>();

List<TileModel> getPairs() {
  List<TileModel> pairs = new List<TileModel>();
  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath("assets/correo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath("assets/seguridad.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //3
  tileModel.setImageAssetPath("assets/https.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //4
  tileModel.setImageAssetPath("assets/computadora2.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //5
  tileModel.setImageAssetPath("assets/escritorio.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath("assets/internet.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //7
  tileModel.setImageAssetPath("assets/monitor.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath("assets/vpn.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  return pairs;
}

List<TileModel> getQuestions() {
  List<TileModel> pairs = new List<TileModel>();
  TileModel tileModel = new TileModel();

  for (int i = 0; i < 8; i++) {
    tileModel.setImageAssetPath("assets/question4.png");
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
  }
  return pairs;
}
