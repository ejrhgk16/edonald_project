package com.edonald.sadmin.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edonald.hadmin.dto.ChartSearchDto;
import com.edonald.hadmin.dto.MenuDto;
import com.edonald.hadmin.dto.StoreDto;
import com.edonald.order.dto.OrderListDto;
import com.edonald.sadmin.dao.SadminMapper;

@Service
public class SadminServiceImpl implements SadminService {

	@Autowired
	SadminMapper mapper;

	@Override
	public StoreDto getStore(int store_code) {
		return mapper.getStore(store_code);
	}

	@Override
	public void updateStoreStatus(Map<String, String> map) {
		mapper.updateStoreStatus(map);
	}

	@Override
	public List<OrderListDto> getOrderList(int store_code) {
		List<OrderListDto> list = mapper.getOrderList(store_code);
		for (OrderListDto li : list) {
			li.setCartList(mapper.getCartList(li.getMerchanuid()));
		}
		return list;
	}

	@Override
	public List<OrderListDto> getNewOrderList(int store_code, int order_seq) {
		List<OrderListDto> list = mapper.getNewOrderList(store_code, order_seq);
		for (OrderListDto li : list) {
			li.setCartList(mapper.getCartList(li.getMerchanuid()));
		}
		return list;
	}

//	@Override
//	public void updateOrder(int order_seq,int order_status) {
//		mapper.updateOrder(order_seq, order_status);
//	}
	@Override
	public void updateOrder(OrderListDto dto) {
		mapper.updateOrder(dto);
	}

	@Override
	public OrderListDto getOrderListBySeq(int order_seq) {
		return mapper.getOrderListBySeq(order_seq);
	}

	@Override
	public List<Integer> getSalesVolumeBySeq(int menu_code, String monthorday, int store_code) {
		return mapper.getSalesVolumeBySeq(menu_code, monthorday, store_code);
	}

	@Override
	public List<Integer> getSalesVolumeBySeqAndGender(int menu_code, String monthorday, String user_gender,
			int store_code) {
		return mapper.getSalesVolumeBySeqAndGender(menu_code, monthorday, user_gender, store_code);
	}

	@Override
	public List<Integer> getChartDataAll(ChartSearchDto dto) {
		return mapper.getChartDataAll(dto);
	}

	@Override
	public List<Integer> getGenderSales(ChartSearchDto dto) {
		return mapper.getGenderSalesData(dto);
	}

	@Override
	public void getExcel(int store_code, HttpServletResponse res) {
		List<OrderListDto> excelData = mapper.getExcelData(store_code);

		if (excelData != null && excelData.size() > 0) {
			String fileName = "orderList.xlsx";
			String[] colNames = { "No", "이름", "주문날짜", "주소", "주문가격", "주문번호", "결제방식" };
			int[] colWidths = { 3000, 5000, 6000, 10000, 5000, 5000, 5000 };
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
