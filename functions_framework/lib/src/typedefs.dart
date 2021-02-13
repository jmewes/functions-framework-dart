// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:shelf/shelf.dart';

import 'cloud_event.dart';
import 'log_severity.dart';
import 'request_context.dart';

typedef CloudEventHandler<T> = FutureOr<void> Function(CloudEvent<T> request);

typedef CloudEventWithContextHandler<T> = FutureOr<void> Function(
  CloudEvent<T> request,
  RequestContext context,
);

typedef JsonHandler<RequestType, ResponseType> = FutureOr<ResponseType>
    Function(RequestType request);

typedef JsonWithContextHandler<RequestType, ResponseType>
    = FutureOr<ResponseType> Function(
  RequestType request,
  RequestContext context,
);

typedef HandlerWithLogger = FutureOr<Response> Function(
  Request request,
  RequestLogger logger,
);
