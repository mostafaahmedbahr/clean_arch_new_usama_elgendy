import 'package:dartz/dartz.dart';

import '../errors/error.dart';


abstract class UseCaseWithParam<Type , Param>
{
  Future<Either< Errors, Type>> call(Param param);
}