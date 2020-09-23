package com.fn.jobin.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.jobin.dao.RsmDao;
@Service
public class RsmServiceImpl implements RsmService{
	@Autowired
	private RsmDao rd;
	
}
