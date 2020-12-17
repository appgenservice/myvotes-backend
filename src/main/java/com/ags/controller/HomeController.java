package com.ags.controller;

import com.ags.data.PollTopic;
import com.ags.service.PollTopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    private PollTopicService pollTopicService;
    @RequestMapping(value ={"", "/", "/home"})
    public String loginMessage(ModelMap model) {
        Iterable<PollTopic> polls = pollTopicService.getPollTopics();
        model.put("polls", polls);
        return "home";
    }

}