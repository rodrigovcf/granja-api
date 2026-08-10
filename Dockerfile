FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /workspace

# Copia apenas o arquivo de dependências
COPY pom.xml .

# Baixa as dependências usando o Maven nativo da imagem (sem usar ./mvnw)
RUN mvn dependency:resolve

# Copia o código fonte e gera o arquivo .jar compilado
COPY src src
RUN mvn clean package -DskipTests

# Etapa final: Imagem leve para rodar a aplicação
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
COPY --from=build /workspace/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
