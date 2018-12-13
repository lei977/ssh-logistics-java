package service;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import model.BillQueryModel;
import model.OrderDetailModel;

public interface BillEbi {
	
	public List<Object[]> getBuyBill(BillQueryModel bqm);

	public List<OrderDetailModel> getBuyBillDetail(BillQueryModel bqm);

	public void writeJFreeChartToOs(OutputStream os,BillQueryModel bqm) throws Exception;

	public InputStream getWriteExcelStream(BillQueryModel bqm) throws Exception;

}
