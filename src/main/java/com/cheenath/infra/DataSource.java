package com.cheenath.infra;

import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class DataSource<T> {
    private Map<UUID, T> dataInMemory = new HashMap<>();
    public UUID add(T obj) {
        final UUID key = UUID.randomUUID();
        dataInMemory.put(key, obj);
        return key;
    }

    public T get(UUID key) {
        return dataInMemory.get(key);
    }

    public void remove(UUID key) {
        dataInMemory.remove(key);
    }

    public Collection<T> fetchAll() {
        return dataInMemory.values();
    }
}
