package com.springboot.service.user.impl;

import com.springboot.dao.DistrictDao;
import com.springboot.service.user.GetDistrictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author sugar without coffee
 * @version 1.0.0
 */
@Service
public class GetDistrictServiceImpl implements GetDistrictService {

    @Autowired
    private DistrictDao districtDaoImpl;

    @Override
    public List<String> getDistrict(String district_sqe) {
        String[] dis = district_sqe.split(".");
        List<String> result = new ArrayList<>();
        for (int i = 1; i < dis.length; i++) {
            result.add(districtDaoImpl.selectByPrimaryKey(Integer.valueOf(dis[i])).getDistrictName());
        }
        return result;
    }

    @Override
    public List<Object> getDistrictChild(Integer pid) {
        return districtDaoImpl.getDistrictChild(pid);
    }
}
