// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationsLoading value)?  specializationsLoading,TResult Function( SpecializationsLoaded value)?  specializationsLoaded,TResult Function( SpecializationsFailed value)?  specializationsFailed,TResult Function( DoctorsLoaded value)?  doctorsLoaded,TResult Function( DoctorsFailed value)?  doctorsFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading(_that);case SpecializationsLoaded() when specializationsLoaded != null:
return specializationsLoaded(_that);case SpecializationsFailed() when specializationsFailed != null:
return specializationsFailed(_that);case DoctorsLoaded() when doctorsLoaded != null:
return doctorsLoaded(_that);case DoctorsFailed() when doctorsFailed != null:
return doctorsFailed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationsLoading value)  specializationsLoading,required TResult Function( SpecializationsLoaded value)  specializationsLoaded,required TResult Function( SpecializationsFailed value)  specializationsFailed,required TResult Function( DoctorsLoaded value)  doctorsLoaded,required TResult Function( DoctorsFailed value)  doctorsFailed,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationsLoading():
return specializationsLoading(_that);case SpecializationsLoaded():
return specializationsLoaded(_that);case SpecializationsFailed():
return specializationsFailed(_that);case DoctorsLoaded():
return doctorsLoaded(_that);case DoctorsFailed():
return doctorsFailed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationsLoading value)?  specializationsLoading,TResult? Function( SpecializationsLoaded value)?  specializationsLoaded,TResult? Function( SpecializationsFailed value)?  specializationsFailed,TResult? Function( DoctorsLoaded value)?  doctorsLoaded,TResult? Function( DoctorsFailed value)?  doctorsFailed,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading(_that);case SpecializationsLoaded() when specializationsLoaded != null:
return specializationsLoaded(_that);case SpecializationsFailed() when specializationsFailed != null:
return specializationsFailed(_that);case DoctorsLoaded() when doctorsLoaded != null:
return doctorsLoaded(_that);case DoctorsFailed() when doctorsFailed != null:
return doctorsFailed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationsLoading,TResult Function( List<SpecializationsData?>? specializationDataList)?  specializationsLoaded,TResult Function( ErrorHandler error)?  specializationsFailed,TResult Function( List<Doctors?>? doctors)?  doctorsLoaded,TResult Function( ErrorHandler error)?  doctorsFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading();case SpecializationsLoaded() when specializationsLoaded != null:
return specializationsLoaded(_that.specializationDataList);case SpecializationsFailed() when specializationsFailed != null:
return specializationsFailed(_that.error);case DoctorsLoaded() when doctorsLoaded != null:
return doctorsLoaded(_that.doctors);case DoctorsFailed() when doctorsFailed != null:
return doctorsFailed(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationsLoading,required TResult Function( List<SpecializationsData?>? specializationDataList)  specializationsLoaded,required TResult Function( ErrorHandler error)  specializationsFailed,required TResult Function( List<Doctors?>? doctors)  doctorsLoaded,required TResult Function( ErrorHandler error)  doctorsFailed,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationsLoading():
return specializationsLoading();case SpecializationsLoaded():
return specializationsLoaded(_that.specializationDataList);case SpecializationsFailed():
return specializationsFailed(_that.error);case DoctorsLoaded():
return doctorsLoaded(_that.doctors);case DoctorsFailed():
return doctorsFailed(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationsLoading,TResult? Function( List<SpecializationsData?>? specializationDataList)?  specializationsLoaded,TResult? Function( ErrorHandler error)?  specializationsFailed,TResult? Function( List<Doctors?>? doctors)?  doctorsLoaded,TResult? Function( ErrorHandler error)?  doctorsFailed,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading();case SpecializationsLoaded() when specializationsLoaded != null:
return specializationsLoaded(_that.specializationDataList);case SpecializationsFailed() when specializationsFailed != null:
return specializationsFailed(_that.error);case DoctorsLoaded() when doctorsLoaded != null:
return doctorsLoaded(_that.doctors);case DoctorsFailed() when doctorsFailed != null:
return doctorsFailed(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SpecializationsLoading implements HomeState {
  const SpecializationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.specializationsLoading()';
}


}




/// @nodoc


class SpecializationsLoaded implements HomeState {
  const SpecializationsLoaded(final  List<SpecializationsData?>? specializationDataList): _specializationDataList = specializationDataList;
  

 final  List<SpecializationsData?>? _specializationDataList;
 List<SpecializationsData?>? get specializationDataList {
  final value = _specializationDataList;
  if (value == null) return null;
  if (_specializationDataList is EqualUnmodifiableListView) return _specializationDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsLoadedCopyWith<SpecializationsLoaded> get copyWith => _$SpecializationsLoadedCopyWithImpl<SpecializationsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsLoaded&&const DeepCollectionEquality().equals(other._specializationDataList, _specializationDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationDataList));

@override
String toString() {
  return 'HomeState.specializationsLoaded(specializationDataList: $specializationDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationsLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationsLoadedCopyWith(SpecializationsLoaded value, $Res Function(SpecializationsLoaded) _then) = _$SpecializationsLoadedCopyWithImpl;
@useResult
$Res call({
 List<SpecializationsData?>? specializationDataList
});




}
/// @nodoc
class _$SpecializationsLoadedCopyWithImpl<$Res>
    implements $SpecializationsLoadedCopyWith<$Res> {
  _$SpecializationsLoadedCopyWithImpl(this._self, this._then);

  final SpecializationsLoaded _self;
  final $Res Function(SpecializationsLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationDataList = freezed,}) {
  return _then(SpecializationsLoaded(
freezed == specializationDataList ? _self._specializationDataList : specializationDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationsData?>?,
  ));
}


}

/// @nodoc


class SpecializationsFailed implements HomeState {
  const SpecializationsFailed({required this.error});
  

 final  ErrorHandler error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsFailedCopyWith<SpecializationsFailed> get copyWith => _$SpecializationsFailedCopyWithImpl<SpecializationsFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsFailed&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState.specializationsFailed(error: $error)';
}


}

/// @nodoc
abstract mixin class $SpecializationsFailedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationsFailedCopyWith(SpecializationsFailed value, $Res Function(SpecializationsFailed) _then) = _$SpecializationsFailedCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$SpecializationsFailedCopyWithImpl<$Res>
    implements $SpecializationsFailedCopyWith<$Res> {
  _$SpecializationsFailedCopyWithImpl(this._self, this._then);

  final SpecializationsFailed _self;
  final $Res Function(SpecializationsFailed) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SpecializationsFailed(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class DoctorsLoaded implements HomeState {
  const DoctorsLoaded(final  List<Doctors?>? doctors): _doctors = doctors;
  

 final  List<Doctors?>? _doctors;
 List<Doctors?>? get doctors {
  final value = _doctors;
  if (value == null) return null;
  if (_doctors is EqualUnmodifiableListView) return _doctors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsLoadedCopyWith<DoctorsLoaded> get copyWith => _$DoctorsLoadedCopyWithImpl<DoctorsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsLoaded&&const DeepCollectionEquality().equals(other._doctors, _doctors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctors));

@override
String toString() {
  return 'HomeState.doctorsLoaded(doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class $DoctorsLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsLoadedCopyWith(DoctorsLoaded value, $Res Function(DoctorsLoaded) _then) = _$DoctorsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Doctors?>? doctors
});




}
/// @nodoc
class _$DoctorsLoadedCopyWithImpl<$Res>
    implements $DoctorsLoadedCopyWith<$Res> {
  _$DoctorsLoadedCopyWithImpl(this._self, this._then);

  final DoctorsLoaded _self;
  final $Res Function(DoctorsLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctors = freezed,}) {
  return _then(DoctorsLoaded(
freezed == doctors ? _self._doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<Doctors?>?,
  ));
}


}

/// @nodoc


class DoctorsFailed implements HomeState {
  const DoctorsFailed({required this.error});
  

 final  ErrorHandler error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsFailedCopyWith<DoctorsFailed> get copyWith => _$DoctorsFailedCopyWithImpl<DoctorsFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsFailed&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState.doctorsFailed(error: $error)';
}


}

/// @nodoc
abstract mixin class $DoctorsFailedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsFailedCopyWith(DoctorsFailed value, $Res Function(DoctorsFailed) _then) = _$DoctorsFailedCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$DoctorsFailedCopyWithImpl<$Res>
    implements $DoctorsFailedCopyWith<$Res> {
  _$DoctorsFailedCopyWithImpl(this._self, this._then);

  final DoctorsFailed _self;
  final $Res Function(DoctorsFailed) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DoctorsFailed(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
