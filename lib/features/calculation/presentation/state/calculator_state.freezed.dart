// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculatorState {
  String get equation => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  String get expression => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorStateCopyWith<CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res, CalculatorState>;
  @useResult
  $Res call({String equation, String result, String expression});
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res, $Val extends CalculatorState>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equation = null,
    Object? result = null,
    Object? expression = null,
  }) {
    return _then(_value.copyWith(
      equation: null == equation
          ? _value.equation
          : equation // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      expression: null == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculatorStateCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$$_CalculatorStateCopyWith(
          _$_CalculatorState value, $Res Function(_$_CalculatorState) then) =
      __$$_CalculatorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String equation, String result, String expression});
}

/// @nodoc
class __$$_CalculatorStateCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$_CalculatorState>
    implements _$$_CalculatorStateCopyWith<$Res> {
  __$$_CalculatorStateCopyWithImpl(
      _$_CalculatorState _value, $Res Function(_$_CalculatorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equation = null,
    Object? result = null,
    Object? expression = null,
  }) {
    return _then(_$_CalculatorState(
      equation: null == equation
          ? _value.equation
          : equation // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      expression: null == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CalculatorState implements _CalculatorState {
  const _$_CalculatorState(
      {this.equation = '0', this.result = '0', this.expression = ''});

  @override
  @JsonKey()
  final String equation;
  @override
  @JsonKey()
  final String result;
  @override
  @JsonKey()
  final String expression;

  @override
  String toString() {
    return 'CalculatorState(equation: $equation, result: $result, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculatorState &&
            (identical(other.equation, equation) ||
                other.equation == equation) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.expression, expression) ||
                other.expression == expression));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equation, result, expression);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatorStateCopyWith<_$_CalculatorState> get copyWith =>
      __$$_CalculatorStateCopyWithImpl<_$_CalculatorState>(this, _$identity);
}

abstract class _CalculatorState implements CalculatorState {
  const factory _CalculatorState(
      {final String equation,
      final String result,
      final String expression}) = _$_CalculatorState;

  @override
  String get equation;
  @override
  String get result;
  @override
  String get expression;
  @override
  @JsonKey(ignore: true)
  _$$_CalculatorStateCopyWith<_$_CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
