package com.daotest.controller;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daotest.service.Daoservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class Daocontroller {
	
	// service
	@Autowired
	Daoservice ds;
	
	@Resource
	private String upath;
	@Resource
	private String fpath;
	
	
	// 요청 GET/daotest.do
	@GetMapping("daotest.do")
	public String daotestGet(){
		return "daotest";
		
	}
	// 요청 POST/daotest.do
	@RequestMapping(value="/daolist.do",method=RequestMethod.POST)
	public ModelAndView daotestPost(@RequestParam Map<String, String> pm) {
		ds.insert(pm);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", ds.select());
		mv.setViewName("daolist");
		return mv;
	}
	
	@GetMapping("daolist.do")
	public ModelAndView daolistget() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", ds.select());
		mv.setViewName("daolist");
		return mv;
	}
	
	
	@RestController
	@RequestMapping("/spr")
	public class SrController {
		
	@RequestMapping("/list")
	public ArrayList<HashMap<String, String>> Testlist(){
		return ds.select();
	}
	}

	/*------------------------이미지파일업로드-----------------------------------*/
	// 요청 GET/daotest.do
	@GetMapping("upform")
	public String imgtestGet() {
		return "files/upform";

	}
	// 요청 POST/daotest.do
	@RequestMapping(value = "/up", method = RequestMethod.POST)
	public ModelAndView imgtestPost(@RequestParam("i_imgs") MultipartFile f, 
			@RequestParam("i_title") String t) {
		ds.imginsert(f, t);
		ModelAndView mv = new ModelAndView();
		mv.addObject("imglist", ds.imgselect());
		mv.setViewName("redirect:up.do");
		return mv;
	}

	@GetMapping("/up.do")
	public ModelAndView imgtestget() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("imglist", ds.imgselect());
		mv.setViewName("files/up");
		return mv;
	}
	/*------------------------파일업로드-----------------------------------*/	
	// 요청 GET/daotest.do
		@GetMapping("upfile")
		public String filetestGet() {
			return "files/upfile";

		}

		// 요청 POST/daotest.do
		@RequestMapping(value = "/upfile", method = RequestMethod.POST)
		public ModelAndView filetestPost(@RequestParam("i_file") MultipartFile f, 
				@RequestParam("i_title") String t) {
			ds.fileinsert(f, t);
			ModelAndView mv = new ModelAndView();
			mv.addObject("imglist", ds.fileselect());
			mv.setViewName("redirect:file.do");
			return mv;
		}

		@GetMapping("/file.do")
		public ModelAndView filetestget() {
			ModelAndView mv = new ModelAndView();
			mv.addObject("filelist", ds.fileselect());
			mv.setViewName("files/file");
			return mv;
		}
	
	
		/*------------------------이미지파일다운로드-----------------------------------*/
	//다운로드 서비스
	@GetMapping(value="/down")
	public HttpEntity<byte[]> down(@RequestParam(value="fn") String fn){
		File f = new File(upath, fn);
		try {
			byte[] f_list = Files.readAllBytes(f.toPath());
			// response
			HttpHeaders h = new HttpHeaders();
			h.setContentType(MediaType.TEXT_PLAIN);
			h.set(HttpHeaders.CONTENT_DISPOSITION, "attahment; filenama="+fn.replace(" ","_"));
			h.setContentLength(f_list.length);
			return new HttpEntity<byte[]>(f_list, h);
		
		} catch (IOException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return null;
	}
	/*------------------------파일다운로드-----------------------------------*/
	@GetMapping(value="/download")
	public HttpEntity<byte[]> downs(@RequestParam(value="fn") String fn){
		File f = new File(fpath, fn);
		try {
			byte[] f_list = Files.readAllBytes(f.toPath());
			// response
			HttpHeaders h = new HttpHeaders();
			h.setContentType(MediaType.TEXT_PLAIN);
			h.set(HttpHeaders.CONTENT_DISPOSITION, "attahment; filenama="+fn.replace(" ","_"));
			h.setContentLength(f_list.length);
			return new HttpEntity<byte[]>(f_list, h);
		
		} catch (IOException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return null;
	}
	}