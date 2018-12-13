package service;

import org.springframework.transaction.annotation.Transactional;

import model.StoreDetailModel;

@Transactional
public interface StoreDetailEbi extends BaseEbi<StoreDetailModel>{

}
