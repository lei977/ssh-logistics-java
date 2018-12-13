package action;

import java.util.List;

import model.OperDetailModel;
import model.OperDetailQueryModel;
import service.OperDetailEbi;

public class OperDetailAction extends BaseAction {
	public OperDetailModel om = new OperDetailModel();
	public OperDetailQueryModel oqm = new OperDetailQueryModel();

	private OperDetailEbi operDetailEbi;

	public void setOperDetailEbi(OperDetailEbi operDetailEbi) {
		this.operDetailEbi = operDetailEbi;
	}

	// 列表
	public String list() {
		setDataTotal(operDetailEbi.getCount(oqm));
		List<OperDetailModel> operDetailList = operDetailEbi.getAll(oqm, pageNum, pageCount);
		put("operDetailList", operDetailList);
		return LIST;
	}

	// 操作明细只需要查询列表功能，并不用添加修改删除等功能

}
