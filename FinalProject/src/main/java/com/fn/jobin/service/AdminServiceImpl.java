package com.fn.jobin.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fn.jobin.dao.AdminDao;
@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDao ad;
}
