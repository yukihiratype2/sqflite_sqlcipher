// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package com.davidmartos96.sqflite_sqlcipherexample;

import android.os.Bundle;

import com.davidmartos96.sqflite_sqlcipher.Constant;
import com.davidmartos96.sqflite_sqlcipher.SqflitePlugin;

import dev.flutter.plugins.e2e.E2EPlugin;
import io.flutter.app.FlutterActivity;

public class EmbeddingV1Activity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SqflitePlugin.registerWith(registrarFor(Constant.PLUGIN_KEY));
        E2EPlugin.registerWith(registrarFor("dev.flutter.plugins.e2e.E2EPlugin"));
    }
}
