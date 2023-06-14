import 'package:flutter/cupertino.dart';

class Carro {
  final int id;
  final String brand;
  final String model;
  final DateTime dateTime;
  final String description;

  Carro({
    required this.id,
    required this.brand,
    required this.model,
    required this.dateTime,
    required this.description,
  });
}


class Calificaciones {
  final int id;
  final String partial;
  final String level;
  final DateTime savedDate;
  final String course;

  Calificaciones({
    required this.id,
    required this.partial,
    required this.level,
    required this.savedDate,
    required this.course,
  });
}

class Estudiante {
  final int id;
  final String name;
  final String lastname;
  final DateTime birth_date;
  final String observations;

  Estudiante({
    required this.id,
    required this.name,
    required this.lastname,
    required this.birth_date,
    required this.observations,
  });
}


class Cities {
  final int id;
  final String name;
  final int population;
  final DateTime foundationDate;

  Cities({
    required this.id,
    required this.name,
    required this.population,
    required this.foundationDate,

  });
}


class Animal {
  final int id;
  final String type;
  final int age;
  final String image;

  Animal({
    required this.id,
    required this.type,
    required this.age,
    required this.image,

  });
}

class Users {
  final int id;
  final String nickname;
  final DateTime createdAt;
  final String profileImage;

  Users({
    required this.id,
    required this.nickname,
    required this.createdAt,
    required this.profileImage,

  });
}


class Routes {
  final int id;
  final String neighborhood;
  final int frequency;
  final String image;

  Routes({
    required this.id,
    required this.neighborhood,
    required this.frequency,
    required this.image,
  });
}







