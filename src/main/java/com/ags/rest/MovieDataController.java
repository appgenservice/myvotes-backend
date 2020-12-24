package com.ags.rest;

import com.ags.data.movie.Movie;
import com.ags.service.movie.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/moviedata")
public class MovieDataController {
    @Autowired
    private MovieService service;

    @PostMapping
    @CrossOrigin(origins = "*")
    public Movie add(@RequestBody Movie movie) {
        return service.add(movie);
    }

    @GetMapping
    @CrossOrigin(origins = "*")
    public Iterable<Movie> getMovies() {
        return service.getMovies();
    }
}