package kh.com.photofolio.service;

import java.util.ArrayList;
import java.util.HashMap;

import kh.com.photofolio.dao.Admin_reportDAO;
import kh.com.photofolio.dto.ReportInfoDTO;

public class Admin_reportService {
	Admin_reportDAO dao = new Admin_reportDAO();
	private int recordCntPage = 10; //하나의 페이지에 들어갈 데이터 갯수
	private int naviCntPerPage = 10; // 네비게이션 한 바퀴 단위s
	
	public ArrayList<ReportInfoDTO> printReport(int currentPage){ //회원 전체 내역 페이징 처리를 위한 메서드
		int startRange = currentPage * recordCntPage - (recordCntPage-1);
		int endRange = currentPage * recordCntPage;
		try {
			ArrayList<ReportInfoDTO> list = dao.getReportList(startRange, endRange);
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	public ArrayList<ReportInfoDTO> getReportByReportType(String value, int currentPage){ //회원 전체 내역 페이징 처리를 위한 메서드
		int startRange = currentPage * recordCntPage - (recordCntPage-1);
		int endRange = currentPage * recordCntPage;
		try {
			ArrayList<ReportInfoDTO> list = dao.getReportByReportType(value, startRange, endRange);
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	public ArrayList<ReportInfoDTO> getReportByReportNo(String value, int currentPage){ //회원 전체 내역 페이징 처리를 위한 메서드
		int startRange = currentPage * recordCntPage - (recordCntPage-1);
		int endRange = currentPage * recordCntPage;
		try {
			ArrayList<ReportInfoDTO> list = dao.getReportByreportNo(value, startRange, endRange);
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	public ArrayList<ReportInfoDTO> getReportByIdOrNickname(String value, int currentPage){ //회원 전체 내역 페이징 처리를 위한 메서드
		int startRange = currentPage * recordCntPage - (recordCntPage-1);
		int endRange = currentPage * recordCntPage;
		try {
			ArrayList<ReportInfoDTO> list = dao.getReportByIdOrNickname(value, startRange, endRange);
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	public ArrayList<ReportInfoDTO> getReportByReportContent(String value, int currentPage){ //회원 전체 내역 페이징 처리를 위한 메서드
		int startRange = currentPage * recordCntPage - (recordCntPage-1);
		int endRange = currentPage * recordCntPage;
		try {
			ArrayList<ReportInfoDTO> list = dao.getReportByReportContent(value, startRange, endRange);
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	public ArrayList<ReportInfoDTO> getReportByKeyword(String value, int currentPage){ //회원 전체 내역 페이징 처리를 위한 메서드
		int startRange = currentPage * recordCntPage - (recordCntPage-1);
		int endRange = currentPage * recordCntPage;
		try {
			ArrayList<ReportInfoDTO> list = dao.getReportByKeyword(value, startRange, endRange);
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	public HashMap<String, Object> getPageNavi(int currentPage, int totalCnt){ //네비 시작/끝 + 앞뒤 버튼 필요여부 반환
		int recordTotalCnt = totalCnt; //총데이터수 

		//페이지 수 설정
		int pageTotalCnt = 0;  //총 페이지 수
		if(recordTotalCnt%recordCntPage>0) { //데이터가 페이지에 맞게 들어가지 않을 경우 다음 페이지로 넘기기 => recordCntPage : 한 페이지 당 들어갈 데이터 수
			pageTotalCnt = (recordTotalCnt/recordCntPage)+1;
		}else {
			pageTotalCnt = (recordTotalCnt/recordCntPage);
		}
		
		
		//currentPage 안전장치
		
		if(currentPage<0) {
			currentPage = 1;
		}else if(currentPage>pageTotalCnt) {
			currentPage = pageTotalCnt;
		}
		
		int startNavi = ((currentPage-1)/naviCntPerPage)*naviCntPerPage+1; //네비 시작 숫자
		int endNavi = startNavi + naviCntPerPage -1;  //네비 끝 숫자
		
		if(endNavi > pageTotalCnt) {  //네비 끝 숫자가 총 페이지수 보다 크다면 네비 끝 숫자를 총 페이지 수로 맞추기
			endNavi = pageTotalCnt;
		}
		
		//이전, 다음 버튼 필요 여부
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) {
			needPrev = false;
			if(pageTotalCnt<naviCntPerPage) {
				needNext = false;
			}
		}else if(endNavi == pageTotalCnt) {
			needNext = false;
		}
		
		System.out.println(startNavi + " : "+endNavi + " : "+needPrev+" : "+needNext);
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("startNavi", startNavi);
		map.put("endNavi", endNavi);
		map.put("needPrev", needPrev);
		map.put("needNext",needNext);
		map.put("currentPage", currentPage);
		return map;
	}
}
