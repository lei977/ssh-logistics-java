package dao.impl;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import dao.DepDao;
import model.BaseQueryModel;
import model.DepModel;
import model.DepQueryModel;

public class DepImpl extends BaseImpl<DepModel> implements DepDao {

	public void doQbc(DetachedCriteria dc, BaseQueryModel qm) {
		
		// 使用QBC查询
		DepQueryModel dqm = (DepQueryModel) qm;
		// 根据查询条件中封装的数据完成查询操作
		if (dqm.getName() != null && dqm.getName().trim().length() > 0) {
			dc.add(Restrictions.like("name", "%" + dqm.getName().trim() + "%"));
		}
		if (dqm.getTele() != null && dqm.getTele().trim().length() > 0) {
			dc.add(Restrictions.like("tele", "%" + dqm.getTele().trim() + "%"));
		}
	}

}
