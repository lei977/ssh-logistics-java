package service.impl;

import java.io.Serializable;
import java.util.List;

import dao.ResDao;
import model.BaseQueryModel;
import model.ResModel;
import service.ResEbi;

public class ResEbo implements ResEbi{
	private ResDao resDao;
	public void setResDao(ResDao resDao) {
		this.resDao = resDao;
	}

	public void save(ResModel rm) {
		resDao.save(rm);
	}

	public void update(ResModel rm) {
		resDao.update(rm);
	}

	public void delete(ResModel rm) {
		resDao.delete(rm);
	}

	public ResModel get(Serializable uuid) {
		return resDao.get(uuid);
	}

	public List<ResModel> getAll() {
		return resDao.getAll();
	}

	public List<ResModel> getAll(BaseQueryModel qm, Integer pageNum,Integer pageCount) {
		return resDao.getAll(qm,pageNum,pageCount);
	}

	public Integer getCount(BaseQueryModel qm) {
		return resDao.getCount(qm);
	}

	public List<ResModel> getAllByEmp(Long uuid) {
		return resDao.getAllByEmpUuid(uuid);
	}

}
