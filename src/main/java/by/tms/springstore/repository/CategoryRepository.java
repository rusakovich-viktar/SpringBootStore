package by.tms.springstore.repository;

import by.tms.springstore.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
    @Query("from Category")
    List<Category> findAllCategory();

    //    List<Category> getCategories();
    Category findById(int id);
//    Category getCategory(int id);
}
