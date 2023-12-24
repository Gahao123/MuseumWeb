package serviceImpl;

import java.util.ArrayList;
import java.util.List;

import daoImpl.PlaceDAOImpl;
import entity.Place;
import service.CheckAllPlace;

public class PlaceServiceImpl implements CheckAllPlace {

	@Override
	/**
	 * 查找所有的地点
	 */
	public List<Place> CheckAllPlaceService() {
		PlaceDAOImpl placeDAO=new PlaceDAOImpl();
		List<Place> table0=new ArrayList<Place>();
		table0=placeDAO.getAllpla();
		return table0;
	}

}
