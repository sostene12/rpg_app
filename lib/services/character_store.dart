import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';

class CharacterStore extends ChangeNotifier {
  final List<Character> _characters = [
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

  get characters => _characters;

  // add character
  void addCharacter(Character character) {
    _characters.add(character);
    notifyListeners();
  }

  // save(update) character

  // remove character

  // initially fetch characters
}
