package by.tms.springstore.service;

import by.tms.springstore.model.Category;

import java.util.List;

public interface CategoryService {

    List<Category> getCategories();

    Category getCategoryById(int id);

    Category getCategoryByName(String name);
}
