package com.ags.controller;

import com.ags.data.PollTopic;
import com.ags.service.PollTopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PollController {

    @Autowired
    private PollTopicService pollTopicService;
    @RequestMapping("/poll/{id}/{titile}")
    public String loginMessage(ModelMap model, @PathVariable("id") long id) {
        PollTopic pollTopic = pollTopicService.getPollTopic(id);
        model.put("pollTopic", pollTopic);
        return "poll";
    }

}