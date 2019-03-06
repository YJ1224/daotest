package com.daotest.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.daotest.dao.Dao;

@Service
@Transactional
public class Daoservice {
	// Dao
	@Autowired
	Dao dao;
	
	public void insert(Map<String,String> d) {
		dao.insert(d);
	}
	
	public ArrayList<HashMap<String, String>> select() {
		return dao.select();
	}
	
	public ArrayList<HashMap<String, String>> imgselect() {
		return dao.imgselect();
	}
	
	public ArrayList<HashMap<String, String>> fileselect() {
		return dao.fileselect();
	}
	
	@Autowired 
	String upath; //application-config 이름과 같아야함(주입)
	@Autowired
	String fpath;
	
	public Map<String, String> upload(MultipartFile f, String t) {
		// 정보출력
		System.out.printf("파일이름 : %s", f.getOriginalFilename());
		
		// 초기
		UUID uid = UUID.randomUUID(); //랜덤아이디 생성
		String oname = f.getOriginalFilename();
		String fname = uid.toString() + "_" + oname; // 유일한 이름
		// 리턴 맵
		Map<String, String> finfos = new HashMap<String,String>(){{
			put("oname",oname);
			put("fname",fname);
			put("title",t);
		}}; 
						
		// 파일처리
		File file = new File(upath, fname);
		try{
			FileCopyUtils.copy(f.getBytes(), file); //파일 copy
			return finfos;
		} catch (Exception e) {
			return null;
		}
		
	}
	
	/*------------------------이미지insert-----------------------------------*/
	public Map<String, String> imginsert(MultipartFile f, String t) {
		// 정보출력
		System.out.printf("파일이름 : %s", f.getOriginalFilename());
		
		// 초기
		UUID uid = UUID.randomUUID(); //랜덤아이디 생성
		String oname = f.getOriginalFilename();
		String fname = uid.toString() + "_" + oname; // 유일한 이름
		// 리턴 맵
		Map<String, String> finfos = new HashMap<String,String>(){{
			put("title",t);
			put("imgs",fname);
		}}; 
		dao.imginsert(finfos);
		
		// 파일처리
		File file = new File(upath, fname);
		try{
			FileCopyUtils.copy(f.getBytes(), file); //파일 copy
			return finfos;
		} catch (Exception e) {
			return null;
		}
	}
	
	/*------------------------파일insert-----------------------------------*/
	public Map<String, String> fileinsert(MultipartFile f, String t){
		UUID uid = UUID.randomUUID(); //랜덤아이디 생성
		String oname = f.getOriginalFilename();
		String fname = uid.toString() + "_" + oname; // 유일한 이름
		// 리턴 맵
		Map<String, String> finfos = new HashMap<String,String>(){{
			put("i_title",t);
			put("i_file",fname);
		}}; 
		dao.fileinsert(finfos);
		
		// 파일처리
		File file = new File(fpath, fname);
		try{
			FileCopyUtils.copy(f.getBytes(), file); //파일 copy
			return finfos;
		} catch (Exception e) {
			return null;
		}
	}
}
