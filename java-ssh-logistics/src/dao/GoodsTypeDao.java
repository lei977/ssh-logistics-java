package dao;

import java.util.List;

import model.GoodsTypeModel;

public interface GoodsTypeDao extends BaseDao<GoodsTypeModel> {

	public List<GoodsTypeModel> getAllBySmUuid(Long uuid);

	public List<GoodsTypeModel> getAllUnionBySmUuid(Long uuid);

}
