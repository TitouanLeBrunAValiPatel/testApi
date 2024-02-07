package ecommercebackend.ecommercebackend.product;

import ecommercebackend.ecommercebackend.entity.Category;
import ecommercebackend.ecommercebackend.entity.Product;
import ecommercebackend.ecommercebackend.repository.CategoryRepository;
import ecommercebackend.ecommercebackend.repository.ProductRepository;
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
public class ProductRepoTest {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private EntityManager entityManager;

    private Product product;
    private Product savedProduct;

    @BeforeEach
    public void setUp() {
        Category category = new Category(0, "test");
        categoryRepository.save(category);
        product = new Product(1, category.getId(), "test", "testName", 0, 0);
    }


    @AfterEach
    public void tearDown() {
        entityManager.flush();
        entityManager.clear();
    }

    @Test
    @Transactional
    public void saveColorTest() {

        productRepository.save(product);
        savedProduct = productRepository.findById(product.getId()).orElse(null);

        assertThat(savedProduct).isNotNull();
        assertThat(savedProduct).isNotNull();
        assertThat(savedProduct.getId()).isEqualTo(product.getId());
        assertThat(savedProduct.getName()).isEqualTo(product.getName());

    }

    @Test
    @Transactional
    public void findColorTest() {

        productRepository.save(product);
        savedProduct = productRepository.findById(product.getId()).orElse(null);

        assertThat(savedProduct).isNotNull();

        assertThat(savedProduct).isNotNull();
        assertThat(savedProduct.getId()).isEqualTo(product.getId());
        assertThat(savedProduct.getName()).isEqualTo(product.getName());

    }

    @Test
    @Transactional
    public void findAllColorTest() {

        productRepository.save(product);
        savedProduct = productRepository.findById(product.getId()).orElse(null);

        List<Product> products = productRepository.findAll();
        assertThat(products.get(0)).isNotNull();
    }

    @Test
    @Transactional
    public void deleteColorTest() {

        productRepository.save(product);

        productRepository.deleteById(product.getId());

        savedProduct = productRepository.findById(product.getId()).orElse(null);

        assertThat(savedProduct).isNull();
    }

    @Test
    @Transactional
    public void updateColorTest() {

        productRepository.save(product);
        savedProduct = productRepository.findById(product.getId()).orElse(null);

        Product modifedProduct = product;
        modifedProduct.setName("testName");

        productRepository.save(modifedProduct);

        savedProduct = productRepository.findById(product.getId()).orElse(null);

        assertThat(savedProduct).isEqualTo(modifedProduct);
    }
}
