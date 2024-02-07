//package ecommercebackend.ecommercebackend.image;
//
//import ecommercebackend.ecommercebackend.entity.Color;
//import ecommercebackend.ecommercebackend.entity.Image;
//import ecommercebackend.ecommercebackend.repository.ColorRepository;
//import ecommercebackend.ecommercebackend.repository.ImageRepository;
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
//public class ImageRepoTest {
//
//    @Autowired
//    private ImageRepository imageRepository;
//
//    @Autowired
//    private ColorRepository colorRepository;
//
//    @Autowired
//    private EntityManager entityManager;
//
//    private Image image;
//    private Image savedImage;
//
//    @BeforeEach
//    public void setUp() {
//        Color color = new Color(0, "red");
//        colorRepository.save(color);
//        image = new Image(1, new byte[0], color.getId());
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
//    public void saveCardTest() {
//
//        imageRepository.save(image);
//        savedImage = imageRepository.findById(image.getId()).orElse(null);
//
//        assertThat(savedImage).isNotNull();
//        assertThat(savedImage).isNotNull();
//        assertThat(savedImage.getId()).isEqualTo(image.getId());
//    }
//
//    @Test
//    @Transactional
//    public void findCardTest() {
//
//        imageRepository.save(image);
//        savedImage = imageRepository.findById(image.getId()).orElse(null);
//
//        assertThat(savedImage).isNotNull();
//
//        assertThat(savedImage).isNotNull();
//        assertThat(savedImage.getId()).isEqualTo(image.getId());
//    }
//
//    @Test
//    @Transactional
//    public void findAllCardsTest() {
//
//        imageRepository.save(image);
//        savedImage = imageRepository.findById(image.getId()).orElse(null);
//
//        List<Image> images = imageRepository.findAll();
//        assertThat(images.get(0)).isNotNull();
//    }
//
//    @Test
//    @Transactional
//    public void deleteCardTest() {
//
//        imageRepository.save(image);
//        savedImage = imageRepository.findById(image.getId()).orElse(null);
//
//        imageRepository.deleteById(image.getId());
//
//        savedImage = imageRepository.findById(image.getId()).orElse(null);
//
//        assertThat(savedImage).isNull();
//    }
//
//    @Test
//    @Transactional
//    public void updateCardTest() {
//
//        imageRepository.save(image);
//
//        savedImage = imageRepository.findById(image.getId()).orElse(null);
//
//        Image modifiedCard = image;
//
//        modifiedCard.setImage(new byte[1]);
//
//        imageRepository.save(modifiedCard);
//
//        savedImage = imageRepository.findById(image.getId()).orElse(null);
//
//        assertThat(savedImage).isEqualTo(modifiedCard);
//    }
//}
