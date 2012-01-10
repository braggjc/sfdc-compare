package pl.skrodzki.sfdc.compare;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;

import jxl.CellView;
import jxl.Workbook;
import jxl.WorkbookSettings;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.Colour;
import jxl.format.UnderlineStyle;
import jxl.format.VerticalAlignment;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

public class WriteExcel {

	private WritableCellFormat timesBoldUnderline;
	private WritableCellFormat timesBoldUnderline2;
	private String inputFile;
	public boolean withLinesNumbers;

	public void setOutputFile(String inputFile) {
		this.inputFile = inputFile;
	}

	public void write(
			String filename,
			HashMap<String, HashMap<String, HashMap<String, Compare.Difference>>> toWrite) {
		this.inputFile = filename;
		LinkedList<String> sheets = new LinkedList<String>();
		LinkedList<String> columns = new LinkedList<String>();
		LinkedList<Integer> columnsSize = new LinkedList<Integer>();
		// sheets.addAll(toWrite.keySet());
		columns.add("mastertag");
		columns.add("property");
		columns.add("diff1");
		columns.add("diff2");
		HashMap<String, LinkedList<LinkedList<String>>> values = new HashMap<String, LinkedList<LinkedList<String>>>();
		try {
			for (String s1 : toWrite.keySet()) {
				// System.out.println(s1);
				LinkedList<LinkedList<String>> tempRes2 = new LinkedList<LinkedList<String>>();
				// System.out.println("s1: " + toWrite.get(s1));
				if (toWrite.containsKey(s1)) {// &&
												// toWrite.get(s1).keySet().size()
												// > 0){
					sheets.add(s1);
					for (String s2 : toWrite.get(s1).keySet()) {
						LinkedList<String> tempRes = new LinkedList<String>();
						// .out.println("s2: " + s2);
						if (toWrite.get(s1).get(s2) != null
								&& !toWrite.get(s1).get(s2).isEmpty()) {
							for (String s3 : toWrite.get(s1).get(s2).keySet()) {
								tempRes.add(s2);
								tempRes.add(s3);
								if (toWrite.get(s1).get(s2).get(s3) != null) {
									// System.out.println("s3: " + s3);
									tempRes.add(toWrite.get(s1).get(s2).get(s3).first);
									tempRes.add(toWrite.get(s1).get(s2).get(s3).second);
								} else {
									tempRes.add("missing");
								}
							}
						} else {
							// System.out.println("s22: " + s2);
							tempRes.add(s2);
						}
						tempRes2.add(tempRes);
					}
					values.put(s1, tempRes2);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		columnsSize.add(11136);
		columnsSize.add(11136);
		columnsSize.add(11136);
		columnsSize.add(11136);
		try {
			write(columns, sheets, values, columnsSize);
		} catch (WriteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// mastertag
		// properties
		// diff1
		// diff2

	}

	public void write(LinkedList<String> columns, LinkedList<String> sheets,
			Map<String, LinkedList<LinkedList<String>>> values,
			LinkedList<Integer> columnsSize) throws IOException, WriteException {
		File file = new File(inputFile);
		WorkbookSettings wbSettings = new WorkbookSettings();

		wbSettings.setLocale(new Locale("en", "EN"));

		WritableWorkbook workbook = Workbook.createWorkbook(file, wbSettings);

		for (String s : sheets) {
			workbook.createSheet(s, 0);
			WritableSheet excelSheet = workbook.getSheet(0);
			createLabel(excelSheet, columns, columnsSize);
			createContent(excelSheet, values.get(s));
		}

		workbook.write();
		workbook.close();
	}

	private void createLabel(WritableSheet sheet, LinkedList<String> labels,
			LinkedList<Integer> columnsSize) throws WriteException {
		// Lets create a times font
		WritableFont times10pt = new WritableFont(WritableFont.ARIAL, 10);

		// Create create a bold font with unterlines
		WritableFont times10ptBoldUnderline = new WritableFont(
				WritableFont.TIMES, 10, WritableFont.BOLD, false,
				UnderlineStyle.NO_UNDERLINE);

		// Headers format
		timesBoldUnderline = new WritableCellFormat(times10ptBoldUnderline);
		timesBoldUnderline.setBackground(Colour.GREY_25_PERCENT);
		timesBoldUnderline.setBorder(Border.ALL, BorderLineStyle.THIN);
		timesBoldUnderline.setWrap(true);
		// Content format
		timesBoldUnderline2 = new WritableCellFormat(times10pt);
		timesBoldUnderline2.setBorder(Border.ALL, BorderLineStyle.THIN);
		timesBoldUnderline2.setWrap(true);
		timesBoldUnderline2.setBackground(Colour.WHITE);
		timesBoldUnderline2.setVerticalAlignment(VerticalAlignment.CENTRE);
		CellView cv = new CellView();
		cv.setFormat(timesBoldUnderline2);

		cv.setFormat(timesBoldUnderline);
		int il = 0;
		for (Integer inte : columnsSize) {
			cv.setSize(inte);
			sheet.setColumnView(il, cv);
			il++;
		}
		// Write a few headers
		int i = 0;
		if (withLinesNumbers) {
			addCaption(sheet, 0, 0, "#", true);
			i++;
		}
		for (String lab : labels) {
			addCaption(sheet, i, 0, lab, true);
			i++;
		}

	}

	private void createContent(WritableSheet sheet,
			LinkedList<LinkedList<String>> values) throws WriteException,
			RowsExceededException {

		int row = 1;
		for (LinkedList<String> value : values) {
			int column = 0;
			if (withLinesNumbers) {
				addCaption(sheet, column, row, String.valueOf(row) + ".", false);
				column++;
			}
			for (String val : value) {

				addCaption(sheet, column, row, val, false);
				column++;
			}
			row++;
		}
	}

	private void addCaption(WritableSheet sheet, int column, int row, String s,
			boolean isHeader) throws RowsExceededException, WriteException {
		Label label;
		if (isHeader) {
			label = new Label(column, row, s, timesBoldUnderline);

		} else {
			label = new Label(column, row, s, timesBoldUnderline2);
		}
		sheet.addCell(label);
	}
}