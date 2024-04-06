abstract class AppRoute {
  static const String homePage = '/';

  //*******************  Error *********************/
  static const String error = '/error';

  //*******************  Auth *********************/
  static const String register = '/register';
  static const String checkEmail = '/checkemail';
  static const String verifyCode = '/verifycode';
  static const String login = '/login';
  static const String successLogin = '/SuccessLogin';
  static const String forgotPassword = '/forgotpassword';
  static const String resetPassword = '/resetpassword';
  static const String registerServiceProvider = '/registerServiceProvider';

  //*******************  Profile *********************/
  static const String profile = '/profile';
  static const String setting = '/setting';

  //*******************  Categories *********************/
  static const String categories = '/categories';
  static const String hospital = '/hospital';
  static const String pharmacies = '/pharmacies';
  static const String labs = '/labs';
  static const String clinic = '/clinic';
  static const String doctor = '/doctor';
  static const String productsBooking = '/productsbooking';
  static const String servicesBooking = '/servicesbooking';
  static const String detailsService = '/DetailsService';

  //*******************  Doctors *********************/
  static const String dentisry = '/dentisry';
  static const String optical = '/optical';
  static const String availableDoctors = '/availabledoctors';
  static const String doctorBook = '/doctorbook';
  static const String doctorAppointment = '/doctorappointment';
  static const String serviceAppoitment = '/serviceappoitment';
  static const String mySchedule = '/myschedule';

  //*******************  State Booking *********************/
  static const String stateBooking = '/statebooking';
  static const String editingServices = '/editingServices';
  static const String editingProducts = '/editingProducts';
  static const String addService = '/AddService';
  static const String addProduct = '/addProduct';
}
