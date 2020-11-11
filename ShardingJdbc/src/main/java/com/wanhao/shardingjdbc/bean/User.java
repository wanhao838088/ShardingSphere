package com.wanhao.shardingjdbc.bean;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * Created by LiuLiHao on 2020/11/11 15:52
 *
 * @author : LiuLiHao
 * 描述：
 */
@Data
@TableName(value = "t_user")
public class User {
    private Long userId;
    private String username;
    private String ustatus;

}
