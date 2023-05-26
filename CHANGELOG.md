# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2023-05-26

### Changes

---

Packages with breaking changes:

 - [`utilities` - `v0.5.0`](#utilities---v050)

Packages with other changes:

 - There are no other changes in this release.

---

#### `utilities` - `v0.5.0`

 - **BREAKING** **FIX**(routing): Remove currentRoute extension. ([ede26fad](https://github.com/helpisdev/utilities.git/commit/ede26fadb5784d8599fbd5090c45d4c3df7557a3))

## 0.5.0

> Note: This release has breaking changes.

 - **BREAKING** **FIX**(routing): Remove currentRoute extension. ([ede26fad](https://github.com/helpisdev/utilities.git/commit/ede26fadb5784d8599fbd5090c45d4c3df7557a3))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`utilities` - `v0.4.0+1`](#utilities---v0401)

---

#### `utilities` - `v0.4.0+1`

 - **FIX**(routing): Add annotation to indicate that the generate function must be overridden by implementers of statefull screens. ([7b0f68f6](https://github.com/helpisdev/utilities.git/commit/7b0f68f6dfc9a271f1125ceb4f7abd40509ab808))

## 0.4.0+1

 - **FIX**(routing): Add annotation to indicate that the generate function must be overridden by implementers of statefull screens. ([7b0f68f6](https://github.com/helpisdev/utilities.git/commit/7b0f68f6dfc9a271f1125ceb4f7abd40509ab808))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - [`utilities` - `v0.4.0`](#utilities---v040)

Packages with other changes:

 - There are no other changes in this release.

---

#### `utilities` - `v0.4.0`

 - **BREAKING** **FIX**(routing): Make return value of currentRoute nullable since there is currently no implementation that handles parameterized locations and remove the requirement that app routes should be equal to screen routes (this can be invalid in the new implementation). ([ab8df151](https://github.com/helpisdev/utilities.git/commit/ab8df151c9a679813185b7b4e7b290af65e3ef2c))

## 0.4.0

> Note: This release has breaking changes.

 - **BREAKING** **FIX**(routing): Make return value of currentRoute nullable since there is currently no implementation that handles parameterized locations and remove the requirement that app routes should be equal to screen routes (this can be invalid in the new implementation). ([ab8df151](https://github.com/helpisdev/utilities.git/commit/ab8df151c9a679813185b7b4e7b290af65e3ef2c))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`utilities` - `v0.3.0+3`](#utilities---v0303)

---

#### `utilities` - `v0.3.0+3`

 - **FIX**(widgets): Rename screen_width_provider to screen_size_provider.. ([2201c23d](https://github.com/helpisdev/utilities.git/commit/2201c23d78b4782bb498a76f17d28c4987288162))
 - **FIX**(routing): Export UtilitiesRouter. ([a3f91fc1](https://github.com/helpisdev/utilities.git/commit/a3f91fc1f9fb11272f28f462e0429020264a2802))

## 0.3.0+3

 - **FIX**(widgets): Rename screen_width_provider to screen_size_provider.. ([2201c23d](https://github.com/helpisdev/utilities.git/commit/2201c23d78b4782bb498a76f17d28c4987288162))
 - **FIX**(routing): Export UtilitiesRouter. ([a3f91fc1](https://github.com/helpisdev/utilities.git/commit/a3f91fc1f9fb11272f28f462e0429020264a2802))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`utilities` - `v0.3.0+2`](#utilities---v0302)

---

#### `utilities` - `v0.3.0+2`

 - **FIX**(routing): Remove @literal annotation as it was wrongly applied. ([930dd0b9](https://github.com/helpisdev/utilities.git/commit/930dd0b972094cf2013a0e4bcfccc0cb24c4bd4c))
 - **FIX**(routing): Add call to super(). ([2d7ec469](https://github.com/helpisdev/utilities.git/commit/2d7ec4691305b4b50093c3c0e8cdabda07a1cc13))

## 0.3.0+2

 - **FIX**(routing): Remove @literal annotation as it was wrongly applied. ([930dd0b9](https://github.com/helpisdev/utilities.git/commit/930dd0b972094cf2013a0e4bcfccc0cb24c4bd4c))
 - **FIX**(routing): Add call to super(). ([2d7ec469](https://github.com/helpisdev/utilities.git/commit/2d7ec4691305b4b50093c3c0e8cdabda07a1cc13))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`utilities` - `v0.3.0+1`](#utilities---v0301)

---

#### `utilities` - `v0.3.0+1`

 - **FIX**(routing): Call GoRouteData.$location to parse location properly. ([40936031](https://github.com/helpisdev/utilities.git/commit/40936031a1994dd46008d5da9b5143061c06f021))

## 0.3.0+1

 - **FIX**(routing): Call GoRouteData.$location to parse location properly. ([40936031](https://github.com/helpisdev/utilities.git/commit/40936031a1994dd46008d5da9b5143061c06f021))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - [`utilities` - `v0.3.0`](#utilities---v030)

Packages with other changes:

 - There are no other changes in this release.

---

#### `utilities` - `v0.3.0`

 - **FEAT**(routing): Export go_router. ([8195b1d9](https://github.com/helpisdev/utilities.git/commit/8195b1d9530a18ef8fe87f502351cf6d6612930e))
 - **BREAKING** **FEAT**(routing): Add location parameter to screen route and extends BuildContext to provide the current ScreenRoute. ([f22573f0](https://github.com/helpisdev/utilities.git/commit/f22573f016110c27a577b45ef01ae3cbfe495ad6))

## 0.3.0

> Note: This release has breaking changes.

 - **FEAT**(routing): Export go_router. ([8195b1d9](https://github.com/helpisdev/utilities.git/commit/8195b1d9530a18ef8fe87f502351cf6d6612930e))
 - **BREAKING** **FEAT**(routing): Add location parameter to screen route and extends BuildContext to provide the current ScreenRoute. ([f22573f0](https://github.com/helpisdev/utilities.git/commit/f22573f016110c27a577b45ef01ae3cbfe495ad6))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`utilities` - `v0.2.1`](#utilities---v021)

---

#### `utilities` - `v0.2.1`

 - **REFACTOR**(routing): Remove @sealed annotation and make classes final now that Dart 3.0 supports it. ([f4c87594](https://github.com/helpisdev/utilities.git/commit/f4c8759470f6885c21b4872f8818e0f89b264ed6))
 - **FEAT**(routing): Add an optional page title property for each screen route. ([0fb68cbd](https://github.com/helpisdev/utilities.git/commit/0fb68cbd6b086b79e3620a8f6abe0ac4e7305ec1))

## 0.2.1

 - **REFACTOR**(routing): Remove @sealed annotation and make classes final now that Dart 3.0 supports it. ([f4c87594](https://github.com/helpisdev/utilities.git/commit/f4c8759470f6885c21b4872f8818e0f89b264ed6))
 - **FEAT**(routing): Add an optional page title property for each screen route. ([0fb68cbd](https://github.com/helpisdev/utilities.git/commit/0fb68cbd6b086b79e3620a8f6abe0ac4e7305ec1))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - [`utilities` - `v0.2.0`](#utilities---v020)

Packages with other changes:

 - There are no other changes in this release.

---

#### `utilities` - `v0.2.0`

 - **FEAT**(localizations): Add extension on BuildContext to make access to LocalizationProvider and its methods easier. ([f945a236](https://github.com/helpisdev/utilities.git/commit/f945a236cc3d14f39c5f4c16d8d6a57303529f36))
 - **DOCS**(localizations): Add language docs. ([9152a2ae](https://github.com/helpisdev/utilities.git/commit/9152a2ae92ee7cc047b92323e442c592f855c012))
 - **BREAKING** **REFACTOR**(localizations): Rename functions to make them more intuitive. ([11be47b9](https://github.com/helpisdev/utilities.git/commit/11be47b902cedbd83be10be63a69d57c3583804a))

## 0.2.0

> Note: This release has breaking changes.

 - **FEAT**(localizations): Add extension on BuildContext to make access to LocalizationProvider and its methods easier. ([f945a236](https://github.com/helpisdev/utilities.git/commit/f945a236cc3d14f39c5f4c16d8d6a57303529f36))
 - **DOCS**(localizations): Add language docs. ([9152a2ae](https://github.com/helpisdev/utilities.git/commit/9152a2ae92ee7cc047b92323e442c592f855c012))
 - **BREAKING** **REFACTOR**(localizations): Rename functions to make them more intuitive. ([11be47b9](https://github.com/helpisdev/utilities.git/commit/11be47b902cedbd83be10be63a69d57c3583804a))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`utilities` - `v0.1.1+1`](#utilities---v0111)

---

#### `utilities` - `v0.1.1+1`

 - **FIX**(localizations): Remove previous language getter implementations. ([6fe91134](https://github.com/helpisdev/utilities.git/commit/6fe9113411e7fc4b320b6ef1162f1653895e8ecd))

## 0.1.1+1

 - **FIX**(localizations): Remove previous language getter implementations. ([6fe91134](https://github.com/helpisdev/utilities.git/commit/6fe9113411e7fc4b320b6ef1162f1653895e8ecd))


## 2023-05-25

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`utilities` - `v0.1.1`](#utilities---v011)

---

#### `utilities` - `v0.1.1`

 - **FEAT**(localizations): Add Language getter/setter besides the locale getter/setter. ([e4bd6de4](https://github.com/helpisdev/utilities.git/commit/e4bd6de41a18c553cd4f389129f64b2909b05af0))

## 0.1.1

 - **FEAT**(localizations): Add Language getter/setter besides the locale getter/setter. ([e4bd6de4](https://github.com/helpisdev/utilities.git/commit/e4bd6de41a18c553cd4f389129f64b2909b05af0))

