package com.ags.rest;

import com.ags.data.video.Category;
import com.ags.data.video.Video;
import com.ags.service.movie.CategoryService;
import com.ags.service.movie.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest/video")
public class VideoDataController {
    @Autowired
    private VideoService service;

    @Autowired
    private CategoryService categoryService;

    @PostMapping
    @CrossOrigin(origins = "*")
    public Video add(@RequestBody Video video) {
        return service.add(video);
    }

    @GetMapping
    @CrossOrigin(origins = "*")
    public Iterable<Video> getVideos() {
        return service.getVideos();
    }

    @GetMapping("/category")
    @CrossOrigin(origins = "*")
    public Iterable<Category> getCategories() {
        return categoryService.getCategories();
    }
}