class AppConstants{
  static const String APP_NAME="AMS";
  static const int APP_VERSION=1;

  static const String localIn="http://192.168.194.203:8080";
  //static const String localOffice="http://192.168.143.239:8080";
  static const String localOffice="http://localhost:8080";
  static const String remote="https://iap.besheger.com";



  static const String BASE_URL=localOffice;


  //Audit Object
    static const String GET_AUDIT_OBJECT="/object/get";
    static const String ADD_AUDIT_OBJECT="/object/add";
    static const String UPDATE_AUDIT_OBJECT="/object/update";
    static const String DLETE_AUDIT_OBJECT="/object/delete";


// Annual Plan
    static const String GET_PLAN="/plan/get";
    static const String ADD_PLAN="/plan/add";
    static const String UPDATE_PLAN="/plan/update";
    static const String DELETE_PLAN="/plan/delete";
//Auditors
    static const String GET_AUDITOR="/auditor";
    static const String GET_AUDTEES="/engagement";
    static const String GET_REPORT="/plan";
    static const String GET_USER="/user";
//Orginizational units(OU)
  static const String GET_OU="/ou/get";
  static const String GET_RIKS_LEVEL="/setting/risk/get";
  static const String GET_AUDIT_YEAR="/setting/year/get";



}