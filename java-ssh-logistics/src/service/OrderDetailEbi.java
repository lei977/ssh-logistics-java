package service;

import org.springframework.transaction.annotation.Transactional;

import model.OrderDetailModel;

@Transactional
public interface OrderDetailEbi extends BaseEbi<OrderDetailModel>{

}
