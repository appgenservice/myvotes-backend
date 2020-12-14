package com.ags.rest;

import com.ags.data.PollTopic;
import com.ags.data.Vote;
import com.ags.service.PollTopicService;
import com.ags.service.VoteService;
import org.apache.tomcat.jni.Poll;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@RestController
@RequestMapping("/polltopic")
public class PollTopicController {
    @Autowired
    private PollTopicService service;

    @GetMapping(value = "/list")
    @CrossOrigin(origins = "*")
    public Iterable<PollTopic> getPollTopics() {
        return service.getPollTopics();
    }

    @PostMapping
    @CrossOrigin(origins = "*")
    public PollTopic addPollTopic(@RequestBody PollTopic pollTopic) {
        pollTopic.setCreateDate(System.currentTimeMillis());
        return service.addPollTopic(pollTopic);
    }
}