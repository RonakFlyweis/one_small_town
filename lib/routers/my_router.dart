import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:training_app/models/sign_up.dart';
import 'package:training_app/ui/accept_screen.dart';
import 'package:training_app/ui/accept_terms.dart';
import 'package:training_app/ui/bankdetails_screen.dart';
import 'package:training_app/ui/council/council_screen.dart';
import 'package:training_app/ui/council/voting_election.dart';
import 'package:training_app/ui/council/womens_council.dart';
import 'package:training_app/ui/feedback.dart';
import 'package:training_app/ui/forgetpswd.dart';
import 'package:training_app/ui/home_details/calender_all/app_telemetry.dart';
import 'package:training_app/ui/home_details/calender_all/cal_company.dart';
import 'package:training_app/ui/home_details/calender_all/dividends.dart';
import 'package:training_app/ui/home_details/calender_all/sales_details.dart';
import 'package:training_app/ui/home_details/calender_all/team_roles.dart';
import 'package:training_app/ui/home_details/home_screen.dart';
import 'package:training_app/ui/home_details/overview_screen.dart';
import 'package:training_app/ui/home_details/wallet.dart';
import 'package:training_app/ui/job_board/permanent_screen.dart';
import 'package:training_app/ui/job_board/voluntary_screen.dart';
import 'package:training_app/ui/job_board/welcome_user.dart';
import 'package:training_app/ui/login_screen.dart';
import 'package:training_app/ui/menu/help_screen.dart';
import 'package:training_app/ui/menu/home_menu.dart';
import 'package:training_app/ui/otp_screen.dart';
import 'package:training_app/ui/patrion_screen.dart';
import 'package:training_app/ui/privacy_policy.dart';
import 'package:training_app/ui/salary_slip.dart';
import 'package:training_app/ui/setting/faq_screen.dart';
import 'package:training_app/ui/setting/settings.dart';
import 'package:training_app/ui/signup_screen.dart';
import 'package:training_app/ui/skills_ability.dart';
import 'package:training_app/ui/skills_capable.dart';
import 'package:training_app/ui/skills_interested.dart';

import 'package:training_app/ui/splash_screen.dart';
import 'package:training_app/ui/termsncond.dart';
import 'package:training_app/ui/welcome_screen.dart';

SignUp signUp = SignUp();

class MyRouter {
  static var welcomeScreen = "/welcomeScreen";
  static var loginScreen = "/loginScreen";
  static var signupScreen = "/signupScreen";
  static var patrionScreen = "/patrionScreen";
  static var bankDetails = "/bankDetails";
  static var abilityScreen = "/abilityScreen";
  static var skillsInterested = "/skillsInterested";
  static var skillsCapable = "/skillsCapable";
  static var acceptTnC = "/acceptTnC";
  static var termsAccept = "/termsAccept";
  static var overview = "/overview";
  static var menuHome = "/menuHome";
  static var companyDetails = "/companyDetails";
  static var salesDetail = "/salesDetail";
  static var dividends = "/dividends";
  static var teamRoles = "/teamRoles";
  static var appTelemetry = "/appTelemetry";
  static var welcomeUser = "/welcomeUser";
  static var volunteerWork = "/volunteerWork";
  static var permanentJob = "/permanentJob";
  static var wallet = "/wallet";
  static var salarySlip = "/salarySlip";
  static var councilScreen = "/councilScreen";
  static var votingScreen = "/votingScreen";
  static var womensCouncil = "/womensCouncil";
  static var settings = "/settings";
  static var faqScreen = "/faqScreen";
  static var helpnSupport = "/helpnSupport";
  static var termsC = "/termsC";
  static var privacyPolicy = "/privacyPolicy";
  static var otpScreen = "/otpScreen";
  static var forgetPassword = "/forgetPassword";
  static var homeScreen = "/homeScreen";
  static var feedback = "/feedbackScreen";

  static var route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: MyRouter.welcomeScreen, page: () => WelcomeScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => LoginScreen()),
    GetPage(name: MyRouter.signupScreen, page: () => SignupScreen()),
    GetPage(name: MyRouter.patrionScreen, page: () => PatrionScreen()),
    GetPage(
        name: MyRouter.bankDetails, page: () => BankDetails(signUp: signUp)),
    GetPage(name: MyRouter.abilityScreen, page: () => AbilityScreen()),
    GetPage(name: MyRouter.skillsInterested, page: () => SkillsInterested()),
    GetPage(name: MyRouter.skillsCapable, page: () => SkillsCapable()),
    GetPage(name: MyRouter.acceptTnC, page: () => AcceptTnC()),
    GetPage(name: MyRouter.termsAccept, page: () => TermsAccept()),
    GetPage(name: MyRouter.overview, page: () => Overview()),
    GetPage(name: MyRouter.menuHome, page: () => MenuHome()),
    GetPage(name: MyRouter.companyDetails, page: () => CompanyDetails()),
    GetPage(name: MyRouter.salesDetail, page: () => SalesDetail()),
    GetPage(name: MyRouter.dividends, page: () => Dividends()),
    GetPage(name: MyRouter.teamRoles, page: () => TeamRoles()),
    GetPage(name: MyRouter.appTelemetry, page: () => AppTelemetry()),
    GetPage(name: MyRouter.welcomeUser, page: () => WelcomeUser()),
    GetPage(name: MyRouter.volunteerWork, page: () => VolunteerWork()),
    GetPage(name: MyRouter.permanentJob, page: () => PermanentJob()),
    GetPage(name: MyRouter.wallet, page: () => Wallet()),
    GetPage(name: MyRouter.salarySlip, page: () => SalarySlip()),
    GetPage(name: MyRouter.councilScreen, page: () => CouncilScreen()),
    GetPage(name: MyRouter.votingScreen, page: () => VotingScreen()),
    GetPage(name: MyRouter.womensCouncil, page: () => WomensCouncil()),
    GetPage(name: MyRouter.settings, page: () => Settings()),
    GetPage(name: MyRouter.faqScreen, page: () => FaqScreen()),
    GetPage(name: MyRouter.helpnSupport, page: () => HelpnSupport()),
    GetPage(name: MyRouter.termsC, page: () => TermsC()),
    GetPage(name: MyRouter.privacyPolicy, page: () => PrivacyPolicy()),
    GetPage(name: MyRouter.otpScreen, page: () => OtpScreen()),
    GetPage(name: MyRouter.forgetPassword, page: () => ForgetPassword()),
    GetPage(name: MyRouter.homeScreen, page: () => HomeScreen()),
    GetPage(name: MyRouter.feedback, page: () => FeedbackScreen()),
  ];
}
