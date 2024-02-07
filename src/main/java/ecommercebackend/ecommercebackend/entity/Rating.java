package ecommercebackend.ecommercebackend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "ratings")
@AllArgsConstructor
@NoArgsConstructor
public class Rating {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "id_product")
    private int idProduct;

    @Column(name = "id_user")
    private int idUser;

    @Column(name = "description")
    private String description;

    @Column(name = "note")
    private int note;
}
