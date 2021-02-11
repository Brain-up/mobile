import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for ExerciseControllerApi
void main() {
  var instance = new ExerciseControllerApi();

  group('tests for ExerciseControllerApi', () {
    // Get exercise by id.
    //
    //Future<BaseSingleObjectResponseDto> getExercisesByIDUsingGET(int exerciseId) async
    test('test getExercisesByIDUsingGET', () async {
      // TODO
    });

    // Get available exercise ids for current user by input ids which have same subGroup.
    //
    //Future<BaseResponseDto> getExercisesByIdsUsingPOST(ExerciseRequest body) async
    test('test getExercisesByIdsUsingPOST', () async {
      // TODO
    });

    // Get subGroup exercises for current user with availability calculation.
    //
    //Future<BaseResponseDto> getExercisesBySubGroupUsingGET(int subGroupId) async
    test('test getExercisesBySubGroupUsingGET', () async {
      // TODO
    });

  });
}
