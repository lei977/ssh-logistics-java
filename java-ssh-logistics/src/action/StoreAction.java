package action;

import java.util.List;

import model.EmpModel;
import model.StoreModel;
import model.StoreQueryModel;
import service.EmpEbi;
import service.StoreEbi;

public class StoreAction extends BaseAction{
	public StoreModel sm = new StoreModel();
	public StoreQueryModel sqm = new StoreQueryModel();

	private StoreEbi storeEbi;
	private EmpEbi empEbi;
	public void setEmpEbi(EmpEbi empEbi) {
		this.empEbi = empEbi;
	}
	public void setStoreEbi(StoreEbi storeEbi) {
		this.storeEbi = storeEbi;
	}

	//列表
	public String list(){
		setDataTotal(storeEbi.getCount(sqm));
		List<StoreModel> storeList = storeEbi.getAll(sqm,pageNum,pageCount);
		put("storeList", storeList);
		return LIST;
	}

	//到添加
	public String input(){
		List<EmpModel> empList = empEbi.getByDep(getLogin().getDm().getUuid());
		put("empList",	empList);
		if(sm.getUuid()!=null){
			sm = storeEbi.get(sm.getUuid());
		}
		return INPUT;
	}

	//添加
	public String save(){
		if(sm.getUuid() == null){
			storeEbi.save(sm);
		}else{
			storeEbi.update(sm);
		}
		return TO_LIST;
	}

	//删除
	public String delete(){
		storeEbi.delete(sm);
		return TO_LIST;
	}

}
