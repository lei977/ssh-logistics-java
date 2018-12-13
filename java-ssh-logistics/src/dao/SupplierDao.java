package dao;

import java.util.List;

import model.SupplierModel;

public interface SupplierDao extends BaseDao<SupplierModel> {

	public List<SupplierModel> getAllUnion();

	public List<SupplierModel> getAllUnionTwo();

}
