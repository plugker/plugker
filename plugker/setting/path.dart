import 'package:navigation/App/Button/ButtonView.dart';
import 'package:navigation/App/Card/cardView.dart';
import 'package:navigation/App/Installation/installationView.dart';
import 'package:navigation/App/Introduction/IntroductionView.dart';
import 'package:navigation/App/Routing/routingView.dart';

import '../engine/router/router.dart';
import 'package:flutter/material.dart';

List<dynamic> routes(RouteSettings settings) {
  return [
    Router.path('introduction', IntroductionView()),
    Router.path('installation', InstallationView()),
    Router.path('routing', RoutingView()),
    Router.path('button', ButtonView()),
    Router.path('card', CardView()),
  ];
}
