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
@Table(name = "user_roles")
@AllArgsConstructor
@NoArgsConstructor
public class UserRole {

    @Id
    @JsonProperty("user_id")
    @Column(name = "user_id")
    private int userId;

    @JsonProperty("role_id")
    @Column(name = "role_id")
    private int roleId;
}
