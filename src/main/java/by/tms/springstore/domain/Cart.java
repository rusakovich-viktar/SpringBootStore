package by.tms.springstore.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinColumns;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@SuperBuilder(toBuilder = true)
@Entity
@Table(name = "cart", schema = "online-store2")
@NoArgsConstructor
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;
    @ManyToMany
    @JoinTable(name = "card_products",
            joinColumns = @JoinColumn(name = "card_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id"))
    private List<Product> products;


//    private Map<Integer, Product> products;
//    BigDecimal totalPrice = BigDecimal.ZERO;
//
//    public Cart() {
//        this.products = new HashMap<>();
//    }
//
//    public void addProduct(Product product) {
//        products.put(product.getId(), product);
//        totalPrice = totalPrice.add(product.getPrice());
//    }
//
//    public void removeProduct(int productId) {
//        Product product = products.get(productId);
//        products.remove(productId);
//        totalPrice = totalPrice.subtract(product.getPrice());
//    }
//
//    public List<Product> getProducts() {
//        return new ArrayList<>(products.values());
//    }
//
//    public void clear() {
//        products.clear();
//    }

}
