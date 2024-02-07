package ecommercebackend.ecommercebackend.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CompleteProduct {

    private int id;

    private int idCategory;

    private String name;

    private String description;

    private int stock;

    private int price;

    private String image;
}
