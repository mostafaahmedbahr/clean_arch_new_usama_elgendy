import 'package:dartz/dartz.dart';

import '../errors/error.dart';


abstract class UseCaseWithNoParam<Type>
{
  Future<Either< Errors, Type>> call();
}