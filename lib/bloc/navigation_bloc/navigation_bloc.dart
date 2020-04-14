import 'package:bloc/bloc.dart';
import 'package:acmcsslast/ui/pages/AboutUsPage.dart';
import 'package:acmcsslast/ui/pages/AppCoordinatorPage.dart';
import 'package:acmcsslast/ui/pages/ContactUsPage.dart';
import 'package:acmcsslast/ui/pages/MyProfilePage.dart';
import 'package:acmcsslast/ui/pages/HomePage.dart';
import 'package:acmcsslast/ui/pages/SponsorsPage.dart';

enum NavigationEvents {
  HomeClickedEvent,
  ProfileClickedEvent,
  SponsorClickedEvent,
  AppCoordClickedEvent,
  ContactClickedEvent,
  AboutClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => HomePage(
        onMenuTap: onMenuTap,
      );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomeClickedEvent:
        yield HomePage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.ProfileClickedEvent:
        yield MyProfilePage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.SponsorClickedEvent:
        yield SponsorsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.AppCoordClickedEvent:
        yield AppCoordinatorPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.ContactClickedEvent:
        yield ContactUsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.AboutClickedEvent:
        yield AboutUsPage(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}
