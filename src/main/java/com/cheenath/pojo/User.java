package com.cheenath.pojo;

import java.util.UUID;

public class User {

    private final UUID key;
    private final String name;

    public User(UUID key, String name) {
        this.key = key;
        this.name = name;
    }
    public UUID getKey() {
        return key;
    }

    public String getName() {
        return name;
    }
}
