package dao;

import model.StoreDetailModel;

public interface StoreDetailDao extends BaseDao<StoreDetailModel> {

	public StoreDetailModel getBySmAndGm(Long storeUuid, Long uuid);

}
