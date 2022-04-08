class SignUp {
  late String title;
  late String firstName;
  late String secondName;
  late String lastname;
  late String dob;
  late String gender;
  late String idProof;
  late String physicalAddress;
  late String zipcode;
  late String city;
  late String state;
  late String addressProof;
  late String resume;
  late String number;
  late String email;
  late String education;
  late String bankName;
  late String accountName;
  late String sortCode;
  late String accountNumber;
  late List<String> skills;
  late List<String> performingOrLearningSkills;
  late List<String> capableSkills;
  late String password;

  display() {
    print(title + "\n");
    print(firstName + "\n");
    print(lastname + "\n");
    print(dob + "\n");
    print(gender + "\n");
    print(idProof + "\n");
    print(physicalAddress + "\n");
    print(zipcode + "\n");
    print(city + "\n");
    print(state + "\n");
    print(addressProof + "\n");
    print(resume + "\n");
    print(number + "\n");
    print(email + "\n");
    print(education + "\n");
    print(bankName + "\n");
    print(accountName + "\n");
    print(sortCode + "\n");
    print(accountNumber + "\n");
    print(skills.join(", ") + "\n");
    print(performingOrLearningSkills.join(", ") + "\n");
    print(capableSkills.join(", ") + "\n");
    print(password + "\n");
  }
}
