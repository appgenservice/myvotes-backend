package com.ags.service;

import com.ags.data.PollTopic;
import com.ags.data.PollTopicRepository;
import com.ags.data.Vote;
import org.apache.tomcat.jni.Poll;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PollTopicService {
    @Autowired
    private PollTopicRepository pollTopicRepository;

    public Iterable<PollTopic> getPollTopics() {
        return pollTopicRepository.findAll();
    }

    public PollTopic addPollTopic(PollTopic pollTopic) {
        return pollTopicRepository.save(pollTopic);
    }
}
