package com.ags.service.movie;

import com.ags.data.video.Feedback;
import com.ags.data.video.FeedbackRepository;
import com.ags.data.video.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FeedbackService {
    @Autowired
    private FeedbackRepository repository;
    public Feedback add(Feedback feedback) {
        return repository.save(feedback);
    }
    public Iterable<Feedback> getAll() {
        return repository.findAll();
    }
}
