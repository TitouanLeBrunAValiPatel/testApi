package ecommercebackend.ecommercebackend.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "user_cards")
@AllArgsConstructor
@NoArgsConstructor
public class UserCard {

    @Id
    @JsonProperty("user_id")
    @Column(name = "user_id")
    private int userId;

    @JsonProperty("card_id")
    @Column(name = "card_id")
    private int cardId;
}
