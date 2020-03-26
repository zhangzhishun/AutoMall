package com.springboot.untils.userCF;

import java.util.*;
import java.util.Map.Entry;

/**
 * 协同过滤简单来说是利用某兴趣相投、拥有共同经验之群体的喜好来推荐用户感兴趣的信息，
 * 个人通过合作的机制给予信息相当程度的回应（如评分）并记录下来以达到过滤的目的进而帮助别人筛选信息，
 * 回应不一定局限于特别感兴趣的，特别不感兴趣信息的纪录也相当重要。
 * 协同过滤又可分为评比（rating）或者群体过滤（social filtering）协同过滤以其出色的速度和健壮性，
 * 在全球互联网领域炙手可热，UserCF的核心思想即为根据用户数据模拟向量相似度，
 * 我们根据这个相似度，来找出指定用户的相似用户，然后将相似用户买过的而指定用户没有买的东西推荐给指定用户，
 * 推荐度的计算也是结合了相似用户与指定用户的相似度累加。注意这里我们默认是用户的隐反馈行为，所以每一个车辆的影响因子默认为1。
 *
 *
 * 基于用户的协同过滤推荐算法实现
A a b d
B a c
C b e
D c d e

 A a d c
 B b c
 C b e
 D c d e
 * @author Administrator
 *
 */
public class UserCF {

    public static void main(String[] args) {
        /**
         * 输入用户-->车辆条目  一个用户对应多个车辆
         * 用户ID	车辆ID集合
         *   A		a b d
         *   B		a c
         *   C		b e
         *   D		c d e
         */
        Scanner scanner = new Scanner(System.in);
        System.out.println("请输入用户总数：");
        //输入用户总量
        int N = scanner.nextInt();
        int[][] sparseMatrix = new int[N][N];//建立用户稀疏矩阵，用于用户相似度计算【相似度矩阵】
        Map<String, Integer> userItemLength = new HashMap<>();//存储每一个用户对应的不同车辆总数  eg: A 3
        Map<String, Set<String>> itemUserCollection = new HashMap<>();//建立车辆到用户的倒排表 eg: a A B
        Set<String> items = new HashSet<>();//辅助存储车辆集合
        Map<String, Integer> userID = new HashMap<>();//辅助存储每一个用户的用户ID映射
        Map<Integer, String> idUser = new HashMap<>();//辅助存储每一个ID对应的用户映射
        System.out.println("请输入用户-商品映射信息:<eg:A a b d>");
        scanner.nextLine();
        for(int i = 0; i < N ; i++){//依次处理N个用户 输入数据  以空格间隔
            String[] user_item = scanner.nextLine().split(" ");
            int length = user_item.length;
            userItemLength.put(user_item[0], length-1);//eg: A 3
            userID.put(user_item[0], i);//用户ID与稀疏矩阵建立对应关系
            idUser.put(i, user_item[0]);
            //建立车辆--用户倒排表
            for(int j = 1; j < length; j ++){
                if(items.contains(user_item[j])){//如果已经包含对应的车辆--用户映射，直接添加对应的用户
                    itemUserCollection.get(user_item[j]).add(user_item[0]);
                }else{//否则创建对应车辆--用户集合映射
                    items.add(user_item[j]);
                    itemUserCollection.put(user_item[j], new HashSet<String>());//创建车辆--用户倒排关系
                    itemUserCollection.get(user_item[j]).add(user_item[0]);
                }
            }
        }
        System.out.println(itemUserCollection.toString());
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
                    sparseMatrix[userID.get(user_u)][userID.get(user_v)] += 1;//计算用户u与用户v都有正反馈的车辆总数
                }
            }
        }
        System.out.println(userItemLength.toString());
        System.out.println("输入用户进行推荐:<eg:A>");
        String recommendUser = scanner.nextLine();
        System.out.println(userID.get(recommendUser));
        //计算用户之间的相似度【余弦相似性】
        int recommendUserId = userID.get(recommendUser);
        for (int j = 0;j < sparseMatrix.length; j++) {
            if(j != recommendUserId){
                System.out.println(idUser.get(recommendUserId)+"--"+idUser.get(j)+"相似度:"
                        +sparseMatrix[recommendUserId][j]/Math.sqrt(userItemLength.get(idUser.get(recommendUserId))*userItemLength.get(idUser.get(j))));
            }
        }

        //计算指定用户recommendUser的车辆推荐度
        for(String item: items){//遍历每一件车辆
            Set<String> users = itemUserCollection.get(item);//得到购买当前车辆的所有用户集合
            if(!users.contains(recommendUser)){//如果被推荐用户没有购买当前车辆，则进行推荐度计算
                double itemRecommendDegree = 0.0;
                for(String user: users){
                    itemRecommendDegree += sparseMatrix[userID.get(recommendUser)][userID.get(user)]/Math.sqrt(userItemLength.get(recommendUser)*userItemLength.get(user));//推荐度计算
                }
                System.out.println("推荐"+item+" 给 "+recommendUser +"，用户可能喜欢的概率为："+itemRecommendDegree);
            }
        }
        scanner.close();
    }

}