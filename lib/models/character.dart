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
