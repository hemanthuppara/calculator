pipeline {
agent any
stages {
stage("Compile") {
steps {
sh "chmod +x gradlew"
sh "./gradlew compileJava"
}
}
stage("Unit test") {
steps {
sh "./gradlew test"
}
}
stage("Package") {
steps {
sh "./gradlew build"
}
}
stage("Docker build") {
steps {
sh "docker build -t hemanth/calculator ."
}
}
stage("Docker push") {
steps {
sh "docker push leszko/calculator"
}
}
}
}