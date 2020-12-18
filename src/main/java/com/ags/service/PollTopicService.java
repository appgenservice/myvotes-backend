package com.ags.service;

import com.ags.data.PollTopic;
import com.ags.data.PollTopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

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

    public PollTopic getPollTopic(long id) {
        return pollTopicRepository.findById(id).orElse(null);
    }

    public List<Object[]> getOpinionCount(Long id){ return pollTopicRepository.getOpinionCount(id);}

}
