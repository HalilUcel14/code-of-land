enum AssetsEnum {
  island_128,
  island_256,
  island_512,
  ;

  String get enumName => toString().split('.').last;
  String get imagePng => 'assets/image/$enumName.png';
  String get imageJpg => 'assets/image/$enumName.jpg';
  String get imageSvg => 'assets/image/$enumName.svg';
  String get splashImage => '/image/splash/$enumName.png';
}
