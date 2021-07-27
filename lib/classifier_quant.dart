import 'package:Meatalyzer_app/classifier.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
class ClassifierQuant extends Classifier {
  var mN;
  var lN;
  double second;
  double first;
  ClassifierQuant({int numThreads: 1,this.mN:'',this.lN:'',required this.first,required this.second}) : super(numThreads: numThreads);

  @override
  String get modelName => mN;

  @override
  String get labelsFileName => lN;

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(first, second);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 255);
}
