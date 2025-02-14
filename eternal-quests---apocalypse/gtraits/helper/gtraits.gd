# ##########################################################################
# This file is auto generated and should ne be edited !
# It can safely be committed to your VCS.
# This script is automatically declared as singleton in your
# Project Settings. Do not remove it or disable it or GTraits will not
# work as expected
# ##########################################################################

extends RefCounted
class_name GTraits

#region Core methods

## Shortcut for [method GTraitsCore.as_a]
static func as_a(a_trait:Script, object:Object) -> Object:
	return GTraitsCore.as_a(a_trait, object)

## Shortcut for [method GTraitsCore.is_a]
static func is_a(a_trait:Script, object:Object) -> bool:
	return GTraitsCore.is_a(a_trait, object)

## Shortcut for [method GTraitsCore.add_trait_to]
static func add_trait_to(a_trait:Script, object:Object) -> Object:
	return GTraitsCore.add_trait_to(a_trait, object)

## Shortcut for [method GTraitsCore.remove_trait_from]
static func remove_trait_from(a_trait:Script, object:Object) -> void:
	GTraitsCore.remove_trait_from(a_trait, object)

## Shortcut for [method GTraitsCore.if_is_a]
static func if_is_a(a_trait:Script, object:Object, if_callable:Callable, deferred_call:bool = false) -> Variant:
	return GTraitsCore.if_is_a(a_trait, object, if_callable, deferred_call)

## Shortcut for [method GTraitsCore.if_is_a_or_else]
static func if_is_a_or_else(a_trait:Script, object:Object, if_callable:Callable, else_callable:Callable, deferred_call:bool = false) -> Variant:
	return GTraitsCore.if_is_a_or_else(a_trait, object, if_callable, else_callable, deferred_call)

#endregion

#region Trait AnimationTrait
# Trait script path: 'res://trait scripts/animation_trait.gd'


## Get [AnimationTrait] trait from the given object. Raise an assertion error if trait is not found.
## See [method GTraits.as_a] for more details.
static func as_animation_trait(object:Object) -> AnimationTrait:
	return as_a(AnimationTrait, object)

## Gets if the given object is a [AnimationTrait].
## See [method GTraits.is_a] for more details.
static func is_animation_trait(object:Object) -> bool:
	return is_a(AnimationTrait, object)

## Add trait [AnimationTrait] to the given object.
## See [method GTraits.add_trait_to] for more details.
static func set_animation_trait(object:Object) -> AnimationTrait:
	return add_trait_to(AnimationTrait, object)

## Remove trait [AnimationTrait] from the given object. Removed trait instance is automatically freed.
## See [method GTraits.remove_trait_from] for more details.
static func unset_animation_trait(object:Object) -> void:
	remove_trait_from(AnimationTrait, object)

