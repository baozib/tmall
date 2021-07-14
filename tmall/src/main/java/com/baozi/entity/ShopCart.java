package com.baozi.entity;


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
@ApiModel("购物车")
@TableName("shop_cart")
public class ShopCart {

  @TableId(type = IdType.AUTO)
  private Long id;

  private Long userId;

  private Long goodsId;

  @TableField(fill = FieldFill.INSERT)
  private LocalDate createTime;

  private String allPrice;

  private Long count;

}
