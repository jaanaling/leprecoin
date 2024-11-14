// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:leprecoin/src/core/utils/icon_provider.dart';

class TransElement {
  final bool isIncome;
  final String icon;
  final String title;

  TransElement({
    required this.isIncome,
    required this.icon,
    required this.title,
  });
}

final List<TransElement> transElements = [
  TransElement(title:  'Food & Dining', isIncome: false, icon: IconProvider.food.buildImageUrl() ),
  TransElement(title:  'Transportation', isIncome: false, icon: IconProvider.transportation.buildImageUrl() ),
  TransElement(title:  'Entertainment', isIncome: false, icon: IconProvider.entertainment.buildImageUrl() ),
  TransElement(title:  'Utilities', isIncome: false, icon: IconProvider.utilities.buildImageUrl() ),
  TransElement(title:  'Shopping', isIncome: false, icon: IconProvider.shopping.buildImageUrl() ),
  TransElement(title:  'Health & Wellness', isIncome: false, icon: IconProvider.health.buildImageUrl() ),
  TransElement(title:  'Education', isIncome: false, icon: IconProvider.education.buildImageUrl() ),
  TransElement(title:  'Travel', isIncome: false, icon: IconProvider.travel.buildImageUrl() ),
  TransElement(title:  'Personal Care', isIncome: false, icon: IconProvider.personal.buildImageUrl() ),
  TransElement(title:  'Gifts & Donations', isIncome: false, icon: IconProvider.gifts.buildImageUrl() ),
  TransElement(title:  'Housing', isIncome: false, icon: IconProvider.housing.buildImageUrl() ),
  TransElement(title:  'Insurance', isIncome: false, icon: IconProvider.insurance.buildImageUrl() ),
  TransElement(title:  'Subscriptions', isIncome: false, icon: IconProvider.subscriptions.buildImageUrl() ),
  TransElement(title:  'Pets', isIncome: false, icon: IconProvider.pets.buildImageUrl() ),

  TransElement(title:  'Salary', isIncome: true, icon: IconProvider.salary.buildImageUrl() ),
  TransElement(title:  'Investments', isIncome: true, icon: IconProvider.investments.buildImageUrl() ),
  TransElement(title:  'Business Income', isIncome: true, icon: IconProvider.business.buildImageUrl() ),
  TransElement(title:  'Freelance', isIncome: true, icon: IconProvider.freelance.buildImageUrl() ),
  TransElement(title:  'Gifts', isIncome: true, icon: IconProvider.gifts.buildImageUrl() ),
  TransElement(title:  'Rent Income', isIncome: true, icon: IconProvider.housing.buildImageUrl() ),
  TransElement(title:  'Other Income', isIncome: true, icon: IconProvider.other.buildImageUrl() ),
];


