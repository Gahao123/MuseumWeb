package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDAO;
import dao.PlaceDAO;
import entity.Place;

public class PlaceDAOImpl extends BaseDAO implements PlaceDAO{
	/**
	 * @author wjh
	 * 查找出所有的账号
	 */
	public List<Place> getAllpla(){
		List<Place> ListPla=new ArrayList<Place>();//要返回的队列
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		/* 处理SQL,执行SQL */
		try {
			conn = connection(); // 得到数据库连接
			pstmt = conn.prepareStatement("SELECT * FROM museum.place"); // 得到PreparedStatement对象
			rs = pstmt.executeQuery(); // 执行SQL语句
			while(rs.next()) {
				Place pla=new Place();
				pla.setId(rs.getInt("idplace"));
				pla.setName(rs.getString("name"));
				pla.setLocation(rs.getString("location"));
				pla.setTimel(rs.getInt("timel"));
				pla.setTimer(rs.getInt("timer"));
				ListPla.add(pla);//队列插入
			}
		}catch(NullPointerException e) {
			System.out.println("连接失败！");
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace(); 
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return ListPla;
	}
	/**
	 * @author wjh
	 * 进入上一级来查找
	*/
	public int updatepla(String sql, Object[] param) {
		int count = super.executeSQL(sql, param);
		return count;//返回是否成功
	}
}
