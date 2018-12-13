package service;

import org.springframework.transaction.annotation.Transactional;

import model.OperDetailModel;

@Transactional
public interface OperDetailEbi extends BaseEbi<OperDetailModel>{

}
