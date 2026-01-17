// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_school_response.dart';
import '../models/get_schools_response.dart';
import '../models/post_school_users_response.dart';
import '../models/post_schools_response.dart';
import '../models/put_school_response.dart';

part 'school_client.g.dart';

@RestApi()
abstract class SchoolClient {
  factory SchoolClient(Dio dio, {String? baseUrl}) = _SchoolClient;

  /// School: Update
  @MultiPart()
  @PUT('/school')
  Future<PutSchoolResponse> schoolUpdate({
    @Part(name: 'name') required String name,
    @Part(name: 'email') required String email,
    @Part(name: 'street') required String street,
    @Part(name: 'street_nr') required String streetNr,
    @Part(name: 'postal_code') required String postalCode,
    @Part(name: 'city') required String city,
    @Part(name: 'state') required String state,
    @Part(name: 'admin_name') required String adminName,
    @Part(name: 'admin_email') required String adminEmail,
    @Part(name: 'headteacher_name') required String headteacherName,
    @Part(name: 'customer') bool? customer,
    @Part(name: 'type') String? type,
    @Part(name: 'postal_second_line') String? postalSecondLine,
    @Part(name: 'billing_name') String? billingName,
    @Part(name: 'billing_postal_second_line') String? billingPostalSecondLine,
    @Part(name: 'billing_street') String? billingStreet,
    @Part(name: 'billing_street_nr') String? billingStreetNr,
    @Part(name: 'billing_postal_code') String? billingPostalCode,
    @Part(name: 'billing_city') String? billingCity,
    @Part(name: 'modules') List<String>? modules,
    @Part(name: 'logo') File? logo,
    @Part(name: 'logo_url') String? logoUrl,
  });

  /// School: Show
  @GET('/school')
  Future<GetSchoolResponse> schoolShow();

  /// School: Add User
  @POST('/school/users')
  Future<PostSchoolUsersResponse> schoolAddUser();

  /// School: Remove User.
  ///
  /// [user] - The user ID.
  @DELETE('/school/users/{user}')
  Future<void> schoolRemoveUser({@Path('user') required int user});

  /// School: Index
  @GET('/schools')
  Future<GetSchoolsResponse> schoolsIndex();

  /// School: Store
  @MultiPart()
  @POST('/schools')
  Future<PostSchoolsResponse> schoolsStore({
    @Part(name: 'name') required String name,
    @Part(name: 'email') required String email,
    @Part(name: 'street') required String street,
    @Part(name: 'street_nr') required String streetNr,
    @Part(name: 'postal_code') required String postalCode,
    @Part(name: 'city') required String city,
    @Part(name: 'state') required String state,
    @Part(name: 'modules') required List<String> modules,
    @Part(name: 'admin_name') required String adminName,
    @Part(name: 'admin_email') required String adminEmail,
    @Part(name: 'headteacher_name') required String headteacherName,
    @Part(name: 'customer') bool? customer,
    @Part(name: 'type') String? type,
    @Part(name: 'postal_second_line') String? postalSecondLine,
    @Part(name: 'billing_name') String? billingName,
    @Part(name: 'billing_postal_second_line') String? billingPostalSecondLine,
    @Part(name: 'billing_street') String? billingStreet,
    @Part(name: 'billing_street_nr') String? billingStreetNr,
    @Part(name: 'billing_postal_code') String? billingPostalCode,
    @Part(name: 'billing_city') String? billingCity,
    @Part(name: 'logo') File? logo,
  });

  /// School: Get Logo
  @GET('/school/logo')
  Future<String> schoolGetLogo0();

  /// School: Get Logo
  @GET('/school/logo.{extension}')
  Future<String> schoolGetLogoWithExtension({
    @Path('extension') required String extensionValue,
  });
}
