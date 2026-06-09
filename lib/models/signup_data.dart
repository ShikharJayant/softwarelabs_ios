class SignupData {
  // Step 1
  String fullName;
  String email;
  String phoneNumber;
  String password;

  // Step 2
  String businessName;
  String informalName;
  String address;
  String city;
  String state;
  String zipCode;

  // Step 3
  String? verificationFilePath;

  // Step 4
  List<String> selectedDays;
  String startTime;
  String endTime;

  SignupData({
    this.fullName = '',
    this.email = '',
    this.phoneNumber = '',
    this.password = '',
    this.businessName = '',
    this.informalName = '',
    this.address = '',
    this.city = '',
    this.state = '',
    this.zipCode = '',
    this.verificationFilePath,
    this.selectedDays = const [],
    this.startTime = '',
    this.endTime = '',
  });
}