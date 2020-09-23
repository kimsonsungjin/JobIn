package com.fn.jobin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.jobin.dao.QnaDao;
import com.fn.jobin.dao.RequestDao;

@Service
public class RequestServiceImpl implements RequestService{
	@Autowired
	private RequestDao rd;
}
