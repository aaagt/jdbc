package aaagt.jdbc.app.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Entity
@Table(name = "customers", schema = "content")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(name = "name", nullable = false, length = 32)
    String name;

    @Column(name = "surname", nullable = false, length = 32)
    String surname;

    @Column(name = "age", nullable = false)
    Integer age;

    @Column(name = "phone_number", nullable = false, length = 20)
    String phoneNumber;

}
