package ecommercebackend.ecommercebackend.card;

import ecommercebackend.ecommercebackend.entity.Card;
import ecommercebackend.ecommercebackend.repository.CardRepository;
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
public class CardRepoTest {

    @Autowired
    private CardRepository cardRepository;

    @Autowired
    private EntityManager entityManager;

    private Card card;
    private Card savedCard;

    @BeforeEach
    public void setUp() {
        card = new Card(1, "testName", 342391, "20/08", 1256);
    }


    @AfterEach
    public void tearDown() {
        entityManager.flush();
        entityManager.clear();
    }

    @Test
    @Transactional
    public void saveCardTest() {

        cardRepository.save(card);
        savedCard = cardRepository.findById(card.getId()).orElse(null);

        assertThat(savedCard).isNotNull();
        assertThat(savedCard).isNotNull();
        assertThat(savedCard.getId()).isEqualTo(card.getId());
        assertThat(savedCard.getCardName()).isEqualTo(card.getCardName());
        assertThat(savedCard.getCardNumber()).isEqualTo(card.getCardNumber());
        assertThat(savedCard.getCardExpiration()).isEqualTo(card.getCardExpiration());
        assertThat(savedCard.getCryptogram()).isEqualTo(card.getCryptogram());
    }

    @Test
    @Transactional
    public void findCardTest() {

        cardRepository.save(card);
        savedCard = cardRepository.findById(card.getId()).orElse(null);

        assertThat(savedCard).isNotNull();

        assertThat(savedCard).isNotNull();
        assertThat(savedCard.getId()).isEqualTo(card.getId());
        assertThat(savedCard.getCardName()).isEqualTo(card.getCardName());
        assertThat(savedCard.getCardNumber()).isEqualTo(card.getCardNumber());
        assertThat(savedCard.getCardExpiration()).isEqualTo(card.getCardExpiration());
        assertThat(savedCard.getCryptogram()).isEqualTo(card.getCryptogram());
    }

    @Test
    @Transactional
    public void findAllCardsTest() {

        cardRepository.save(card);
        savedCard = cardRepository.findById(card.getId()).orElse(null);

        List<Card> cards = cardRepository.findAll();
        assertThat(cards.get(0)).isNotNull();
    }

    @Test
    @Transactional
    public void deleteCardTest() {

        cardRepository.save(card);
        savedCard = cardRepository.findById(card.getId()).orElse(null);

        cardRepository.deleteById(card.getId());

        savedCard = cardRepository.findById(card.getId()).orElse(null);

        assertThat(savedCard).isNull();
    }

    @Test
    @Transactional
    public void updateCardTest() {

        cardRepository.save(card);
        savedCard = cardRepository.findById(card.getId()).orElse(null);

        Card modifiedCard = new Card(card.getId(), "modifiedName", 34291, "21/08", 156);

        cardRepository.save(modifiedCard);

        savedCard = cardRepository.findById(card.getId()).orElse(null);

        assertThat(savedCard).isEqualTo(modifiedCard);
    }
}
