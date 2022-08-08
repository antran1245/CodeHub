package com.java.project.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.java.project.models.User;



@Repository
public interface UserRepo extends CrudRepository<User, Long> {
	List<User> findAll();
	Optional<User> findByEmail(String email);
	Optional<User> findById(Long id);
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value="UPDATE users SET email=?2, linkedin=?3, github=?4, about=?5 WHERE id=?1", nativeQuery =  true)
	void update(Long id, String email, String linkedin, String github, String about);
}
