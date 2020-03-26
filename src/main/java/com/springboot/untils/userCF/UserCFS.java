package com.springboot.untils.userCF;

import java.util.*;
import java.util.Map.Entry;

public class UserCFS {
    /**
     * @param list_item 用户-车辆ID映射信息
     * @param recommendUser 推荐的目标用户
     * @return */
    public static Map<String, Double> run(Map<String,List<String>> list_item, String recommendUser) {
        System.out.println("接口传入内容："+list_item.toString());
        // 建立用户稀疏矩阵，用于用户相似度计算【相似度矩阵】
        int[][] sparseMatrix = new int[list_item.size()][list_item.size()];
        // 存储每一个用户对应的不同车辆总数  eg: A 3
        Map<String, Integer> userItemLength = new HashMap<>();
        // 建立车辆到用户的倒排表 eg: a A B
        Map<String, Set<String>> itemUserCollection = new HashMap<>();
        // 辅助存储车辆集合
        Set<String> items = new HashSet<>();
        // 辅助存储每一个用户的购买车辆集合
        Map<String, Set<String>> userPurchase = new HashMap<>();
        // 辅助存储每一个用户的用户ID映射
        Map<String, Integer> userID = new HashMap<>();
        // 辅助存储每一个ID对应的用户映射
        Map<Integer, String> idUser = new HashMap<>();
        // 依次处理N个用户 以空格间隔
        int i=0;
        Iterator it = list_item.entrySet().iterator();
        while(it.hasNext()){
            Entry entry = (Entry) it.next();
            System.out.println(entry.getKey() + " : " + entry.getValue());
            List<String> entryValue = (List<String>) entry.getValue();
            String[] user_item = new String[entryValue.size()];
            entryValue.toArray(user_item);
            int length = user_item.length;
            //eg: A 3
            userItemLength.put(entry.getKey().toString(), length);
            //用户ID与稀疏矩阵建立对应关系
            userID.put(entry.getKey().toString(), i);
            idUser.put(i, entry.getKey().toString());
            //记录用户ID和购买记录关系存到userPurchase
            Set<String> temp = new HashSet<>();
            for (int j = 0; j < length; j++) {
                temp.add(user_item[j]);
            }
            userPurchase.put(entry.getKey().toString(),temp);
            //建立车辆--用户倒排表
            for(int j = 0; j < length; j ++){
                //如果已经包含对应的车辆--用户映射，直接添加对应的用户
                if(items.contains(user_item[j])){
                    itemUserCollection.get(user_item[j]).add(entry.getKey().toString());
                }else{
                    //否则创建对应车辆--用户集合映射
                    items.add(user_item[j]);
                    //创建车辆--用户倒排关系
                    itemUserCollection.put(user_item[j], new HashSet<>());
                    itemUserCollection.get(user_item[j]).add(entry.getKey().toString());
                }
            }
            i++;
        }
        //计算相似度矩阵【稀疏】
        Set<Entry<String, Set<String>>> entrySet = itemUserCollection.entrySet();
        Iterator<Entry<String, Set<String>>> iterator = entrySet.iterator();
        while(iterator.hasNext()){
            Set<String> commonUsers = iterator.next().getValue();
            for (String user_u : commonUsers) {
                for (String user_v : commonUsers) {
                    if(user_u.equals(user_v)){
                        continue;
                    }
                    //计算用户u与用户v都有正反馈的车辆总数
                    sparseMatrix[userID.get(user_u)][userID.get(user_v)] += 1;
                }
            }
        }
        // 计算用户之间的相似度【余弦相似性】
        int recommendUserId = userID.get(recommendUser);
        // 存储所有相似用户ID
        Set<String> similarUsers = new HashSet<>();
        // 存储相似用户购买车辆集合
        Set<String> SimilarUsersItems = new HashSet<>();
        for (int j = 0;j < sparseMatrix.length; j++) {
            if(j != recommendUserId){
                // 目标用户和相似用户的相似度
                double semblance = sparseMatrix[recommendUserId][j]/Math.sqrt(userItemLength.get(idUser.get(recommendUserId))*userItemLength.get(idUser.get(j)));
                if(semblance > 0){
                    similarUsers.add(idUser.get(j));
                    SimilarUsersItems.addAll(userPurchase.get(idUser.get(j)));
                }
            }
        }

        // 存储目标用户对车辆的偏好度并按偏好度降序
        Map<String,Double> result = new HashMap<>();
        // 计算指定用户recommendUser的车辆推荐度 从相似用户的购买记录中遍历每一件车辆
        for(String item: SimilarUsersItems){//遍历每一件车辆
            Set<String> users = itemUserCollection.get(item);//得到购买当前车辆的所有用户集合
            if(!users.contains(recommendUser)){//如果被推荐用户没有购买当前车辆，则进行推荐度计算
                double itemRecommendDegree = 0.0;
                for(String user: users){
                    itemRecommendDegree += sparseMatrix[userID.get(recommendUser)][userID.get(user)]/Math.sqrt(userItemLength.get(recommendUser)*userItemLength.get(user));//推荐度计算
                }
                result.put(item,itemRecommendDegree);
            }
        }
        return result;
    }

}