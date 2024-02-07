package ecommercebackend.ecommercebackend.user;

import ecommercebackend.ecommercebackend.entity.User;
import ecommercebackend.ecommercebackend.repository.UserRepository;
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
public class UserRepoTest {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EntityManager entityManager;

    private User user;
    private User savedUser;

    @BeforeEach
    public void setUp() {
        user = new User(1, ",ame", "mail", "password", "surname", "gender", "city", "postCode");

    }


    @AfterEach
    public void tearDown() {
        entityManager.flush();
        entityManager.clear();
    }

    @Test
    @Transactional
    public void saveCategoryTest() {

        userRepository.save(user);
        savedUser = userRepository.findById(user.getId()).orElse(null);

        assertThat(savedUser).isNotNull();
        assertThat(savedUser).isNotNull();
        assertThat(savedUser.getId()).isEqualTo(user.getId());
        assertThat(savedUser.getName()).isEqualTo(user.getName());

        userRepository.delete(user);

    }

    @Test
    @Transactional
    public void findCategoryTest() {

        userRepository.save(user);
        savedUser = userRepository.findById(user.getId()).orElse(null);

        assertThat(savedUser).isNotNull();

        assertThat(savedUser).isNotNull();
        assertThat(savedUser.getId()).isEqualTo(user.getId());
        assertThat(savedUser.getName()).isEqualTo(user.getName());

        userRepository.delete(user);
    }

    @Test
    @Transactional
    public void findAllCategoryTest() {

        userRepository.save(user);
        savedUser = userRepository.findById(user.getId()).orElse(null);

        List<User> users = userRepository.findAll();
        assertThat(users.get(0)).isNotNull();

        userRepository.delete(user);
    }

    @Test
    @Transactional
    public void deleteCategoryTest() {

        userRepository.save(user);

        savedUser = userRepository.findById(user.getId()).orElse(null);

        userRepository.deleteById(user.getId());

        savedUser = userRepository.findById(user.getId()).orElse(null);

        assertThat(savedUser).isNull();
    }

    @Test
    @Transactional
    public void updateCategoryTest() {

        userRepository.save(user);
        savedUser = userRepository.findById(user.getId()).orElse(null);

        User modifedUser = user;
        user.setName("modifiedName");

        userRepository.save(modifedUser);

        savedUser = userRepository.findById(user.getId()).orElse(null);

        assertThat(savedUser).isEqualTo(modifedUser);
        userRepository.delete(user);
    }
}
