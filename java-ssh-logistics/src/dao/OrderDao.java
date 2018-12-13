package dao;

import java.util.List;

import model.OrderModel;
import model.OrderQueryModel;

public interface OrderDao extends BaseDao<OrderModel> {

	public List<OrderModel> getAllOrderTypes(OrderQueryModel oqm, Integer pageNum,
			Integer pageCount, Integer[] orderTypes);

	public Integer getCountOrderTypes(OrderQueryModel oqm,
			Integer[] buyCheckOrderTypes);

	public List<OrderModel> getAllTypes(OrderQueryModel oqm, Integer pageNum,
			Integer pageCount, Integer[] types);

	public Integer getAllTypes(OrderQueryModel oqm, Integer[] types);

}
