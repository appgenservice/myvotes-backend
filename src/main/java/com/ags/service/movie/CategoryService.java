package com.ags.service.movie;

import com.ags.data.video.Category;
import com.ags.data.video.CategoryRepository;
import com.ags.data.video.Video;
import com.ags.data.video.VideoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
    @Autowired
    private CategoryRepository repository;

    public Iterable<Category> getCategories() {
        return repository.findAll();
    }

    public Category add(Category category) {
        return repository.save(category);
    }

    public Category getCategory(Long id) {
        return repository.findById(id).orElse(null);
    }
}
