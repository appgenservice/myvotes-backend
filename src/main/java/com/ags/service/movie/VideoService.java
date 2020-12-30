package com.ags.service.movie;

import com.ags.data.video.Video;
import com.ags.data.video.VideoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VideoService {
    @Autowired
    private VideoRepository repository;

    public Iterable<Video> getVideos(int category) {
        return repository.findAllByCategoryOrderByRatingDesc(category);
    }

    public Video add(Video movie) {
        return repository.save(movie);
    }

    public Video getVideo(Long id) {
        return repository.findById(id).orElse(null);
    }

    public Iterable<Video> getVideos() {
        return repository.findAllByOrderByRatingDesc();
    }
}
