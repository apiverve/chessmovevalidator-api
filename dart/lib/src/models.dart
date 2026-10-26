/// Response models for the Chess Move Validator API.

/// API Response wrapper.
class ChessmovevalidatorResponse {
  final String status;
  final dynamic error;
  final ChessmovevalidatorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ChessmovevalidatorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ChessmovevalidatorResponse.fromJson(Map<String, dynamic> json) => ChessmovevalidatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ChessmovevalidatorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Chess Move Validator API.

class ChessmovevalidatorData {
  String? move;
  bool? valid;
  String? type;
  String? piece;
  bool? capture;
  bool? check;
  bool? checkmate;
  bool? promotion;

  ChessmovevalidatorData({
    this.move,
    this.valid,
    this.type,
    this.piece,
    this.capture,
    this.check,
    this.checkmate,
    this.promotion,
  });

  factory ChessmovevalidatorData.fromJson(Map<String, dynamic> json) => ChessmovevalidatorData(
      move: json['move'],
      valid: json['valid'],
      type: json['type'],
      piece: json['piece'],
      capture: json['capture'],
      check: json['check'],
      checkmate: json['checkmate'],
      promotion: json['promotion'],
    );
}

class ChessmovevalidatorRequest {
  String move;

  ChessmovevalidatorRequest({
    required this.move,
  });

  Map<String, dynamic> toJson() => {
      'move': move,
    };
}
