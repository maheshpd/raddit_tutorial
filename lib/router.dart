import 'package:flutter/material.dart';
import 'package:raddit_tutorial/features/auth/screens/login_screen.dart';
import 'package:raddit_tutorial/features/community/screen/add_mods_screen.dart';
import 'package:raddit_tutorial/features/community/screen/community_screen.dart';
import 'package:raddit_tutorial/features/community/screen/create_community_screen.dart';
import 'package:raddit_tutorial/features/community/screen/edit_community_screen.dart';
import 'package:raddit_tutorial/features/community/screen/mod_tool_screen.dart';
import 'package:raddit_tutorial/features/home/screen/home_screen.dart';
import 'package:raddit_tutorial/features/post/screen/add_post_screen.dart';
import 'package:raddit_tutorial/features/post/screen/add_post_screen_type.dart';
import 'package:raddit_tutorial/features/post/screen/comment_screen.dart';
import 'package:raddit_tutorial/features/user_profile/screen/edit_profile_sceen.dart';
import 'package:raddit_tutorial/features/user_profile/screen/user_profile_screen.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute =
    RouteMap(routes: {'/': (_) => const MaterialPage(child: LoginScreen())});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
  '/create-community': (_) =>
      const MaterialPage(child: CreateCommunityScreen()),
  '/r/:name': (route) => MaterialPage(
          child: CommunityScreen(
        name: route.pathParameters['name']!,
      )),
  '/mod-tools/:name': (routeData) => MaterialPage(
          child: ModToolsScreen(
        name: routeData.pathParameters['name']!,
      )),
  '/edit-community/:name': (routeData) => MaterialPage(
          child: EditCommunityScreen(
        name: routeData.pathParameters['name']!,
      )),
  '/add-mods/:name': (routeData) => MaterialPage(
          child: AddModsScreen(
        name: routeData.pathParameters['name']!,
      )),
  '/u/:uid': (routeData) => MaterialPage(
          child: UserProfile(
        uid: routeData.pathParameters['uid']!,
      )),
  '/edit_profile/:uid': (routeData) => MaterialPage(
          child: EditProfileScreen(
        uid: routeData.pathParameters['uid']!,
      )),
  '/add-post/:type': (routeData) => MaterialPage(
          child: AddPostScreenType(
        type: routeData.pathParameters['type']!,
      )),

  '/add-post': (routeData) => const MaterialPage(
          child: AddPostScreen()),

  '/post/:postId/comments': (route) => MaterialPage(
      child: CommentsScreen(postId: route.pathParameters['postId']!)),
      
});
