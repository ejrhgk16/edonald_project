package com.edonald.hadmin.serivce;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dao.HadminMapper;
import com.edonald.hadmin.dto.ChartSearchDto;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.PromotionDto;
import com.edonald.order.dto.CartDto;
import com.edonald.order.dto.OrderListDto;

@Service
public class HadminServiceImple implements HadminService {

	@Autowired
	HadminMapper mapper;
	
	@Override
	public void insertPromotion(PromotionDto dto) {
		mapper.insertPromotion(dto);
	}
	
	@Override
	public List<PromotionDto> getPromotionList(){
		return mapper.getPromotionList();
	}
	
	@Override
	public PromotionDto getPromotion(int p_seq) {
		return mapper.getPromotion(p_seq);
	}
	
	@Override
	public void updatePromotion(PromotionDto dto) {
		mapper.updatePromotion(dto);
	}

	@Override
	public List<Integer> getChartDataAll(ChartSearchDto dto) {
		return  mapper.getChartDataAll(dto);
	}

	@Override
	public String getStoreName(String search) {		
		return mapper.getStoreName(search);
	}

	@Override
	public List<Integer> getGenderSales(ChartSearchDto dto) {
		return mapper.getGenderSalesData(dto);
	}
	@Override
	public List<Integer> getSalesVolumeBySeq(int menu_code, String monthorday){
		return mapper.getSalesVolumeBySeq(menu_code, monthorday);
	}

	@Override
	public MenuDto getMenuBySeq(int menu_code) {
		return mapper.getMenuBySeq(menu_code);
		
	}
	@Override
	public List<Integer> getSalesVolumeBySeqAndGender(int menu_code,String monthorday,String user_gender){
		return mapper.getSalesVolumeBySeqAndGender(menu_code, monthorday, user_gender);
	}
	@Override
	public List<CartDto> getEachMenuSalesVolume(int user_gender, String menu_type, String order_date) {
		return mapper.getEachMenuSalesVolume(user_gender, menu_type, order_date);
	}

	@Override
	public void getExcel(HttpServletResponse res) {
		List<OrderListDto> excelData = mapper.getExcelData();

		if (excelData != null && excelData.size() > 0) {
			String fileName = "orderList.xlsx";
			String[] colNames = { "No","매장번호", "이름", "주문날짜", "주소", "주문가격", "주문번호", "결제방식"};
			int[] colWidths = { 3000, 3000, 5000, 6000, 10000, 5000, 5000, 5000 };
			XSSFWorkbook workbook = new XSSFWorkbook();
			XSSFSheet sheet = null;
			XSSFCell cell = null;
			XSSFRow row = null;
			CellStyle bodyStyle = workbook.createCellStyle();
			bodyStyle.setAlignment(HorizontalAlignment.CENTER);
			int rowCnt = 0;
			int cellCnt = 0;
			int listCount = excelData.size();

			sheet = workbook.createSheet("주문내역");
			row = sheet.createRow(rowCnt++);

			for (int i = 0; i < colNames.length; i++) {
				cell = row.createCell(i);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(colNames[i]);
				sheet.setColumnWidth(i, colWidths[i]); // column width 지정
			}

			for (OrderListDto dto : excelData) {
				cellCnt = 0;
				// order_seq
				row = sheet.createRow(rowCnt++);
				cell = row.createCell(cellCnt++);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(dto.getOrder_seq());
				
				cell = row.createCell(cellCnt++);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(dto.getStore_code());

				cell = row.createCell(cellCnt++);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(dto.getUser_name());

				cell = row.createCell(cellCnt++);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(dto.getOrder_date().toString());

				cell = row.createCell(cellCnt++);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(dto.getUser_address());

				cell = row.createCell(cellCnt++);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(dto.getFinal_price());

				cell = row.createCell(cellCnt++);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(dto.getMerchanuid());

				cell = row.createCell(cellCnt++);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(dto.getPayment_type());

			}
			res.setContentType("application/vnd.ms-excel");
			res.setHeader("Content-Disposition", "attachment;filename=" + fileName);
	
			try {
				workbook.write(res.getOutputStream());
				workbook.close();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}else {
			String fileName = "orderList.xlsx";
			String[] colNames = { "주문내역이 없음" };
			int[] colWidths = {  6000 };
			XSSFWorkbook workbook = new XSSFWorkbook();
			XSSFSheet sheet = null;
			XSSFCell cell = null;
			XSSFRow row = null;
			CellStyle bodyStyle = workbook.createCellStyle();
			bodyStyle.setAlignment(HorizontalAlignment.CENTER);
			int rowCnt = 0;
			sheet = workbook.createSheet("주문내역");
			row = sheet.createRow(rowCnt++);

			for (int i = 0; i < colNames.length; i++) {
				cell = row.createCell(i);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(colNames[i]);
				sheet.setColumnWidth(i, colWidths[i]); // column width 지정
			}
			res.setContentType("application/vnd.ms-excel");
			res.setHeader("Content-Disposition", "attachment;filename=" + fileName);
	
			try {
				workbook.write(res.getOutputStream());
				workbook.close();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}
		}
}
