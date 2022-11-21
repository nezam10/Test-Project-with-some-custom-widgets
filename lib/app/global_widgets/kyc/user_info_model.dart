// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

KycHolder userDataFromJson(String str) => KycHolder.fromJson(json.decode(str));

String userDataToJson(KycHolder data) => json.encode(data.toJson());

class KycHolder {
  KycHolder({
    this.userId,
    this.surname,
    this.firstName,
    this.middleName,
    this.lastName,
    this.email,
    this.phone,
    this.nationalIdIssueCountry,
    this.foreignIdType,
    this.foreignId,
    this.dateOfBirth,
    this.gender,
    this.maritalStatus,
    this.residentialPhone,
    this.nationality,
    this.employerName,
    this.employerAddress,
    this.employerTelephone,
    this.occupation,
    this.pmCountry,
    this.pmCity,
    this.pmState,
    this.pmZipCode,
    this.pmAddressLine1,
    this.pmAddressLine2,
    this.pmAddressLine3,
    this.pmAddressProofFileType,
    this.shipCountry,
    this.shipCity,
    this.shipState,
    this.shipZipCode,
    this.shipAddressLine1,
    this.shipAddressLine2,
    this.shipAddressLine3,
    this.idCardDocFrontPage,
    this.idCardDocBackPage,
    this.addressDocPage,
  });

  final String? userId;
  final String? surname;
  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? nationalIdIssueCountry;
  final String? foreignIdType;
  final String? foreignId;
  final DateTime? dateOfBirth;
  final String? gender;
  final String? maritalStatus;
  final String? residentialPhone;
  final String? nationality;
  final String? employerName;
  final String? employerAddress;
  final String? employerTelephone;
  final String? occupation;
  final String? pmCountry;
  final String? pmCity;
  final String? pmState;
  final String? pmZipCode;
  final String? pmAddressLine1;
  final String? pmAddressLine2;
  final String? pmAddressLine3;
  final String? pmAddressProofFileType;
  final String? shipCountry;
  final String? shipCity;
  final String? shipState;
  final String? shipZipCode;
  final String? shipAddressLine1;
  final String? shipAddressLine2;
  final String? shipAddressLine3;
  final String? idCardDocFrontPage;
  final String? idCardDocBackPage;
  final String? addressDocPage;

