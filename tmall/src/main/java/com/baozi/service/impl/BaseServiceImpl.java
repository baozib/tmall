package com.baozi.service.impl;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dm.model.v20151123.SingleSendMailRequest;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.entity.GoodsList;
import com.baozi.entity.UserMsg;
import com.baozi.handle.MyHTML;
import com.baozi.mapper.GoodsMapper;
import com.baozi.mapper.UserMapper;
import com.baozi.service.BaseService;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Random;

/**
 *
 * @desc   处理登入 注册 发送邮箱等逻辑
 * @author baozi
 * @data   2021/7/9
 */
@Service
@Log4j2
public class BaseServiceImpl implements BaseService<UserMsg> {

    /**
     * 注入用户操作持久层
     */
    @Autowired
    private UserMapper userMapper;

    /**
     * 注入商品操作持久层
     */
    @Autowired
    private GoodsMapper goodsMapper;

    //错误集
    public static final String ERROR = "发送错误";

    /**
     * 阿里Key
     */
    @Value("${alibaba.accessKeyId}")
    private String key;

    /**
     * 阿里Secret
     */
    @Value("${alibaba.accessKeySecret}")
    private String secret;

    /**
     * [pw] 注入加密算法
     */
    @Autowired
    private PasswordEncoder pw;

    @Override
    public int insertUser(UserMsg userMsg) {
        //判断账号是否重复
        UserMsg username = userMapper.selectOne
                (new QueryWrapper<UserMsg>().eq("username", userMsg.getUsername()));
        if(username != null ){
            return 0;
        }
        //判断邮箱是否重复
        UserMsg mailbox = userMapper.selectOne
                (new QueryWrapper<UserMsg>().eq("email", userMsg.getEmail()));
        if(mailbox != null){
            return 0;
        }
        //账号邮箱在数据库中不存在 对密码进行加密
        String encode = pw.encode(userMsg.getPassword());
        //插入
        userMsg.setPassword(encode);
        return userMapper.insert(userMsg);
    }

    @Override
    public String sendEmail(String userEmail) {
        //获得随机数
        Random random = new Random(System.currentTimeMillis());
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append(random.nextInt(10));
        }

        //输入密钥和key
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", key, secret);
        IAcsClient client = new DefaultAcsClient(profile);

        try{
            SingleSendMailRequest request = MyHTML.Builder(userEmail);
            request.setHtmlBody(new MyHTML().insertRandom(sb.toString()));
            //发送
            client.getAcsResponse(request);
        }catch (Exception e){
            log.info(ERROR);
        }
        return sb.toString();
    }

    @Override
    public List<GoodsList> getGoodsListReType(int type, int limit) {
        QueryWrapper<GoodsList> condition = new QueryWrapper<>();
        //查询类型 0为查询全部
        if(type != 0){
            condition.eq("type",type);
        }
        //查询数量 0为查询全部
        if(limit != 0){
            condition.last("order by Rand() limit " + limit);
        }
        List<GoodsList> goodsLists = goodsMapper.selectList(condition);

        return goodsLists;
    }

    @Override
    public List<GoodsList> getGoodsListReAll(int type, int price, String content, int complex) {
        QueryWrapper<GoodsList> condition = new QueryWrapper<>();
        condition.like("detail_msg",content);
        System.out.println(content);
        if(type == 0 && price == 0 && StringUtils.equals("",content) && complex == 0){
            condition.last("order by Rand()");
        }

        return goodsMapper.selectList(condition);
    }

}
