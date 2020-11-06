package com.biz.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.team.mapper.MyDao;
import com.biz.team.model.MyVO;

@Service
public class MyServiceImplV1 implements MyService {

   @Autowired
   private MyDao myDao;
   
   @Override
   public int update(MyVO myVO) {
   
      return myDao.update(myVO);
   }

   @Override
   public int insert(MyVO myVO) {
      
      return myDao.insert(myVO);
   }

}