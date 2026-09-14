package br.com.granja.api;

import org.flywaydb.core.Flyway;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class FlywayMigrationTest {

    @Autowired(required = false)
    Flyway flyway;

    @Test
    void flywayApplied() {
        assertThat(flyway).as("Flyway bean should be present").isNotNull();
        assertThat(flyway.info().applied()).as("There should be applied migrations").isNotEmpty();
        assertThat(flyway.info().current().getVersion().toString()).isEqualTo("1");
    }
}
