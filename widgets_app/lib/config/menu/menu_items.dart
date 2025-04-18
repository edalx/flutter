import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

var appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod Counter',
      subTitle: 'Introducción a riverpod',
      link: '/counter-river',
      icon: Icons.account_balance_wallet_outlined),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Tarjetas en Flutter',
      link: '/cards',
      icon: Icons.card_giftcard_outlined),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.add_a_photo_outlined),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.control_point_duplicate_outlined),
  MenuItem(
      title: 'Introducción a la aplicación',
      subTitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.add_a_photo_outlined),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Listas infinitas y pull',
      link: '/infinite',
      icon: Icons.add_box_outlined),
  MenuItem(
      title: 'Cambiar tema',
      subTitle: 'Cambiar tema de la aplicación',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined)
];
