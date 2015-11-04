package Connection;

import java.sql.Connection;




public interface ConnectionInterface {

	Connection getConnection() throws Exception;
	
	int checkConnection(int year, int month) throws Exception;	
	
	void insertConnection(int year, int month) throws Exception;
	
	void updateConnection(int year, int month, int age) throws Exception;
	
	ConnectionDTO selectConnection(int year, int month) throws Exception;
	
	
}