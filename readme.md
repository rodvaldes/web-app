# Aplicación Spring Java de ejemplo Pet Clinic

## Comprendiendo la aplicación Spring-Pet a partir de unos pocos diagramas.
<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">Ver aquí la presentación</a>

## Ejecutar la aplicación de manera local
```
	git clone git@bitbucket.org:rodrigoevaldes/spring-petclinic.git
	cd spring-petclinic
	./mvnw spring-boot:run
```

Luego se puede acceder a la aplicación en: http://localhost:8080/

<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">


## Configuración de Base de Datos

La configuración por defecto, usa una base de datos en memoria (HSQLDB) la cual es poblada
con datos al  momento del arranque de la aplicación. 

En su configuración predeterminada, Petclinic utiliza una base de datos en memoria (HSQLDB) que
se llena al inicio con datos. Se proporciona una configuración similar para MySql en caso de que 
se necesite una configuración de base de datos persistente.
Tenga en cuenta que cada vez que se cambia el tipo de base de datos, el archivo data-access.properties 
debe actualizarse y el mysql-connector-java artefacto de pom.xml debe ser descomentada.

Puede iniciar una base de datos MySql con Docker:

```
docker run -e MYSQL_ROOT_PASSWORD=petclinic -e MYSQL_DATABASE=petclinic -p 3306:3306 mysql:5.7.8
```


## Working with Petclinic in Eclipse/STS

### prerequisites

Los siguientes artículos deben estar instalados en su sistema:
* Apache Maven (https://maven.apache.org/install.html)
* herramienta de línea de comandos de git (https://help.github.com/articles/set-up-git)
* Eclipse con el plugin m2e (m2e se instala por defecto cuando se usa la distribución STS (http://www.springsource.org/sts) de Eclipse)
=======

Nota: cuando m2e está disponible, hay un icono de m2 en Ayuda -> Acerca del diálogo.
Si m2e no está allí, simplemente siga el proceso de instalación aquí: http://www.eclipse.org/m2e/m2e-downloads.html

### Pasos:

1) En la linea de comandos
```
git clone https://github.com/spring-projects/spring-petclinic.git
```
2) Dentro de eclipse
```
File -> Import -> Maven -> Existing Maven project
```


## Buscando algo en particular?

|Spring Boot Configuration | Class or Java property files  |
|--------------------------|---|
|La clase principal | [PetClinicApplication](https://github.com/spring-projects/spring-petclinic/blob/master/src/main/java/org/springframework/samples/petclinic/PetClinicApplication.java) |
|Archivos Properties | [application.properties](https://github.com/spring-projects/spring-petclinic/blob/master/src/main/resources) |
|Caching | [CacheConfig](https://github.com/spring-projects/spring-petclinic/blob/master/src/main/java/org/springframework/samples/petclinic/system/CacheConfig.java) |

## Interesting Spring Petclinic branches and forks



| Link                               | Main technologies |
|------------------------------------|-------------------|
| [spring-framework-petclinic][]     | Spring Framework XML configuration, JSP pages, 3 persistence layers: JDBC, JPA and Spring Data JPA |
| [javaconfig branch][]              | Same frameworks as the [spring-framework-petclinic][] but with Java Configuration instead of XML |
| [spring-petclinic-angularjs][]     | AngularJS 1.x, Spring Boot and Spring Data JPA |
| [spring-petclinic-angular][]       | Angular 4 front-end of the Petclinic REST API [spring-petclinic-rest][] |
| [spring-petclinic-microservices][] | Distributed version of Spring Petclinic built with Spring Cloud |
| [spring-petclinic-reactjs][]       | ReactJS (with TypeScript) and Spring Boot |
| [spring-petclinic-graphql][]       | GraphQL version based on React Appolo, TypeScript and GraphQL Spring boot starter |
| [spring-petclinic-kotlin][]        | Kotlin version of [spring-petclinic][] |
| [spring-petclinic-rest][]          | Backend REST API |


## Interacción con otros proyectos opensource

Una de las mejores partes de trabajar en la aplicación Spring Petclinic es que tenemos la oportunidad de trabajar en contacto directo con muchos proyectos de código abierto. Encontramos algunos errores / mejoras sugeridas en varios temas, como Spring, Spring Data, Bean Validation e incluso Eclipse. En muchos casos, se han corregido / implementado en solo unos días.
Aquí hay una lista de ellos:

| Name | Issue |
|------|-------|
| Spring JDBC: simplify usage of NamedParameterJdbcTemplate | [SPR-10256](https://jira.springsource.org/browse/SPR-10256) and [SPR-10257](https://jira.springsource.org/browse/SPR-10257) |
| Bean Validation / Hibernate Validator: simplify Maven dependencies and backward compatibility |[HV-790](https://hibernate.atlassian.net/browse/HV-790) and [HV-792](https://hibernate.atlassian.net/browse/HV-792) |
| Spring Data: provide more flexibility when working with JPQL queries | [DATAJPA-292](https://jira.springsource.org/browse/DATAJPA-292) |


# Licencia

La aplicación de ejemplo Spring PetClinic se lanza bajo la versión 2.0 de [Apache License](http://www.apache.org/licenses/LICENSE-2.0).

[spring-petclinic]: https://github.com/spring-projects/spring-petclinic
[spring-framework-petclinic]: https://github.com/spring-petclinic/spring-framework-petclinic
[spring-petclinic-angularjs]: https://github.com/spring-petclinic/spring-petclinic-angularjs 
[javaconfig branch]: https://github.com/spring-petclinic/spring-framework-petclinic/tree/javaconfig
[spring-petclinic-angular]: https://github.com/spring-petclinic/spring-petclinic-angular
[spring-petclinic-microservices]: https://github.com/spring-petclinic/spring-petclinic-microservices
[spring-petclinic-reactjs]: https://github.com/spring-petclinic/spring-petclinic-reactjs
[spring-petclinic-graphql]: https://github.com/spring-petclinic/spring-petclinic-graphql
[spring-petclinic-kotlin]: https://github.com/spring-petclinic/spring-petclinic-kotlin
[spring-petclinic-rest]: https://github.com/spring-petclinic/spring-petclinic-rest



Modificación DES-1
Modificación SSD-3
Modificación SSD-2
Modificación SSD-2 11:15PM
Modificación SSD-2 11:25PM