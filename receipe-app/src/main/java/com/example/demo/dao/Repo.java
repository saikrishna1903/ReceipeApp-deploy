package com.example.demo.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Receipes;

public interface Repo extends CrudRepository<Receipes,Integer>{

	List<Receipes> findByName(String search);

}
