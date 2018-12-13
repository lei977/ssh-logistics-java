package dao.impl;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import dao.RoleDao;
import model.BaseQueryModel;
import model.RoleModel;
import model.RoleQueryModel;

public class RoleImpl extends BaseImpl<RoleModel> implements RoleDao{

	public void doQbc(DetachedCriteria dc,BaseQueryModel qm){
		RoleQueryModel rqm = (RoleQueryModel)qm;
		// TODO 添加自定义查询条件
	}

}
