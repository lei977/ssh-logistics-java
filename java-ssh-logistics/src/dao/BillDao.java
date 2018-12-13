package dao;

import java.util.List;

import model.BillQueryModel;
import model.OrderDetailModel;

public interface BillDao{

	public List<Object[]> getBuyBill(BillQueryModel bqm);

	public List<OrderDetailModel> getBuyBillDetail(BillQueryModel bqm);

}
