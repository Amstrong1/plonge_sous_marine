import 'package:v1/model/folder.dart';
import 'package:v1/model/species.dart';
import 'package:v1/model/material.dart';
import 'package:v1/model/equipment.dart';
import 'package:v1/model/participant.dart';
import 'package:v1/model/center_view.dart';
import 'package:v1/model/exploration.dart';
import 'package:v1/model/diving_log.dart';
import 'package:v1/model/diving_materials.dart';
import 'package:v1/model/person.dart';

const dummyMaterials = [
  Equipment(
    id: 'c1',
    title: 'Masque de plongé',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  Equipment(
    id: 'c2',
    title: 'Quick & Easy',
    imageAsset: 'assets/images/fish1.jpg',
  ),
  Equipment(
    id: 'c3',
    title: 'Bonbone d\'oxygène et lunettes de plongé',
    imageAsset: 'assets/images/plonge.jpg',
  )
];

const dummyParticipants = [
  Participant(
    id: 'p1',
    name: 'Louis de Funes',
  ),
  Participant(
    id: 'p2',
    name: 'Ali Baba',
  ),
  Participant(
    id: 'p3',
    name: 'Denzel Washington',
  )
];

const dummyPictures = [
  CenterView(
    id: 'c1',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  CenterView(
    id: 'c2',
    imageAsset: 'assets/images/fish2.jpg',
  ),
  CenterView(
    id: 'c3',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  CenterView(
    id: 'c4',
    imageAsset: 'assets/images/fish3.jpg',
  ),
  CenterView(
    id: 'c5',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  CenterView(
    id: 'c6',
    imageAsset: 'assets/images/fish2.jpg',
  ),
  CenterView(
    id: 'c7',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  CenterView(
    id: 'c8',
    imageAsset: 'assets/images/fish3.jpg',
  )
];

const dummySpecies = [
  Species(
    id: 'c1',
    name: 'Poisson 1',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  Species(
    id: 'c2',
    name: 'Poisson 2',
    imageAsset: 'assets/images/fish2.jpg',
  ),
  Species(
    id: 'c3',
    name: 'Poisson 3',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  Species(
    id: 'c4',
    name: 'Poisson 4',
    imageAsset: 'assets/images/fish3.jpg',
  )
];

const List<Exploration> dummyExploration = [
  Exploration(
    id: 'e1',
    member: 'John Doe',
    center: 'Neuilly sur seine',
    date: '01-01-1970',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  Exploration(
    id: 'e1',
    member: 'John Doe',
    center: 'Neuilly sur seine',
    date: '01-01-1970',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  Exploration(
    id: 'e1',
    member: 'John Doe',
    center: 'Neuilly sur seine',
    date: '01-01-1970',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  Exploration(
    id: 'e1',
    member: 'John Doe',
    center: 'Nice',
    date: '01-01-1970',
    imageAsset: 'assets/images/plonge.jpg',
  ),
];

const dummyExplorationMaterial = [
  Material(
    id: 'c1',
    member: 'John Doe',
    name: 'Masque de plongé',
    price: '10 €',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  Material(
    id: 'c2',
    member: 'John Doe',
    name: 'Quick & Easy',
    price: '10 €',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  Material(
    id: 'c3',
    member: 'John Doe',
    name: 'Bonbone d\'oxygène',
    price: '10 €',
    imageAsset: 'assets/images/plonge.jpg',
  )
];

List<Folder> dummyFolder = [
  Folder(
    id: 'c1',
    name: 'Masque de plongé',
    images: [
      'assets/images/plonge.jpg',
      'assets/images/fish1.jpg',
      'assets/images/plonge.jpg',
      'assets/images/fish1.jpg'
    ],
  ),
  Folder(
    id: 'c2',
    name: 'Quick & Easy',
    images: ['assets/images/plonge.jpg'],
  ),
];

const divingLog = [
  DivingLog(
    id: 'c1',
    location: 'John Doe',
    date: '01-01-1972',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  DivingLog(
    id: 'c2',
    location: 'John Doe',
    date: '01-01-1972',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  DivingLog(
    id: 'c3',
    location: 'John Doe',
    date: '01-01-1972',
    imageAsset: 'assets/images/plonge.jpg',
  )
];

const divingMaterialList = [
  MaterialList(
    id: 'c1',
    name: 'John Doe',
    price: '10 €',
    description: '01-01-1972',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  MaterialList(
    id: 'c1',
    name: 'John Doe',
    price: '10 €',
    description: '01-01-1972',
    imageAsset: 'assets/images/plonge.jpg',
  ),
  MaterialList(
    id: 'c1',
    name: 'John Doe',
    price: '10 €',
    description: '01-01-1972',
    imageAsset: 'assets/images/plonge.jpg',
  )
];

final List<Person> persons = [
  Person('John Doe'),
  Person('Jane Smith'),
  Person('Bob Johnson'),
  Person('Alice Brown'),
  Person('Jane Doe'),
];
