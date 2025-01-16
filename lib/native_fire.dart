library native_fire;
// -----------------------------------------------------------------------------

/// IMPORTS

// --------------------
/// COMMON
import 'package:basics/filing/filing.dart';
import 'package:basics/fire_helpers/models/a_authing/auth_model.dart';
import 'package:basics/fire_helpers/models/a_authing/sign_in_method.dart';
import 'package:basics/fire_helpers/models/b_fire/fire_comparison_enum.dart';
import 'package:basics/fire_helpers/models/b_fire/fire_finder.dart';
import 'package:basics/fire_helpers/models/b_fire/fire_query_model.dart';
import 'package:basics/fire_helpers/models/b_fire/query_order_by.dart';
import 'package:basics/fire_helpers/models/c_real/real_query_model.dart';
import 'package:basics/fire_helpers/models/d_storage/storage_error.dart';
import 'package:basics/fire_helpers/pagination_controller/pagination_controller.dart';
import 'package:basics/fire_helpers/pagination_controller/scroll_listeners.dart';
import 'package:basics/helpers/checks/error_helpers.dart';
import 'package:basics/helpers/checks/object_check.dart';
import 'package:basics/helpers/checks/tracers.dart';
import 'package:basics/helpers/maps/lister.dart';
import 'package:basics/helpers/maps/mapper.dart';
import 'package:basics/helpers/maps/mapper_ss.dart';
import 'package:basics/helpers/nums/numeric.dart';
import 'package:basics/helpers/rest/rest.dart';
import 'package:basics/helpers/strings/stringer.dart';
import 'package:basics/helpers/strings/text_check.dart';
import 'package:basics/helpers/strings/text_mod.dart';
import 'package:basics/mediator/models/media_models.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:firedart/firedart.dart' as fd;
import 'package:firebase_dart/firebase_dart.dart' as f_d; // https://github.com/appsup-dart/firebase_dart/issues/53
import 'package:firedart/auth/user_gateway.dart' as fd_u;
import 'package:flutter/foundation.dart';
import 'package:basics/exports/http.dart' as http;
// -----------------------------------------------------------------------------

/// FOUNDATION

// --------------------
/// HYBRID
// part 'a_foundation/a_hybrid/a_firebase_initializer.dart';
// part 'a_foundation/a_hybrid/b_authing.dart';
// part 'a_foundation/a_hybrid/c_fire.dart';
// part 'a_foundation/a_hybrid/d_real.dart';
// part 'a_foundation/a_hybrid/e_storage.dart';
// --------------------
/// NATIVE
part 'a_foundation/b_natives/a_native_firebase_initializer.dart';
part 'a_foundation/b_natives/b_native_authing.dart';
part 'a_foundation/b_natives/c_native_fire.dart';
part 'a_foundation/b_natives/d_native_real.dart';
part 'a_foundation/b_natives/e_native_storage.dart';
// -----------------------------------------------------------------------------

/// HELPERS

// --------------------
part 'c_helpers/native_fire_mapper.dart';
// --------------------
part 'c_helpers/native_fire_finder_methods.dart';
part 'c_helpers/native_real_query_methods.dart';
part 'c_helpers/native_storage_meta_model_methods.dart';
part 'c_helpers/native_auth_model_methods.dart';
// -----------------------------------------------------------------------------

/// STREAMERS

// --------------------
/// FIRE STREAMERS
part 'e_streamers/native_fire_coll_streamer.dart';
part 'e_streamers/native_fire_doc_streamer.dart';
/// REAL STREAMERS
part 'e_streamers/native_real_coll_streamer.dart';
part 'e_streamers/native_real_doc_streamer.dart';
part 'e_streamers/native_real_stream.dart';
// -----------------------------------------------------------------------------

/// PAGINATORS

// --------------------
/// FIRE PAGINATOR
part 'f_paginators/native_fire_coll_paginator.dart';
/// REAL PAGINATOR
part 'f_paginators/native_real_coll_paginator.dart';
// -----------------------------------------------------------------------------
