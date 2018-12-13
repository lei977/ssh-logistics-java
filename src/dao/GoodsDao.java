package dao;

import java.util.List;

import model.GoodsModel;

public interface GoodsDao extends BaseDao<GoodsModel> {

	public List<GoodsModel> getAllByGtmUuid(Long uuid);

}
