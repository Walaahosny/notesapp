/*
* the first step to use hive local database and use object
* install package
* then add extend HiveObject then detect typeId for class
*and detect id for each field in class
* note be careful id is unique for each class and each filed have different id
*then write part"as import" to write in the file you will generate 'nameoffile.g.dart' and you should write the name of file true
*as i said make typeAdapter for model and  part 'notes_model.g.dart' ;
; is he name of file
* this attention @HiveType(typeId: 0)  said to package of build runner this place has  code will  be generate
* and the write this command in terminal flutter packages pub run build_runner build
*then go to main file to main file to initialize Hive and make box of hive to store data "use openbox and detect name of it as constant"
* */
import 'package:hive/hive.dart';
part 'notes_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  late final String title;
  @HiveField(1)
  late final String subtitle;
  @HiveField(2)
  late final String date;
  @HiveField(3)
  late final int color;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
