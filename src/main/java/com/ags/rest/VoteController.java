package com.ags.rest;

import com.ags.data.Vote;
import com.ags.service.VoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/vote")
public class VoteController {
    @Autowired
    private VoteService service;

//    @GetMapping(value = "/list")
//    public Iterable<Vote> getVotes() {
//        return service.getVotes();
//    }

    @PostMapping
    @CrossOrigin(origins = "*")
    public Vote addUser(@RequestBody Vote vote) {
        vote.setCreateDate(System.currentTimeMillis());
        return service.addVote(vote);
    }
}