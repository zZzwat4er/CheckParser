package com.example.check_parser

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.BufferedReader
import java.io.InputStreamReader
import java.util.stream.Collectors

class MainActivity: FlutterActivity() {

    var sharedText: String? = null
    val CHANNEL = "app.channel.shared.data"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val intent = getIntent()
        val action = intent.getAction()
        val type = intent.getType()
        Log.v("TAG", intent.toString())
        Log.v("TAG", action.toString())
        Log.v("TAG", type.toString())

        if (Intent.ACTION_SEND.equals(action) && type != null) {
            Log.v("TAG", "Intent handling")
            handleSendText(intent)
        }
    }

    
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "app.channel.shared.data").setMethodCallHandler {
          call, result ->
            if(call.method == "getSharedText") {
                Log.v("TAG", "method call")
                result.success(sharedText)
                sharedText = null
            }
            else {
              result.notImplemented()
            }
        }
      }

    fun handleSendText(intent: Intent) {
        Log.v("TAG", "handle String")
        val uri = intent.getExtras()?.get(Intent.EXTRA_STREAM)
        if(uri != null && uri is Uri) {
            val stream = contentResolver.openInputStream(uri)
            sharedText = BufferedReader(InputStreamReader(stream))
                .lines().collect(Collectors.joining("\n"))
        }
        Log.v("TAG", sharedText.toString())
    }
}
