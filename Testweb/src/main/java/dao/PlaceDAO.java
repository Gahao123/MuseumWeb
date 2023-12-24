package dao;

import java.util.List;

import entity.Place;

public interface PlaceDAO {
	/**
	 * 查找所有地点
	 * @return
	 */
	public List<Place> getAllpla();
	/**
	 * 更新地点账号信息
	 * @author wjh
	 * @param sql
	 * @param param
	 * @return
	 */
	public int updatepla(String sql, Object[] param);
}
