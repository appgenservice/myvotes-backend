package com.cheenath.rest;
import com.cheenath.data.AppRequest;
import com.cheenath.data.AppRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@RestController
@RequestMapping("/app")
public class AppController {
    private final int PORT_NUMBER_BASE = 8080;
//    private final String JAVA_REPO_URL = "https://github.com/appgenservice/java-simple-rest-bootstrap.git";

    @Autowired
    private AppRepository appRepository;

    /*@GetMapping
    public App getApp(@RequestParam(value = "appId") Long appId) {
        return appRepository.findById(appId).orElse(null);
    }

    @GetMapping(value ="/nextid")
    public Integer getNextAppId() {
        return appRepository.findMaxAppId() != null ? appRepository.findMaxAppId().intValue() + 1 : 1;
    }*/

    /*@GetMapping(value = "/list")
    public Iterable<App> getAllApps() {
        return appRepository.findAll();
    }*/

    @PostMapping
    public void addApp(@RequestParam(value = "appName") String appName, @RequestParam(value = "email") String email) {
        appRepository.save(new AppRequest(appName, email));
    }

   /* @DeleteMapping
    public void deleteApp(@RequestParam(value = "appId") Long appId) {
        appRepository.deleteById(appId);
    }*/

}
