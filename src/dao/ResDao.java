package dao;

import java.util.List;

import model.ResModel;

public interface ResDao extends BaseDao<ResModel> {

	public List<ResModel> getAllByEmpUuid(Long uuid);

}
