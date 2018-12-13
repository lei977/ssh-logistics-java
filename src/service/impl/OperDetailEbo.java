package service.impl;

import java.io.Serializable;
import java.util.List;

import dao.OperDetailDao;
import model.BaseQueryModel;
import model.OperDetailModel;
import service.OperDetailEbi;

public class OperDetailEbo implements OperDetailEbi{
	private OperDetailDao operDetailDao;
	public void setOperDetailDao(OperDetailDao operDetailDao) {
		this.operDetailDao = operDetailDao;
	}

	public void save(OperDetailModel om) {
		operDetailDao.save(om);
	}

	public void update(OperDetailModel om) {
		operDetailDao.update(om);
	}

	public void delete(OperDetailModel om) {
		operDetailDao.delete(om);
	}

	public OperDetailModel get(Serializable uuid) {
		return operDetailDao.get(uuid);
	}

	public List<OperDetailModel> getAll() {
		return operDetailDao.getAll();
	}

	public List<OperDetailModel> getAll(BaseQueryModel qm, Integer pageNum,Integer pageCount) {
		return operDetailDao.getAll(qm,pageNum,pageCount);
	}

	public Integer getCount(BaseQueryModel qm) {
		return operDetailDao.getCount(qm);
	}

}
