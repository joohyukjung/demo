# 1. 베이스 이미지 설정 (가볍고 보안이 강화된 Eclipse Temurin JDK 17 Alpine 버전 사용)
FROM eclipse-temurin:17-jdk-alpine

# 2. 컨테이너 내부에서 작업할 디렉터리 지정
WORKDIR /app

# 3. 호스트 PC에서 빌드된 jar 파일을 컨테이너 내부의 app.jar라는 이름으로 복사
COPY build/libs/*SNAPSHOT.jar app.jar

# 4. 컨테이너가 켜질 때 실행할 명령어 지정 (java -jar app.jar)
ENTRYPOINT ["java", "-jar", "app.jar"]