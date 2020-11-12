package com.wanhao.shardingjdbc.bean;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "system_dict")
public class SystemDict {
    private Long dictid;
    private String ustatus;
    private String uvalue;

}
