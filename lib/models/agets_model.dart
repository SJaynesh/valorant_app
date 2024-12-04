class AgentsModel {
  String uuid;
  String displayName;
  String description;
  String developerName;
  dynamic characterTags;
  String displayIcon;
  String displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  String killfeedPortrait;
  String? background;
  List<String> backgroundGradientColors;
  String assetPath;
  bool isFullPortraitRightFacing;
  bool isPlayableCharacter;
  bool isAvailableForTest;
  bool isBaseContent;

  dynamic recruitmentData;
  List<Ability> abilities;
  dynamic voiceLine;

  AgentsModel({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.developerName,
    required this.characterTags,
    required this.displayIcon,
    required this.displayIconSmall,
    required this.bustPortrait,
    required this.fullPortrait,
    required this.fullPortraitV2,
    required this.killfeedPortrait,
    required this.background,
    required this.backgroundGradientColors,
    required this.assetPath,
    required this.isFullPortraitRightFacing,
    required this.isPlayableCharacter,
    required this.isAvailableForTest,
    required this.isBaseContent,
    required this.recruitmentData,
    required this.abilities,
    required this.voiceLine,
  });

  factory AgentsModel.fromJson({required Map<String, dynamic> json}) =>
      AgentsModel(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        developerName: json["developerName"],
        characterTags: json["characterTags"],
        displayIcon: json["displayIcon"],
        displayIconSmall: json["displayIconSmall"],
        bustPortrait: json["bustPortrait"],
        fullPortrait: json["fullPortrait"],
        fullPortraitV2: json["fullPortraitV2"],
        killfeedPortrait: json["killfeedPortrait"],
        background: json["background"],
        backgroundGradientColors:
            List<String>.from(json["backgroundGradientColors"].map((x) => x)),
        assetPath: json["assetPath"],
        isFullPortraitRightFacing: json["isFullPortraitRightFacing"],
        isPlayableCharacter: json["isPlayableCharacter"],
        isAvailableForTest: json["isAvailableForTest"],
        isBaseContent: json["isBaseContent"],
        recruitmentData: json["recruitmentData"],
        abilities: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromJson(x))),
        voiceLine: json["voiceLine"],
      );
}

class Ability {
  String slot;
  String displayName;
  String description;
  String? displayIcon;

  Ability({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json["slot"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
      );
}
