package com.cheenath.data;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.math.BigDecimal;

public interface AppRepository extends CrudRepository<AppRequest, Long> {

	AppRequest findById(long id);
}
