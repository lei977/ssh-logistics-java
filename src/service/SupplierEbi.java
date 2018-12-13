package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import model.SupplierModel;

@Transactional
public interface SupplierEbi extends BaseEbi<SupplierModel>{
	/**
	 * 获取具有商品类别信息的供应商信息
	 * @return
	 */
	public List<SupplierModel> getAllUnion();
	/**
	 * .....
	 * @return
	 */
	public List<SupplierModel> getAllUnionTwo();

}
