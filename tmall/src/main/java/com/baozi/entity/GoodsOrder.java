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
 * @desc   订单信息
 * @author baozi
 * @data   2021/7/12
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@ApiModel("商品信息")
@TableName("goods_order")
public class GoodsOrder {

  @TableId(type = IdType.AUTO)
  private Long id;

  private Long userId;

  private String orderNo;

  @TableField(fill = FieldFill.INSERT)
  private LocalDate createTime;

  private Long goodsId;

  private String price;

  private Long status;

  private String addressId;

  private Integer overtime;

}
