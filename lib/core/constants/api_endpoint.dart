class ApiEndpoint {
  static const String apiBaseUrl = "YOUR_HOST_API";

  // Authentication Endpoints

  static const String login = "${apiBaseUrl}auth/login";
  static const String signup = "${apiBaseUrl}auth/register";
  static const String refreshToken = "${apiBaseUrl}auth/refresh";

  // User Endpoints

  static const String userProfile = "${apiBaseUrl}me";
  static const String userNotifications = "${apiBaseUrl}me/notifications";
  static const String readAllNotifications =
      "${apiBaseUrl}me/notifications/read-all";

  //catagory
  static const String allCategories = "${apiBaseUrl}categories";
  // listing

  static const String allListings = "${apiBaseUrl}listings";
  static const String userListing = "${apiBaseUrl}listings/mine";

  //Request

  static const String order = "${apiBaseUrl}requests";
  static const String orderIncome = "${apiBaseUrl}requests/incoming";
  static const String orderOut = "${apiBaseUrl}requests/outgoing";
  // Chate
  static const String message = "${apiBaseUrl}messages";
}
