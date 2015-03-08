package m.Util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

/**
 * Properties 配置文件解析
 * @author tanghaiyang
 *
 */
public class PropertiesFileUtil {
	
	public static byte[] getFileByte(String fileName, String pro)throws IOException{
		byte[] b = null;
		InputStream in = null;
		try{
			Properties prop = new Properties();
			in = PropertiesFileUtil.class.getClassLoader().getResourceAsStream(fileName); 
			if(null == in)throw new RuntimeException("没有找到配置文件"+fileName);
			prop.load(in);
			in.close();
			String filepath = prop.getProperty(pro);
			if(null == filepath)throw new RuntimeException("没有找到配置信息"+pro);
			in = new FileInputStream(new File(filepath));
			if(null == in)throw new RuntimeException("文件不存在"+filepath);
			b = new byte[20480];
			in.read(b);
		}finally{
			if(null!=in)in.close();
		}
		return b;
	}
	
	/**
	 * 获取配置文件key值
	 * @param pro
	 * @return
	 */
	public static String getPro(String fileName, String pro){
		InputStream in = null;
		try{
			Properties prop = new Properties();
			in = PropertiesFileUtil.class.getClassLoader().getResourceAsStream(fileName); 
			if(null == in)throw new RuntimeException("没有找到配置文件"+fileName);
			prop.load(in);
			in.close();
			return prop.getProperty(pro).trim();
		}catch(Exception ex){
			RuntimeException rex = new RuntimeException(ex.getMessage());
			rex.setStackTrace(ex.getStackTrace());
			throw rex;
		}finally{
			if(null!=in){
				try{
					in.close();
				}catch(Exception ex){
					RuntimeException rex = new RuntimeException(ex.getMessage());
					rex.setStackTrace(ex.getStackTrace());
					throw rex;
				}
			}
			
		}
	}
	
	/**
	 * 变更配置文件key值
	 * @param pro
	 * @return
	 */
	public static void setPro(String fileName, String pro, String val){
		InputStream in = null;
		OutputStream out = null;
		try{
			Properties prop = new Properties();
			in = PropertiesFileUtil.class.getClassLoader().getResourceAsStream(fileName); 
			if(null == in)throw new RuntimeException("没有找到配置文件"+fileName);
			prop.load(in);
			System.out.println(PropertiesFileUtil.class.getClassLoader().getResource(fileName).getPath());
			out = new FileOutputStream(PropertiesFileUtil.class.getClassLoader().getResource(fileName).getFile());
			prop.setProperty(pro, val);
			prop.store(out,  "Update '" + pro + "' value");
		}catch(Exception ex){
			ex.printStackTrace();
			RuntimeException rex = new RuntimeException(ex.getMessage());
			rex.setStackTrace(ex.getStackTrace());
			throw rex;
		}finally{
			if(null!=in){
				try{
					in.close();
				}catch(Exception ex){
					RuntimeException rex = new RuntimeException(ex.getMessage());
					rex.setStackTrace(ex.getStackTrace());
					throw rex;
				}
			}
			if(null!=out){
				try{
					out.flush();
					out.close();
				}catch(Exception ex){
					RuntimeException rex = new RuntimeException(ex.getMessage());
					rex.setStackTrace(ex.getStackTrace());
					throw rex;
				}
			}
			
		}
	}
	
}