## Calls the given [Callable] if and only if an object is a [AnimationTrait]. The callable.
## takes the [AnimationTrait] trait as argument. Returns the callable result if the object is a
## [AnimationTrait], [code]null[/code] otherwise.
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a] for more details.
static func if_is_animation_trait(object:Object, if_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a(AnimationTrait, object, if_callable, deferred_call)

## Calls the given [i]if[/i] [Callable] if and only if an object is a [AnimationTrait], or else calls
## the given [i]else[/i] callable. The [i]if[/i] callable takes the [AnimationTrait] trait as argument, and the
## [i]else[/i] callable does not take any argument. Returns the called callable result..
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a_or_else] for more details.
static func if_is_animation_trait_or_else(object:Object, if_callable:Callable, else_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a_or_else(AnimationTrait, object, if_callable, else_callable, deferred_call)

#endregion

#region Trait Trait
# Trait script path: 'res://trait scripts/base trait.gd'


## Get [Trait] trait from the given object. Raise an assertion error if trait is not found.
## See [method GTraits.as_a] for more details.
static func as_trait(object:Object) -> Trait:
	return as_a(Trait, object)

## Gets if the given object is a [Trait].
## See [method GTraits.is_a] for more details.
static func is_trait(object:Object) -> bool:
	return is_a(Trait, object)

## Add trait [Trait] to the given object.
## See [method GTraits.add_trait_to] for more details.
static func set_trait(object:Object) -> Trait:
	return add_trait_to(Trait, object)

## Remove trait [Trait] from the given object. Removed trait instance is automatically freed.
## See [method GTraits.remove_trait_from] for more details.
static func unset_trait(object:Object) -> void:
	remove_trait_from(Trait, object)

## Calls the given [Callable] if and only if an object is a [Trait]. The callable.
## takes the [Trait] trait as argument. Returns the callable result if the object is a
## [Trait], [code]null[/code] otherwise.
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a] for more details.
static func if_is_trait(object:Object, if_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a(Trait, object, if_callable, deferred_call)

## Calls the given [i]if[/i] [Callable] if and only if an object is a [Trait], or else calls
## the given [i]else[/i] callable. The [i]if[/i] callable takes the [Trait] trait as argument, and the
## [i]else[/i] callable does not take any argument. Returns the called callable result..
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a_or_else] for more details.
static func if_is_trait_or_else(object:Object, if_callable:Callable, else_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a_or_else(Trait, object, if_callable, else_callable, deferred_call)

#endregion

#region Trait ButtonTrait
# Trait script path: 'res://trait scripts/button_trait.gd'


## Get [ButtonTrait] trait from the given object. Raise an assertion error if trait is not found.
## See [method GTraits.as_a] for more details.
static func as_button_trait(object:Object) -> ButtonTrait:
	return as_a(ButtonTrait, object)

## Gets if the given object is a [ButtonTrait].
## See [method GTraits.is_a] for more details.
static func is_button_trait(object:Object) -> bool:
	return is_a(ButtonTrait, object)

## Add trait [ButtonTrait] to the given object.
## See [method GTraits.add_trait_to] for more details.
static func set_button_trait(object:Object) -> ButtonTrait:
	return add_trait_to(ButtonTrait, object)

## Remove trait [ButtonTrait] from the given object. Removed trait instance is automatically freed.
## See [method GTraits.remove_trait_from] for more details.
static func unset_button_trait(object:Object) -> void:
	remove_trait_from(ButtonTrait, object)

## Calls the given [Callable] if and only if an object is a [ButtonTrait]. The callable.
## takes the [ButtonTrait] trait as argument. Returns the callable result if the object is a
## [ButtonTrait], [code]null[/code] otherwise.
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a] for more details.
static func if_is_button_trait(object:Object, if_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a(ButtonTrait, object, if_callable, deferred_call)

## Calls the given [i]if[/i] [Callable] if and only if an object is a [ButtonTrait], or else calls
## the given [i]else[/i] callable. The [i]if[/i] callable takes the [ButtonTrait] trait as argument, and the
## [i]else[/i] callable does not take any argument. Returns the called callable result..
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a_or_else] for more details.
static func if_is_button_trait_or_else(object:Object, if_callable:Callable, else_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a_or_else(ButtonTrait, object, if_callable, else_callable, deferred_call)

#endregion

#region Trait SnappedTransformTrait
# Trait script path: 'res://trait scripts/snapped_transform_trait.gd'
# Trait SnappedTransformTrait is configured to be accessed by alias SnappedTransformTrait

## Get [SnappedTransformTrait] as trait alias [b]SnappedTransformTrait[/b] trait from the given object. Raise an assertion error if trait is not found.
## See [method GTraits.as_a] for more details.
static func as_snapped_transform_trait(object:Object) -> SnappedTransformTrait:
	return as_a(SnappedTransformTrait, object)

## Gets if the given object is a [SnappedTransformTrait] as trait alias [b][SnappedTransformTrait][/b].
## See [method GTraits.is_a] for more details.
static func is_snapped_transform_trait(object:Object) -> bool:
	return is_a(SnappedTransformTrait, object)

## Add trait [SnappedTransformTrait] as trait alias [b]SnappedTransformTrait[/b] to the given object.
## See [method GTraits.add_trait_to] for more details.
static func set_snapped_transform_trait(object:Object) -> SnappedTransformTrait:
	return add_trait_to(SnappedTransformTrait, object)

## Remove trait [SnappedTransformTrait] as trait alias [b]SnappedTransformTrait[/b] from the given object. Removed trait instance is automatically freed.
## See [method GTraits.remove_trait_from] for more details.
static func unset_snapped_transform_trait(object:Object) -> void:
	remove_trait_from(SnappedTransformTrait, object)

## Calls the given [Callable] if and only if an object is a [SnappedTransformTrait] as trait alias [b]SnappedTransformTrait[/b]. The callable.
## takes the [SnappedTransformTrait] trait as argument. Returns the callable result if the object is a
## [SnappedTransformTrait], [code]null[/code] otherwise.
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a] for more details.
static func if_is_snapped_transform_trait(object:Object, if_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a(SnappedTransformTrait, object, if_callable, deferred_call)

## Calls the given [i]if[/i] [Callable] if and only if an object is a [SnappedTransformTrait] as trait alias [b]SnappedTransformTrait[/b], or else calls
## the given [i]else[/i] callable. The [i]if[/i] callable takes the [SnappedTransformTrait] trait as argument, and the
## [i]else[/i] callable does not take any argument. Returns the called callable result.
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a_or_else] for more details.
static func if_is_snapped_transform_trait_or_else(object:Object, if_callable:Callable, else_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a_or_else(SnappedTransformTrait, object, if_callable, else_callable, deferred_call)

#endregion

#region Trait TransformTrait
# Trait script path: 'res://trait scripts/transform_trait.gd'


## Get [TransformTrait] trait from the given object. Raise an assertion error if trait is not found.
## See [method GTraits.as_a] for more details.
static func as_transform_trait(object:Object) -> TransformTrait:
	return as_a(TransformTrait, object)

## Gets if the given object is a [TransformTrait].
## See [method GTraits.is_a] for more details.
static func is_transform_trait(object:Object) -> bool:
	return is_a(TransformTrait, object)

## Add trait [TransformTrait] to the given object.
## See [method GTraits.add_trait_to] for more details.
static func set_transform_trait(object:Object) -> TransformTrait:
	return add_trait_to(TransformTrait, object)

## Remove trait [TransformTrait] from the given object. Removed trait instance is automatically freed.
## See [method GTraits.remove_trait_from] for more details.
static func unset_transform_trait(object:Object) -> void:
	remove_trait_from(TransformTrait, object)

## Calls the given [Callable] if and only if an object is a [TransformTrait]. The callable.
## takes the [TransformTrait] trait as argument. Returns the callable result if the object is a
## [TransformTrait], [code]null[/code] otherwise.
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a] for more details.
static func if_is_transform_trait(object:Object, if_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a(TransformTrait, object, if_callable, deferred_call)

## Calls the given [i]if[/i] [Callable] if and only if an object is a [TransformTrait], or else calls
## the given [i]else[/i] callable. The [i]if[/i] callable takes the [TransformTrait] trait as argument, and the
## [i]else[/i] callable does not take any argument. Returns the called callable result..
## [br][br]
## If [code]deferred_call[/code] is [code]true[/code], the callable is called using [method Callable.call_deferred] and
## the returned value will always be [code]null[/code].
## [br][br]
## See [method GTraits.if_is_a_or_else] for more details.
static func if_is_transform_trait_or_else(object:Object, if_callable:Callable, else_callable:Callable, deferred_call:bool = false) -> Variant:
	return if_is_a_or_else(TransformTrait, object, if_callable, else_callable, deferred_call)

#endregion

