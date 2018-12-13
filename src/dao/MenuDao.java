package dao;

import java.util.List;

import model.MenuModel;

public interface MenuDao extends BaseDao<MenuModel> {

	public List<MenuModel> getByPuuidIsOneOrZero();

	public List<MenuModel> getAllOneLevelByEmpUuid(Long uuid);

	public List<MenuModel> getByEmpUuidAndPuuid(Long uuid, Long puuid);

}
