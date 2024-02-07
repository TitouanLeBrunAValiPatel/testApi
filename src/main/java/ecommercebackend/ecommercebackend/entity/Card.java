package ecommercebackend.ecommercebackend.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "cards")
@AllArgsConstructor
@NoArgsConstructor
public class Card {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @JsonProperty("card_name")
    @Column(name = "card_name")
    private String cardName;

    @JsonProperty("card_number")
    @Column(name = "card_number")
    private long cardNumber;

    @JsonProperty("card_expiration")
    @Column(name = "card_expiration")
    private String cardExpiration;

    @Column(name = "cryptogram")
    private int cryptogram;
}
