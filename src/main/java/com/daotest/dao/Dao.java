package com.daotest.dao;
import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import commons.Db;

@Component
public class Dao {
	/*----------------------------------회원등록DAO-------------------------------*/
	// insert
	public void insert(Map<String, String> d) {
	String sql = String.format("INSERT INTO dao_test VALUES (SQ_dao_test.NEXTVAL,'%s','%s','%s','%s','%s','%s','%s')",
			d.get("d_name"),d.get("d_id"),
			d.get("d_pass"),d.get("d_age"),d.get("d_email"),
			d.get("d_phone"),d.get("d_addr"));
		Db.executeUpdate(sql);
	}
	// select
	public ArrayList<HashMap<String, String>> select() {
		return Db.selectListMap("SELECT * FROM dao_test ORDER BY d_num DESC");
	}
	/*----------------------------------이미지파일등록DAO-------------------------------*/
	
	//img insert
	public void imginsert(Map<String, String> dd) {
	String sql = String.format("insert into img_test values(SQ_img_test.NEXTVAL,'%s','%s')",
			dd.get("title"),dd.get("imgs"));
		Db.executeUpdate(sql);
	}
	// img select
		public ArrayList<HashMap<String, String>> imgselect() {
			return Db.selectListMap("SELECT * FROM img_test ORDER BY i_num DESC");
	}
	
	/*----------------------------------텍스트파일등록DAO-------------------------------*/
		
	//file insert
		public void fileinsert(Map<String, String> f) {
			String sql =String.format("INSERT INTO file_test (i_num, i_title,i_file)\r\n" + 
					"VALUES (SQ_file_test.NEXTVAL, '%s', '%s')",f.get("i_title"),f.get("i_file"));
			Db.executeUpdate(sql);
		}
	//file select
		public ArrayList<HashMap<String, String>> fileselect(){
			return Db.selectListMap("SELECT * FROM file_test ORDER BY i_num DESC");
		}
}
