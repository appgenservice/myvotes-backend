package com.ags.controller;

import com.ags.data.PollTopic;
import com.ags.data.video.Video;
import com.ags.service.PollTopicService;
import com.ags.service.movie.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SiteMapController {

    @Autowired
    private PollTopicService pollTopicService;

    @Autowired
    private VideoService service;

    @RequestMapping(value ={"/sitemap.xml"})
    public String loginMessage(ModelMap model) {
        Iterable<PollTopic> polls = pollTopicService.getPollTopics();
        model.put("polls", polls);
        Iterable<Video> videos = service.getVideos();
        model.put("videos", videos);
        return "sitemap";
    }

}