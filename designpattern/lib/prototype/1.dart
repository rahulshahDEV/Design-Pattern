import 'package:flutter/material.dart';

@immutable
class Prototype {
  final int id;
  final String name;
  final String address;
  const Prototype(
      {required this.address, required this.id, required this.name});

  Prototype copyWith({int? id, String? name, String? address}) {
    return Prototype(
        address: address ?? this.address,
        id: id ?? this.id,
        name: name ?? this.name);
  }
}

void main() {
  Prototype obj = Prototype(address: 'Kathmandu', id: 12, name: 'Rahul Shah');
  print(obj.address);
  Prototype clone = Prototype(address: 'rajbiraj', id: 20, name: 'mango')
      .copyWith(address: "Kathmandu");
  print(clone.address);
}
