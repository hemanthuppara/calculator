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
sh "docker build -t calculator ."
}
}
stage("Docker push") {
steps {
sh "docker tag calculator localhost:5000/calculator:latest"
sh "docker push localhost:5000/calculator:latest"
}
}
stage("Deploy to staging") {
steps {
sh "docker run -d --rm -p 8765:8080 --name calculator calculator"
}
}
stage("Acceptance test") {
steps {
sleep 10
sh "chmod +x acceptance_test.sh && ./acceptance_test.sh"
}
}
}
post {
always {
sh "docker stop calculator"
}
}

}