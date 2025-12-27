class ApiClinet {
  static final ApiClinet instance = ApiClinet();

  final String baseUrl =
      "https://supermoral-raymond-nonirradiated.ngrok-free.dev";
  final String registerEndpoint = "/api/register";
  final String loginEndpoint = "/api/login";
  final String logoutEndpoint = "/api/logout";
}
