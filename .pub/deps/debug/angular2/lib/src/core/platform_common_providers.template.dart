// @ignoreProblemForFile annotate_overrides
// @ignoreProblemForFile cancel_subscriptions
// @ignoreProblemForFile constant_identifier_names
// @ignoreProblemForFile non_constant_identifier_names
// @ignoreProblemForFile implementation_imports
// @ignoreProblemForFile library_prefixes
// @ignoreProblemForFile type_annotate_public_apis
// @ignoreProblemForFile STRONG_MODE_DOWN_CAST_COMPOSITE
// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
// @ignoreProblemForFile UNUSED_LOCAL_VARIABLE
import 'platform_common_providers.dart';
import 'package:angular2/src/core/console.dart' show Console;
import 'package:angular2/src/core/di.dart' show Provider;
import 'package:angular2/src/core/testability/testability.dart' show TestabilityRegistry;
import 'application_ref.dart' show PLATFORM_CORE_PROVIDERS;
import 'reflection/reflection.dart' show Reflector, reflector;
import 'reflection/reflector_reader.dart' show ReflectorReader;
import 'package:angular2/src/core/console.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/testability/testability.template.dart' as i2;
import 'application_ref.template.dart' as i3;
import 'reflection/reflection.template.dart' as i4;
import 'reflection/reflector_reader.template.dart' as i5;
export 'platform_common_providers.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
