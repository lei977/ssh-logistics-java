package dao.impl;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import dao.OrderDetailDao;
import model.BaseQueryModel;
import model.OrderDetailModel;
import model.OrderDetailQueryModel;

public class OrderDetailImpl extends BaseImpl<OrderDetailModel> implements OrderDetailDao{

	public void doQbc(DetachedCriteria dc,BaseQueryModel qm){
		OrderDetailQueryModel oqm = (OrderDetailQueryModel)qm;
		// TODO 添加自定义查询条件
	}

}
