package com.springboot.untils.userCF;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        /**
         * 知识点参考：https://blog.csdn.net/shixiaoguo90/article/details/80253567
         * 输入用户-->车辆条目  一个用户对应多个车辆
         * 用户ID	车辆ID集合
         */
        List<String> tempA = new ArrayList<>();
        tempA.add("a");
        tempA.add("b");
        tempA.add("d");
        List<String> tempB = new ArrayList<>();
        tempB.add("a");
        tempB.add("c");
        List<String> tempC = new ArrayList<>();
        tempC.add("b");
        tempC.add("e");
        List<String> tempD = new ArrayList<>();
        tempD.add("c");
        tempD.add("d");
        tempD.add("e");
        Map<String,List<String>> list_items = new HashMap<>();
        list_items.put("A",tempA);
        list_items.put("B",tempB);
        list_items.put("C",tempC);
        list_items.put("D",tempD);
        String target = "A";
        Map<String, Double> re = UserCFS.run(list_items, target);
        for(Map.Entry<String, Double> entry : re.entrySet()){
            String mapKey = entry.getKey();
            Double mapValue = entry.getValue();
            System.out.println("为"+target+"推荐车辆ID："+mapKey+" 偏好度："+mapValue);
        }
    }
}
