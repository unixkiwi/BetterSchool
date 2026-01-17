// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_client.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _SchoolClient implements SchoolClient {
  _SchoolClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<PutSchoolResponse> schoolUpdate({
    required String name,
    required String email,
    required String street,
    required String streetNr,
    required String postalCode,
    required String city,
    required String state,
    required String adminName,
    required String adminEmail,
    required String headteacherName,
    bool? customer,
    String? type,
    String? postalSecondLine,
    String? billingName,
    String? billingPostalSecondLine,
    String? billingStreet,
    String? billingStreetNr,
    String? billingPostalCode,
    String? billingCity,
    List<String>? modules,
    File? logo,
    String? logoUrl,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('name', name));
    _data.fields.add(MapEntry('email', email));
    _data.fields.add(MapEntry('street', street));
    _data.fields.add(MapEntry('street_nr', streetNr));
    _data.fields.add(MapEntry('postal_code', postalCode));
    _data.fields.add(MapEntry('city', city));
    _data.fields.add(MapEntry('state', state));
    _data.fields.add(MapEntry('admin_name', adminName));
    _data.fields.add(MapEntry('admin_email', adminEmail));
    _data.fields.add(MapEntry('headteacher_name', headteacherName));
    if (customer != null) {
      _data.fields.add(MapEntry('customer', customer.toString()));
    }
    if (type != null) {
      _data.fields.add(MapEntry('type', type));
    }
    if (postalSecondLine != null) {
      _data.fields.add(MapEntry('postal_second_line', postalSecondLine));
    }
    if (billingName != null) {
      _data.fields.add(MapEntry('billing_name', billingName));
    }
    if (billingPostalSecondLine != null) {
      _data.fields.add(
        MapEntry('billing_postal_second_line', billingPostalSecondLine),
      );
    }
    if (billingStreet != null) {
      _data.fields.add(MapEntry('billing_street', billingStreet));
    }
    if (billingStreetNr != null) {
      _data.fields.add(MapEntry('billing_street_nr', billingStreetNr));
    }
    if (billingPostalCode != null) {
      _data.fields.add(MapEntry('billing_postal_code', billingPostalCode));
    }
    if (billingCity != null) {
      _data.fields.add(MapEntry('billing_city', billingCity));
    }
    modules?.forEach((i) {
      _data.fields.add(MapEntry('modules', i));
    });
    if (logo != null) {
      _data.files.add(
        MapEntry(
          'logo',
          MultipartFile.fromFileSync(
            logo.path,
            filename: logo.path.split(Platform.pathSeparator).last,
          ),
        ),
      );
    }
    if (logoUrl != null) {
      _data.fields.add(MapEntry('logo_url', logoUrl));
    }
    final _options = _setStreamType<PutSchoolResponse>(
      Options(
            method: 'PUT',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/school',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late PutSchoolResponse _value;
    try {
      _value = PutSchoolResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<GetSchoolResponse> schoolShow() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GetSchoolResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/school',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late GetSchoolResponse _value;
    try {
      _value = GetSchoolResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PostSchoolUsersResponse> schoolAddUser() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<PostSchoolUsersResponse>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/school/users',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late PostSchoolUsersResponse _value;
    try {
      _value = PostSchoolUsersResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> schoolRemoveUser({required int user}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/school/users/${user}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<GetSchoolsResponse> schoolsIndex() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GetSchoolsResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/schools',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late GetSchoolsResponse _value;
    try {
      _value = GetSchoolsResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PostSchoolsResponse> schoolsStore({
    required String name,
    required String email,
    required String street,
    required String streetNr,
    required String postalCode,
    required String city,
    required String state,
    required List<String> modules,
    required String adminName,
    required String adminEmail,
    required String headteacherName,
    bool? customer,
    String? type,
    String? postalSecondLine,
    String? billingName,
    String? billingPostalSecondLine,
    String? billingStreet,
    String? billingStreetNr,
    String? billingPostalCode,
    String? billingCity,
    File? logo,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('name', name));
    _data.fields.add(MapEntry('email', email));
    _data.fields.add(MapEntry('street', street));
    _data.fields.add(MapEntry('street_nr', streetNr));
    _data.fields.add(MapEntry('postal_code', postalCode));
    _data.fields.add(MapEntry('city', city));
    _data.fields.add(MapEntry('state', state));
    modules.forEach((i) {
      _data.fields.add(MapEntry('modules', i));
    });
    _data.fields.add(MapEntry('admin_name', adminName));
    _data.fields.add(MapEntry('admin_email', adminEmail));
    _data.fields.add(MapEntry('headteacher_name', headteacherName));
    if (customer != null) {
      _data.fields.add(MapEntry('customer', customer.toString()));
    }
    if (type != null) {
      _data.fields.add(MapEntry('type', type));
    }
    if (postalSecondLine != null) {
      _data.fields.add(MapEntry('postal_second_line', postalSecondLine));
    }
    if (billingName != null) {
      _data.fields.add(MapEntry('billing_name', billingName));
    }
    if (billingPostalSecondLine != null) {
      _data.fields.add(
        MapEntry('billing_postal_second_line', billingPostalSecondLine),
      );
    }
    if (billingStreet != null) {
      _data.fields.add(MapEntry('billing_street', billingStreet));
    }
    if (billingStreetNr != null) {
      _data.fields.add(MapEntry('billing_street_nr', billingStreetNr));
    }
    if (billingPostalCode != null) {
      _data.fields.add(MapEntry('billing_postal_code', billingPostalCode));
    }
    if (billingCity != null) {
      _data.fields.add(MapEntry('billing_city', billingCity));
    }
    if (logo != null) {
      _data.files.add(
        MapEntry(
          'logo',
          MultipartFile.fromFileSync(
            logo.path,
            filename: logo.path.split(Platform.pathSeparator).last,
          ),
        ),
      );
    }
    final _options = _setStreamType<PostSchoolsResponse>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'multipart/form-data',
          )
          .compose(
            _dio.options,
            '/schools',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late PostSchoolsResponse _value;
    try {
      _value = PostSchoolsResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<String> schoolGetLogo0() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<String>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/school/logo',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<String>(_options);
    late String _value;
    try {
      _value = _result.data!;
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<String> schoolGetLogoWithExtension({
    required String extensionValue,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<String>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/school/logo.${extensionValue}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<String>(_options);
    late String _value;
    try {
      _value = _result.data!;
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
