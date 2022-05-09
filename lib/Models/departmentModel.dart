import 'package:flutter/cupertino.dart';

class departmentModel {
  int idDepartment;
  String nama;
  String foto;
  String createdAt;
  String updatedAt;
  
  departmentModel({
    required this.idDepartment,
    required this.nama,
    required this.foto,
    required this.createdAt,
    required this.updatedAt
  });

  factory departmentModel.fromJson(Map<String, dynamic>json) => departmentModel(
    idDepartment: json["idDepartment"], 
    nama: json["nama"], 
    foto: json["foto"], 
    createdAt: json["createdAt"], 
    updatedAt: json["updatedAt"]
  );
}