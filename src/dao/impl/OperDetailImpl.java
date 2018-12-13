package dao.impl;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import dao.OperDetailDao;
import model.BaseQueryModel;
import model.OperDetailModel;
import model.OperDetailQueryModel;

public class OperDetailImpl extends BaseImpl<OperDetailModel> implements OperDetailDao{

	public void doQbc(DetachedCriteria dc,BaseQueryModel qm){
		OperDetailQueryModel oqm = (OperDetailQueryModel)qm;
		// TODO 添加自定义查询条件
	}

}
