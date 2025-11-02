plugins {
    id("com.android.application")
    id("kotlin-android")
    // Flutter Gradle plugin (wajib setelah Android dan Kotlin)
    id("dev.flutter.flutter-gradle-plugin")
    // Plugin Google Services buat Firebase
    id("com.google.gms.google-services")
}

android {
    namespace = "com.example.flutter_blublu"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.flutter_blublu"
        minSdk = 23 // wajib minimal 23 buat Firebase baru
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled = true // penting buat mencegah limit 64K methods
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Firebase BOM (biar versi antar Firebase sync otomatis)
    implementation platform("com.google.firebase:firebase-bom:33.1.2")

    // Core Firebase (wajib untuk inisialisasi)
    implementation("com.google.firebase:firebase-analytics")

    // MultiDex (penting banget buat mencegah build crash di project besar)
    implementation("androidx.multidex:multidex:2.0.1")
}
