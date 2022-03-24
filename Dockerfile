FROM openjdk:17.0.2
RUN mkdir work
RUN groupadd -r spring && useradd -r -gspring spring
USER spring:spring
# TODO: アプリケーションの実行ファイルをコンテナ内にコピーする
COPY build/libs/*.jar work/app.jar
# TODO: アプリケーションを起動してコンテナを実行する
ENTRYPOINT ["java","-jar","/work/app.jar"]
