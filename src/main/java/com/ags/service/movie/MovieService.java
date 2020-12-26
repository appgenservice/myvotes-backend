package com.ags.service.movie;

import com.ags.data.movie.Movie;
import com.ags.data.movie.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {
    @Autowired
    private MovieRepository repository;

    public Iterable<Movie> getMovies() {
        return repository.findAll();
    }

    public Movie add(Movie movie) {
        return repository.save(movie);
    }

    public Movie getMovie(Long id) {
        return repository.findById(id).orElse(null);
    }
}
