allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

// Ensure Kotlin Android Plugin is applied to all subprojects,
// overriding conditional KGP skips in plugins like file_picker 11.0.2
// that incorrectly skip KGP when AGP >= 9 even with builtInKotlin=false.
// See https://docs.flutter.dev/release/breaking-changes/migrate-to-built-in-kotlin
subprojects {
    apply(plugin = "org.jetbrains.kotlin.android")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
