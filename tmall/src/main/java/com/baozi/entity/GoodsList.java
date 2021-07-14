package com.baozi.entity;


import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;



/**
 *
 * @desc   商品信息实体类
 * @author baozi
 * @data   2021/7/12
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@ApiModel("商品信息")
@TableName("goods_list")
public class GoodsList {

  @TableId(type = IdType.AUTO)
  private Long id;

  private String price;

  private Long starLevel;

  private String picPath;

  private String detailMsg;

  private Long salesCount;

  private Long status;

  @TableField(fill = FieldFill.INSERT)
  private LocalDate createTime;

  @TableField(fill = FieldFill.INSERT_UPDATE)
  private LocalDate updateTime;

  private Long type;

  private Long selfCount;

  private String sendAddress;

  private Integer commCount;
}
