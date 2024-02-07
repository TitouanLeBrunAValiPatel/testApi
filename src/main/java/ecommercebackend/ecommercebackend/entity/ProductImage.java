package ecommercebackend.ecommercebackend.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "product_images")
@AllArgsConstructor
@NoArgsConstructor
public class ProductImage {

    @Id
    @Column(name = "product_id")
    private int productId;

    @Column(name = "image_id")
    private int imageId;

}
