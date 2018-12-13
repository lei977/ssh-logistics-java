package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import model.ResModel;

@Transactional
public interface ResEbi extends BaseEbi<ResModel>{
	/**
	 * 获取指定员工所有可操作资源信息
	 * @param uuid 员工uuid
	 * @return
	 */
	public List<ResModel> getAllByEmp(Long uuid);

}
