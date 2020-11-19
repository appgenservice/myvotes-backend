package com.cheenath.rest;

import com.cheenath.AppManagementException;
import com.cheenath.data.AppDetails;
import com.cheenath.data.AppRepository;
import com.cheenath.service.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/app")
public class AppController {


    @Autowired
    private AppService service;


    /*@GetMapping
    public App getApp(@RequestParam(value = "appId") Long appId) {
        return appRepository.findById(appId).orElse(null);
    }

    @GetMapping(value ="/nextid")
    public Integer getNextAppId() {
        return appRepository.findMaxAppId() != null ? appRepository.findMaxAppId().intValue() + 1 : 1;
    }*/

    @GetMapping(value = "/list")
    @CrossOrigin(origins = "*")
    public Iterable<AppDetails> getAllApps() {
        return service.findAll();
    }

    @CrossOrigin(origins = "*")
    @PostMapping
    public ResponseEntity<AppDetails> addApp(@RequestBody AppDetails appRequest) {
        return new ResponseEntity<>(service.add(appRequest), HttpStatus.OK);
    }

    @CrossOrigin(origins = "*")
    @PostMapping("/deploy/{appId}")
    public void deployApp(@PathVariable("appId") Integer appId) throws AppManagementException {
        service.deploy(appId);
    }

   /* @DeleteMapping
    public void deleteApp(@RequestParam(value = "appId") Long appId) {
        appRepository.deleteById(appId);
    }*/

}
