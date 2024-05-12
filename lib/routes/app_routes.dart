import 'package:af_store/features/authentication/screens/login/login.dart';
import 'package:af_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:af_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:af_store/features/authentication/screens/signup/signup.dart';
import 'package:af_store/features/authentication/screens/signup/verify_email.dart';
import 'package:af_store/features/personalization/screens/address/address.dart';
import 'package:af_store/features/personalization/screens/profile/profile.dart';
import 'package:af_store/features/personalization/screens/settings/settings.dart';
import 'package:af_store/features/shop/screens/cart/cart.dart';
import 'package:af_store/features/shop/screens/checkout/checkout.dart';
import 'package:af_store/features/shop/screens/home/home.dart';
import 'package:af_store/features/shop/screens/orders/order.dart';
import 'package:af_store/features/shop/screens/store/store.dart';
import 'package:af_store/features/shop/screens/wishlist/wishlist.dart';
import 'package:af_store/routes/routes.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: FRoutes.home, page: () => const HomeScreen()),
    GetPage(name: FRoutes.store, page: () => const StoreScreen()),
    GetPage(name: FRoutes.favourites, page: () => const WishlistScreen()),
    GetPage(name: FRoutes.settings, page: () => const SettingsScreen()),
    GetPage(name: FRoutes.order, page: () => const OrderScreen()),
    GetPage(name: FRoutes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: FRoutes.cart, page: () => const CartScreen()),
    GetPage(name: FRoutes.userProfile, page: () => const ProfileScreen()),
    GetPage(name: FRoutes.userAddress, page: () => const UserAddressScreen()),
    GetPage(name: FRoutes.signup, page: () => const SignupScreen()),
    GetPage(name: FRoutes.signin, page: () => const LoginScreen()),
    GetPage(name: FRoutes.verifyEmail, page: () => const verifyEmailScreen()),
    GetPage(name: FRoutes.forgetPassword, page: () => const forgetPassword()),
    GetPage(name: FRoutes.onboarding, page: () => const OnBoardingScreen()),
  ];
}
// Commit at 2022-05-01 16:38:48
// Commit at 2022-06-17 13:30:54
// Commit at 2022-10-16 12:33:34
// Commit at 2023-10-20 16:16:32
// Commit at 2023-10-26 12:59:45
// Commit at 2024-10-22 09:13:00
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
