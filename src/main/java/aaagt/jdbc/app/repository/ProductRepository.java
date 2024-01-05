package aaagt.jdbc.app.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductRepository {

    @PersistenceContext
    private EntityManager entityManager;

    public List<String> getProductName(String name) {
        final var sql = "SELECT o.productName FROM Order o WHERE lower(customer.name) = :name";
        TypedQuery<String> query = entityManager.createQuery(sql, String.class)
                .setParameter("name", name.toLowerCase());
        List<String> result = query.getResultList();
        return result;
    }

}
