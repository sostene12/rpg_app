import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {
  // constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
  });

  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  // getters
  bool get isFav => _isFav;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }

  // characters to firestore (map)
  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'slogan': slogan,
      'isFav': _isFav,
      'vocation': vocation.toString(),
      'skills': skills.map((skill) => skill.id).toList(),
      'stats': statsAsMap,
      'points': points,
    };
  }

  // characters from firestore (factory)
  factory Character.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    // get data from snapshot
    final data = snapshot.data()!;

    // make character instance
    Character character = new Character(
      name: data['name'],
      slogan: data['slogan'],
      id: snapshot.id,
      vocation: Vocation.values.firstWhere(
        (v) => v.toString() == data['vocation'],
      ),
    );

    // update skills
    for (String id in data['skills']) {
      Skill skill = allSkills.firstWhere((element) => element.id == id);
      character.updateSkill(skill);
    }

    // set isFav
    if (data['isFav'] == true) {
      character.toggleIsFav();
    }

    // Assign stats & points
    character.setStats(points: data['points'], stats: data['stats']);

    return character;
  }
}

// dummy character data

List<Character> characters = [
  Character(
    name: 'Klara',
    slogan: 'Kapmuf',
    vocation: Vocation.wizard,
    id: '1',
  ),
  Character(
    name: 'Mage',
    slogan: 'Knowledge is power!',
    vocation: Vocation.junkie,
    id: '2',
  ),
  Character(
    name: 'Rogue',
    slogan: 'Silence is golden.',
    vocation: Vocation.ninja,
    id: '3',
  ),
  Character(
    name: 'Rogue',
    slogan: 'Silence is golden.',
    vocation: Vocation.raider,
    id: '4',
  ),
];
