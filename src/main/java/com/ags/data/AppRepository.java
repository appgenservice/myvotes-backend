package com.ags.data;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.math.BigDecimal;
import java.util.Optional;

public interface AppRepository extends CrudRepository<AppDetails, Long> {
    @Query(value = "select max(a.id) from appdetails a")
    BigDecimal findMaxAppId();

    Optional<AppDetails> findById(Integer appId);
}
