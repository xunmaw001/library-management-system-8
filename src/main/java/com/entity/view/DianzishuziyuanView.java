package com.entity.view;

import com.entity.DianzishuziyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 电子书资源
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-21 13:51:38
 */
@TableName("dianzishuziyuan")
public class DianzishuziyuanView  extends DianzishuziyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DianzishuziyuanView(){
	}
 
 	public DianzishuziyuanView(DianzishuziyuanEntity dianzishuziyuanEntity){
 	try {
			BeanUtils.copyProperties(this, dianzishuziyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
