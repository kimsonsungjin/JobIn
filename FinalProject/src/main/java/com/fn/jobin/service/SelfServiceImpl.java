package com.fn.jobin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.jobin.dao.SelfDao;
@Service
public class SelfServiceImpl implements SelfService{
	@Autowired
	private SelfDao sd;
}