  factory KycHolder.fromJson(Map<String, dynamic> json) => KycHolder(
        userId: json["user_id"] == null ? null : json["user_id"],
        surname: json["surname"] == null ? null : json["surname"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        middleName: json["middle_name"] == null ? null : json["middle_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        nationalIdIssueCountry: json["national_id_issue_country"] == null
            ? null
            : json["national_id_issue_country"],
        foreignIdType:
            json["foreign_id_type"] == null ? null : json["foreign_id_type"],
        foreignId: json["foreign_id"] == null ? null : json["foreign_id"],
        dateOfBirth: json["date_of_birth"] == null
            ? null
            : DateTime.parse(json["date_of_birth"]),
        gender: json["gender"] == null ? null : json["gender"],
        maritalStatus:
            json["marital_status"] == null ? null : json["marital_status"],
        residentialPhone: json["residential_phone"] == null
            ? null
            : json["residential_phone"],
        nationality: json["nationality"] == null ? null : json["nationality"],
        employerName:
            json["employer_name"] == null ? null : json["employer_name"],
        employerAddress:
            json["employer_address"] == null ? null : json["employer_address"],
        employerTelephone: json["employer_telephone"] == null
            ? null
            : json["employer_telephone"],
        occupation: json["occupation"] == null ? null : json["occupation"],
        pmCountry: json["pm_country"] == null ? null : json["pm_country"],
        pmCity: json["pm_city"] == null ? null : json["pm_city"],
        pmState: json["pm_state"] == null ? null : json["pm_state"],
        pmZipCode: json["pm_zip_code"] == null ? null : json["pm_zip_code"],
        pmAddressLine1:
            json["pm_address_line1"] == null ? null : json["pm_address_line1"],
        pmAddressLine2:
            json["pm_address_line2"] == null ? null : json["pm_address_line2"],
        pmAddressLine3:
            json["pm_address_line3"] == null ? null : json["pm_address_line3"],
        pmAddressProofFileType: json["pm_address_proof_file_type"] == null
            ? null
            : json["pm_address_proof_file_type"],
        shipCountry: json["ship_country"] == null ? null : json["ship_country"],
        shipCity: json["ship_city"] == null ? null : json["ship_city"],
        shipState: json["ship_state"] == null ? null : json["ship_state"],
        shipZipCode:
            json["ship_zip_code"] == null ? null : json["ship_zip_code"],
        shipAddressLine1: json["ship_address_line1"] == null
            ? null
            : json["ship_address_line1"],
        shipAddressLine2: json["ship_address_line2"] == null
            ? null
            : json["ship_address_line2"],
        shipAddressLine3: json["ship_address_line3"] == null
            ? null
            : json["ship_address_line3"],
        idCardDocFrontPage: json["id_card_doc_front_page"] == null
            ? null
            : json["id_card_doc_front_page"],
        idCardDocBackPage: json["id_card_doc_back_page"] == null
            ? null
            : json["id_card_doc_back_page"],
        addressDocPage:
            json["address_doc_page"] == null ? null : json["address_doc_page"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId == null ? null : userId,
        "surname": surname == null ? null : surname,
        "first_name": firstName == null ? null : firstName,
        "middle_name": middleName == null ? null : middleName,
        "last_name": lastName == null ? null : lastName,
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "national_id_issue_country":
            nationalIdIssueCountry == null ? null : nationalIdIssueCountry,
        "foreign_id_type": foreignIdType == null ? null : foreignIdType,
        "foreign_id": foreignId == null ? null : foreignId,
        "date_of_birth": dateOfBirth == null
            ? null
            : "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
        "gender": gender == null ? null : gender,
        "marital_status": maritalStatus == null ? null : maritalStatus,
        "residential_phone": residentialPhone == null ? null : residentialPhone,
        "nationality": nationality == null ? null : nationality,
        "employer_name": employerName == null ? null : employerName,
        "employer_address": employerAddress == null ? null : employerAddress,
        "employer_telephone":
            employerTelephone == null ? null : employerTelephone,
        "occupation": occupation == null ? null : occupation,
        "pm_country": pmCountry == null ? null : pmCountry,
        "pm_city": pmCity == null ? null : pmCity,
        "pm_state": pmState == null ? null : pmState,
        "pm_zip_code": pmZipCode == null ? null : pmZipCode,
        "pm_address_line1": pmAddressLine1 == null ? null : pmAddressLine1,
        "pm_address_line2": pmAddressLine2 == null ? null : pmAddressLine2,
        "pm_address_line3": pmAddressLine3 == null ? null : pmAddressLine3,
        "pm_address_proof_file_type":
            pmAddressProofFileType == null ? null : pmAddressProofFileType,
        "ship_country": shipCountry == null ? null : shipCountry,
        "ship_city": shipCity == null ? null : shipCity,
        "ship_state": shipState == null ? null : shipState,
        "ship_zip_code": shipZipCode == null ? null : shipZipCode,
        "ship_address_line1":
            shipAddressLine1 == null ? null : shipAddressLine1,
        "ship_address_line2":
            shipAddressLine2 == null ? null : shipAddressLine2,
        "ship_address_line3":
            shipAddressLine3 == null ? null : shipAddressLine3,
        "id_card_doc_front_page":
            idCardDocFrontPage == null ? null : idCardDocFrontPage,
        "id_card_doc_back_page":
            idCardDocBackPage == null ? null : idCardDocBackPage,
        "address_doc_page": addressDocPage == null ? null : addressDocPage,
      };
}
