package com.ags.service;

import com.ags.data.Vote;
import com.ags.data.VoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoteService {
    @Autowired
    private VoteRepository voteRepository;

    public Iterable<Vote> getVotes() {
        return voteRepository.findAll();
    }

    public Vote addVote(Vote vote) {
        return voteRepository.save(vote);
    }
}
