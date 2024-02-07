//package ecommercebackend.ecommercebackend.rating;
//
//import com.projet.eCommerce.entity.Category;
//import com.projet.eCommerce.entity.Product;
//import com.projet.eCommerce.entity.Rating;
//import com.projet.eCommerce.repository.ProductRepository;
//import com.projet.eCommerce.repository.RatingRepository;
//import com.projet.eCommerce.repository.UserRepository;
//import ecommercebackend.ecommercebackend.entity.Category;
//import ecommercebackend.ecommercebackend.entity.Product;
//import ecommercebackend.ecommercebackend.entity.Rating;
//import ecommercebackend.ecommercebackend.repository.ProductRepository;
//import ecommercebackend.ecommercebackend.repository.RatingRepository;
//import ecommercebackend.ecommercebackend.repository.UserRepository;
//import jakarta.persistence.EntityManager;
//import jakarta.transaction.Transactional;
//import org.junit.jupiter.api.AfterEach;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
//import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
//
//import java.util.List;
//
//@DataJpaTest
//@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
//public class RatingRepoTest {
//
//    @Autowired
//    private RatingRepository ratingRepository;
//
//    @Autowired
//    private ProductRepository productRepository;
//
//    @Autowired
//    private UserRepository userRepository;
//
//    @Autowired
//    private EntityManager entityManager;
//
//    private Product product;
//
//    private Product savedProduct;
//
//    private Category category;
//
//    @BeforeEach
//    public void setUp() {
//        category = new Category(0,"name");
//        ratingRepository.save(category);
//        product = new Product(1,category.getId(),"test","testName",0,0);
//        Rating rating = new Rating(0,"test","","","");
//    }
//
//
//    @AfterEach
//    public void tearDown() {
//        entityManager.flush();
//        entityManager.clear();
//    }
//
//    @Test
//    @Transactional
//    public void saveColorTest() {
//
//        productRepository.save(product);
//        savedProduct = productRepository.findById(product.getId()).orElse(null);
//
//        assertThat(savedProduct).isNotNull();
//        assertThat(savedProduct).isNotNull();
//        assertThat(savedProduct.getId()).isEqualTo(product.getId());
//        assertThat(savedProduct.getName()).isEqualTo(product.getName());
//
//    }
//
//    @Test
//    @Transactional
//    public void findColorTest() {
//
//        productRepository.save(product);
//        savedProduct = productRepository.findById(product.getId()).orElse(null);
//
//        assertThat(savedProduct).isNotNull();
//
//        assertThat(savedProduct).isNotNull();
//        assertThat(savedProduct.getId()).isEqualTo(product.getId());
//        assertThat(savedProduct.getName()).isEqualTo(product.getName());
//
//    }
//    @Test
//    @Transactional
//    public void findAllColorTest() {
//
//        productRepository.save(product);
//        savedProduct = productRepository.findById(product.getId()).orElse(null);
//
//        List<Rating> ratings = productRepository.findAll();
//        assertThat(ratings.get(0)).isNotNull();
//    }
//
//    @Test
//    @Transactional
//    public void deleteColorTest() {
//
//        productRepository.save(product);
//
//        productRepository.deleteById(product.getId());
//
//        savedProduct = productRepository.findById(product.getId()).orElse(null);
//
//        assertThat(savedProduct).isNull();
//    }
//
//    @Test
//    @Transactional
//    public void updateColorTest() {
//
//        productRepository.save(product);
//        savedProduct = productRepository.findById(product.getId()).orElse(null);
//
//        Product modifedProduct = product;
//        modifedProduct.setName("testName");
//
//        productRepository.save(modifedProduct);
//
//        savedProduct = productRepository.findById(product.getId()).orElse(null);
//
//        assertThat(savedProduct).isEqualTo(modifedProduct);
//    }
//}
