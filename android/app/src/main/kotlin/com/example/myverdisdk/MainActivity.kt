package com.example.myverdisdk

import io.flutter.embedding.android.FlutterActivity
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "flutter.native/helper"

    @ExperimentalStdlibApi
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler{
            call, result -> 
            when {
                call.method.equals("myverdisdk") -> {
                    changeColor(result)
                }
            }
        }
    }
}