package com.ags.data;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PollTopicRepository extends CrudRepository<PollTopic, Long> {
    @Query("select opinion, count(opinion) as count from Vote where poll_id=?1 group by poll_id, opinion")
    List<Object[]> getOpinionCount(Long id);
}