/// Response models for the Chess Move Validator API.

/// API Response wrapper.
class ChessmovevalidatorResponse {
  final String status;
  final dynamic error;
  final ChessmovevalidatorData? data;

  ChessmovevalidatorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ChessmovevalidatorResponse.fromJson(Map<String, dynamic> json) => ChessmovevalidatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ChessmovevalidatorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
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
