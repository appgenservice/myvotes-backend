package com.ags.data.video;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface VideoRepository extends CrudRepository<Video, Long> {
    Iterable<Video> findAllByCategoryOrderByCategory(int category);
}