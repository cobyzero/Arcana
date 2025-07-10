class ResponseModel {
  final String message;
  final bool success;
  final dynamic data;

  ResponseModel({required this.message, required this.success, this.data});

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      message: json['message'] is List ? json['message'][0] : json['message'],
      success: json['success'] ?? false,
      data: json['data'],
    );
  }
}
