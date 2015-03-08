package m.Helper;

import java.net.UnknownHostException;

import m.Util.PropertiesFileUtil;

import com.mongodb.DB;
import com.mongodb.Mongo;

public class MongoDbHelper {
	
	public static DB GetInsctance() throws UnknownHostException {
		Mongo m = new Mongo(PropertiesFileUtil.getPro("global.properties", "address"), PropertiesFileUtil.getPro("global.properties", "port"));
		DB db = m.getDB("ePei");
		return db;
	}

}
