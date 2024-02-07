package ecommercebackend.ecommercebackend.color;

import ecommercebackend.ecommercebackend.entity.Color;
import ecommercebackend.ecommercebackend.repository.ColorRepository;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class ColorRepoTest {

    @Autowired
    private ColorRepository colorRepository;

    @Autowired
    private EntityManager entityManager;

    private Color color;
    private Color savedColor;

    @BeforeEach
    public void setUp() {
        color = new Color(1, "testName");

    }


    @AfterEach
    public void tearDown() {
        entityManager.flush();
        entityManager.clear();
    }

    @Test
    @Transactional
    public void saveColorTest() {

        colorRepository.save(color);
        savedColor = colorRepository.findById(color.getId()).orElse(null);

        assertThat(savedColor).isNotNull();
        assertThat(savedColor).isNotNull();
        assertThat(savedColor.getId()).isEqualTo(color.getId());
        assertThat(savedColor.getName()).isEqualTo(color.getName());

    }

    @Test
    @Transactional
    public void findColorTest() {

        colorRepository.save(color);
        savedColor = colorRepository.findById(color.getId()).orElse(null);

        assertThat(savedColor).isNotNull();

        assertThat(savedColor).isNotNull();
        assertThat(savedColor.getId()).isEqualTo(color.getId());
        assertThat(savedColor.getName()).isEqualTo(color.getName());

    }

    @Test
    @Transactional
    public void findAllColorTest() {

        colorRepository.save(color);
        savedColor = colorRepository.findById(color.getId()).orElse(null);

        List<Color> colors = colorRepository.findAll();
        assertThat(colors.get(0)).isNotNull();
    }

    @Test
    @Transactional
    public void deleteColorTest() {

        colorRepository.save(color);

        colorRepository.deleteById(color.getId());

        savedColor = colorRepository.findById(color.getId()).orElse(null);

        assertThat(savedColor).isNull();
    }

    @Test
    @Transactional
    public void updateColorTest() {

        colorRepository.save(color);
        savedColor = colorRepository.findById(color.getId()).orElse(null);

        Color modifedColor = new Color(color.getId(), "modifiedName");

        colorRepository.save(modifedColor);

        savedColor = colorRepository.findById(color.getId()).orElse(null);

        assertThat(savedColor).isEqualTo(modifedColor);
    }
}
