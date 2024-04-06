import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:med_sal/core/constant/app_routes.dart';
import 'package:med_sal/view/screen/auth/register_service_provider/register_service_provider.dart';
import 'package:med_sal/view/screen/auth/check_email_page.dart';
import 'package:med_sal/view/screen/auth/forgot_password.dart';
import 'package:med_sal/view/screen/auth/login.dart';
import 'package:med_sal/view/screen/auth/reset_password.dart';
import 'package:med_sal/view/screen/state_booking/add_product.dart';
import 'package:med_sal/view/screen/state_booking/add_service.dart';
import 'package:med_sal/view/screen/state_booking/editing_products.dart';
import 'package:med_sal/view/screen/state_booking/editing_services.dart';
import 'package:med_sal/view/screen/state_booking/state_booking.dart';
import 'package:med_sal/view/screen/auth/success_login.dart';
import 'package:med_sal/view/screen/categories/categories.dart';
import 'package:med_sal/view/screen/categories/clinic_page.dart';
import 'package:med_sal/view/screen/categories/details_service.dart';
import 'package:med_sal/view/screen/categories/services_booking.dart';
import 'package:med_sal/view/screen/doctors/available_doctors.dart';
import 'package:med_sal/view/screen/doctors/dentisry_page.dart';
import 'package:med_sal/view/screen/doctors/doctor_appointment.dart';
import 'package:med_sal/view/screen/doctors/doctor_book_page.dart';
import 'package:med_sal/view/screen/doctors/doctor_page.dart';
import 'package:med_sal/view/screen/categories/hospital_page.dart';
import 'package:med_sal/view/screen/categories/labs_page.dart';
import 'package:med_sal/view/screen/categories/pharmacy_page.dart';
import 'package:med_sal/view/screen/doctors/my_schedule_page.dart';
import 'package:med_sal/view/screen/doctors/optical_page.dart';
import 'package:med_sal/view/screen/doctors/service_appoitment.dart';
import 'package:med_sal/view/screen/error_page.dart';
import 'package:med_sal/view/screen/homepage/homepage.dart';
import 'package:med_sal/view/screen/auth/register.dart';
import 'package:med_sal/view/screen/auth/verify_code.dart';
import 'package:med_sal/view/screen/categories/products_booking.dart';
import 'package:med_sal/view/screen/profile/profile.dart';
import 'package:med_sal/view/screen/profile/setting_page.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRoute.homePage, page: () => const HomePage()),

  //*****************************  Error ********************************/
  GetPage(name: AppRoute.error, page: () => const ErrorPage()),

  //*****************************  Auth ********************************/
  GetPage(name: AppRoute.register, page: () => const RegisterPage()),
  GetPage(name: AppRoute.checkEmail, page: () => const CheckEmail()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.successLogin, page: () => const SuccessLogin()),
  GetPage(name: AppRoute.forgotPassword, page: () => const ForgotPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.registerServiceProvider,
      page: () => const RegisterServiceProvider()),

  //************************  Profile ****************************/
  GetPage(name: AppRoute.profile, page: () => const ProfilePage()),
  GetPage(name: AppRoute.setting, page: () => const SettingPage()),

  //************************  Categories ****************************/
  GetPage(name: AppRoute.categories, page: () => const CategoriesPage()),
  GetPage(name: AppRoute.hospital, page: () => const HospitalPage()),
  GetPage(name: AppRoute.labs, page: () => const LabsPage()),
  GetPage(name: AppRoute.pharmacies, page: () => const PharmaciesPage()),
  GetPage(name: AppRoute.clinic, page: () => const ClinicPage()),
  GetPage(name: AppRoute.doctor, page: () => const DoctorPage()),
  GetPage(name: AppRoute.productsBooking, page: () => const ProductsBooking()),
  GetPage(name: AppRoute.servicesBooking, page: () => const ServicesBooking()),
  GetPage(name: AppRoute.detailsService, page: () => const DetailsService()),

  //************************  Doctors ****************************/
  GetPage(name: AppRoute.dentisry, page: () => const DentisryPage()),
  GetPage(name: AppRoute.optical, page: () => const OpticalPage()),
  GetPage(
      name: AppRoute.availableDoctors,
      page: () => const AvailableDoctorsPage()),
  GetPage(name: AppRoute.doctorBook, page: () => const DoctorBookPage()),
  GetPage(
      name: AppRoute.doctorAppointment, page: () => const DoctorAppointment()),
  GetPage(
      name: AppRoute.serviceAppoitment,
      page: () => const ServiceAppoitmentPage()),
  GetPage(name: AppRoute.mySchedule, page: () => const MySchedulePage()),

  //************************  State Booking ****************************/
  GetPage(name: AppRoute.stateBooking, page: () => const StateBookingPage()),
  GetPage(name: AppRoute.editingServices, page: () => const EditingServices()),
  GetPage(name: AppRoute.editingProducts, page: () => const EditingProducts()),
  GetPage(name: AppRoute.addService, page: () => const AddServicePage()),
  GetPage(name: AppRoute.addProduct, page: () => const AddProductPage()),
];
