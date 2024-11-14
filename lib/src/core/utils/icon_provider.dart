enum IconProvider {
  back(imageName: 'back.png'),
  backLight(imageName: 'back_light.png'),
  bottom(imageName: 'bottom.png'),
  business(imageName: 'business.png'),
  chel(imageName: 'chel.png'),
  chelActive(imageName: 'chel_a.png'),
  donations(imageName: 'donations.png'),
  education(imageName: 'education.png'),
  entertainment(imageName: 'entertainment.png'),
  food(imageName: 'food.png'),
  freelance(imageName: 'freelance.png'),
  gifts(imageName: 'gifts.png'),
  goal(imageName: 'goal.png'),
  goalActive(imageName: 'goal_a.png'),
  health(imageName: 'health.png'),
  home(imageName: 'home.png'),
  homeActive(imageName: 'home_a.png'),
  housing(imageName: 'housing.png'),
  income(imageName: 'income.png'),
  insurance(imageName: 'insurance.png'),
  investments(imageName: 'investments.png'),
  graf(imageName: 'graf.png'),
  dialog(imageName: 'dialog.png'),
  lepr0(imageName: 'lepr0.png'),
  lepr1(imageName: 'lepr1.png'),
  lepr2(imageName: 'lepr2.png'),
  other(imageName: 'other.png'),
  personal(imageName: 'personal.png'),
  pets(imageName: 'pets.png'),
  pot1(imageName: 'pot1.png'),
  pot2(imageName: 'pot2.png'),
  pot3(imageName: 'pot3.png'),
  pot4(imageName: 'pot4.png'),
  pot5(imageName: 'pot5.png'),
  salary(imageName: 'salary.png'),
  shopping(imageName: 'shopping.png'),
  splash(imageName: 'splash.png'),
  subscriptions(imageName: 'subscriptions.png'),
  tips(imageName: 'tips.png'),
  tipsActive(imageName: 'tips_a.png'),
  topBack(imageName: 'top_back.png'),
  transportation(imageName: 'transportation.png'),
  trans(imageName: 'trans.png'),
  transActive(imageName: 'trans_a.png'),
  travel(imageName: 'travel.png'),
  utilities(imageName: 'utilities.png'),
  pBack(imageName: 'p_back.png'),
  logo(imageName: 'logo.png'),
  unknown(imageName: '');

  const IconProvider({
    required this.imageName,
  });

  final String imageName;
  static const _imageFolderPath = 'assets/images';

  String buildImageUrl() => '$_imageFolderPath/$imageName';
  static String buildImageByName(String name) => '$_imageFolderPath/$name';
}
