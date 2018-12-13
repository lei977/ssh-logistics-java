package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import model.GoodsModel;

@Transactional
public interface GoodsEbi extends BaseEbi<GoodsModel>{
	/**
	 * 获取指定商品类别对应的所有商品信息
	 * @param uuid 类别uuid
	 * @return
	 */
	public List<GoodsModel> getAllByGtm(Long uuid);

}
