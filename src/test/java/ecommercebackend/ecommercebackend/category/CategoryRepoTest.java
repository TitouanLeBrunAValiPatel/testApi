package ecommercebackend.ecommercebackend.category;

import ecommercebackend.ecommercebackend.entity.Category;
import ecommercebackend.ecommercebackend.repository.CategoryRepository;
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
public class CategoryRepoTest {

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private EntityManager entityManager;

    private Category category;
    private Category savedCategory;

    @BeforeEach
    public void setUp() {
        category = new Category(1, "testName");
    }


    @AfterEach
    public void tearDown() {
        entityManager.flush();
        entityManager.clear();
    }

    @Test
    @Transactional
    public void saveCategoryTest() {

        categoryRepository.save(category);
        savedCategory = categoryRepository.findById(category.getId()).orElse(null);

        assertThat(savedCategory).isNotNull();
        assertThat(savedCategory).isNotNull();
        assertThat(savedCategory.getId()).isEqualTo(category.getId());
        assertThat(savedCategory.getName()).isEqualTo(category.getName());

        categoryRepository.delete(category);

    }

    @Test
    @Transactional
    public void findCategoryTest() {

        categoryRepository.save(category);
        savedCategory = categoryRepository.findById(category.getId()).orElse(null);

        assertThat(savedCategory).isNotNull();

        assertThat(savedCategory).isNotNull();
        assertThat(savedCategory.getId()).isEqualTo(category.getId());
        assertThat(savedCategory.getName()).isEqualTo(category.getName());

        categoryRepository.delete(category);
    }

    @Test
    @Transactional
    public void findAllCategoryTest() {

        categoryRepository.save(category);
        savedCategory = categoryRepository.findById(category.getId()).orElse(null);

        List<Category> categories = categoryRepository.findAll();
        assertThat(categories.get(0)).isNotNull();

        categoryRepository.delete(category);
    }

    @Test
    @Transactional
    public void deleteCategoryTest() {

        categoryRepository.save(category);

        savedCategory = categoryRepository.findById(category.getId()).orElse(null);

        categoryRepository.deleteById(category.getId());

        savedCategory = categoryRepository.findById(category.getId()).orElse(null);

        assertThat(savedCategory).isNull();
    }

    @Test
    @Transactional
    public void updateCategoryTest() {

        categoryRepository.save(category);
        savedCategory = categoryRepository.findById(category.getId()).orElse(null);

        Category modifedCategory = new Category(category.getId(), "modifiedName");

        categoryRepository.save(modifedCategory);

        savedCategory = categoryRepository.findById(category.getId()).orElse(null);

        assertThat(savedCategory).isEqualTo(modifedCategory);
        categoryRepository.delete(category);
    }
}
