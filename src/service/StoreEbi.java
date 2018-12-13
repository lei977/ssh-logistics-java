package service;

import org.springframework.transaction.annotation.Transactional;

import model.StoreModel;

@Transactional
public interface StoreEbi extends BaseEbi<StoreModel>{

}
