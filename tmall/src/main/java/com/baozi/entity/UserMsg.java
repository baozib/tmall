package com.baozi.entity;


import com.alibaba.druid.proxy.jdbc.JdbcParameter;
import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@ApiModel("用户信息")
@TableName("user_msg")
public class UserMsg {

  @TableId(type = IdType.ASSIGN_ID)
  private Long id;

  @TableField("username")
  private String username;

  @TableField("password")
  private String password;

  @TableField("price")
  private Long price;

  @TableField("name")
  private String name;

  @TableField("career")
  private Long career;

  @TableField(fill = FieldFill.INSERT)
  private LocalDate createTime;

  @TableField(fill = FieldFill.UPDATE)
  private LocalDate updateTime;

  @TableField("version")
  private String version;

  @TableField("email")
  private String email;

  @TableField("telephone")
  private String telephone;

  private String address;

}
