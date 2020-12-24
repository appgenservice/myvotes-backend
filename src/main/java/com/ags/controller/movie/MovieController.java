package com.ags.controller.movie;

import com.ags.data.PollTopic;
import com.ags.data.movie.Movie;
import com.ags.service.PollTopicService;
import com.ags.service.movie.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

    @Autowired
    private MovieService service;
    @RequestMapping(value ={"/movie"})
    public String getMovies(ModelMap model) {
        Iterable<Movie> movies = service.getMovies();
        model.put("movies", movies);
        return "movie";
    }

}