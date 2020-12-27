package com.ags.controller.movie;

import com.ags.data.video.Video;
import com.ags.service.movie.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoController {

    @Autowired
    private VideoService service;
    @RequestMapping(value ={"/video/{id}/{type}"})
    public String getVideos(ModelMap model, @PathVariable("id") int id, @PathVariable("type") String type) {
        Iterable<Video> videos = service.getVideos(id);
        model.put("videos", videos);
        return "video";
    }

    @RequestMapping(value ={"/watch/{id}/{titile}"})
    public String getMovies(ModelMap model, @PathVariable("id") Long id) {
        Video video = service.getVideo(id);
        model.put("video", video);
        return "watch";
    }

}