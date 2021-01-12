package com.ags.rest;

import com.ags.data.Vote;
import com.ags.data.video.Feedback;
import com.ags.service.VoteService;
import com.ags.service.movie.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/feedback")
public class FeedbackController {
    @Autowired
    private FeedbackService service;

    @GetMapping(value = "/")
    public Iterable<Feedback> getAll() {
        return service.getAll();
    }

    @PostMapping
    @CrossOrigin(origins = "*")
    public Feedback add(@RequestBody Feedback feedback) {
        feedback.setCreateDate(System.currentTimeMillis());
        return service.add(feedback);
    }
}