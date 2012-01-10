package pl.skrodzki.sfdc.compare;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import jxl.write.WriteException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Core {
	static LinkedList<String> objectsToIgnore;
	static boolean SKIP_STANDARD_OBJECTS = false;
	static final String DEFAULT_FIELD_CONNECTOR = " + ";
	public static void main(String argv[]) throws WriteException, IOException {
		Compare.main();
		//objectsToIgnore = new LinkedList<String>();
		//objectsToIgnore.add(".svn");
		//generate(2);
		//generate(5);
		//generate(3);
		//generate(4);
		//generate(1);
		//for(int i = 1; i <9; i++){
		//generate(i);
	}
	
	public static void generate(int objectType) throws WriteException, IOException{
		LinkedList<String> displayTags = new LinkedList<String>();
		LinkedList<String> tempTags = new LinkedList<String>();
		LinkedList<Integer> columnsSize = new LinkedList<Integer>();
		String folderObject = "C:\\compare\\test\\objects";
		String folderWorkflow = "C:\\Documents and Settings\\EclipseWorkspace\\GTSSK_test\\src\\workflows";
		//String folderPages = "C:\\Documents and Settings\\EclipseWorkspace\\GTSSK_test\\src\\pages";
		LinkedList<LinkedList<String>> tagValues = new LinkedList<LinkedList<String>>();
		switch(objectType){
		case 1:
				//WebLinks start
				tagValues = new LinkedList<LinkedList<String>>();
				displayTags.add("Label");
				displayTags.add("Display Type");
				displayTags.add("Description");
				displayTags.add("code");
				columnsSize.add(6400);
				columnsSize.add(5888);
				columnsSize.add(9984);
				columnsSize.add(9984);
				//String[] lista = { "masterLabel",  "displayType", "description" };
				tempTags = new LinkedList<String>();
				tempTags.add("masterLabel");
				tagValues.add(tempTags);
				tempTags = new LinkedList<String>();
				tempTags.add("displayType");
				tagValues.add(tempTags);
				tempTags = new LinkedList<String>();
				tempTags.add("description");
				tagValues.add(tempTags);
				tempTags = new LinkedList<String>();
				tempTags.add("url");
				tagValues.add(tempTags);
				
				getDescription("webLinks", tagValues, displayTags, false, columnsSize, folderObject, "object");
				//WebLinks end
				break;
		case 2:
				//Fields start
				tagValues = new LinkedList<LinkedList<String>>();
				columnsSize = new LinkedList<Integer>();
				displayTags = new LinkedList<String>();
				displayTags.add("Label");
				displayTags.add("API Name");
				displayTags.add("Data Type");
				displayTags.add("Description");
				displayTags.add("Help text");
				columnsSize.add(1024);
				columnsSize.add(5888);
				columnsSize.add(5888);
				columnsSize.add(5376);
				columnsSize.add(9984);
				columnsSize.add(9984);
				tempTags = new LinkedList<String>();
				tempTags.add("label");
				tagValues.add(tempTags);
				tempTags = new LinkedList<String>();
				tempTags.add("fullName");
				tagValues.add(tempTags);				
				tempTags = new LinkedList<String>();
				tempTags.add("type");
				tagValues.add(tempTags);
				tempTags = new LinkedList<String>();
				tempTags.add("description");
				tagValues.add(tempTags);
				tempTags = new LinkedList<String>();
				tempTags.add("inlineHelpText");
				tagValues.add(tempTags);				
				//String[] lista1 = { "label",  "type","description" };
				getDescription("fields", tagValues, displayTags, true, columnsSize, folderObject, "object");
				//Fields end
				break;
		case 3:		
				//Record Types start
				tagValues = new LinkedList<LinkedList<String>>();
				columnsSize = new LinkedList<Integer>();
				displayTags = new LinkedList<String>();
				displayTags.add("Label");
				displayTags.add("Description");
				columnsSize.add(11136);
				columnsSize.add(11136);
				tempTags = new LinkedList<String>();
				tempTags.add("label");
				tagValues.add(tempTags);
				tempTags = new LinkedList<String>();
				tempTags.add("description");
				tagValues.add(tempTags);
				//String[] lista2 = { "label","description" };
				getDescription("recordTypes", tagValues, displayTags, false, columnsSize, folderObject, "object");
				//Record Types end
				break;
		case 4:		
			//Validation rules start
			tagValues = new LinkedList<LinkedList<String>>();
			columnsSize = new LinkedList<Integer>();
			displayTags = new LinkedList<String>();
			displayTags.add("Rule Name");
			displayTags.add("Validation Area");
			displayTags.add("Formula");
			displayTags.add("Error details");
			columnsSize.add(4352);
			columnsSize.add(4864);
			columnsSize.add(6400);
			columnsSize.add(5632);
			tempTags = new LinkedList<String>();
			tempTags.add("fullName");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("Validation Area");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("errorConditionFormula");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("errorMessage");
			tagValues.add(tempTags);
			//String[] lista3 = { "fullName","Validation Area", "errorConditionFormula", "errorMessage" };
			getDescription("validationRules", tagValues, displayTags, false, columnsSize, folderObject, "object");
			//Validation rules end
			break;
		case 5:
			//Picklist start
			tagValues = new LinkedList<LinkedList<String>>();
			columnsSize = new LinkedList<Integer>();
			displayTags = new LinkedList<String>();
			displayTags.add("Field Name");
			displayTags.add("Values");

			columnsSize.add(11136);
			columnsSize.add(11136);
			getDescriptionPicklist(displayTags, columnsSize);			
			//Picklist end
			break;
		case 6:
			//Workflows start
			tagValues = new LinkedList<LinkedList<String>>();
			displayTags.add("Rule Name");
			displayTags.add("Description");
			displayTags.add("Object");
			columnsSize.add(5568);
			columnsSize.add(11136);
			columnsSize.add(5568);
			tempTags = new LinkedList<String>();
			tempTags.add("fullName");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("description");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("obj");
			tagValues.add(tempTags);
			//String[] lista4= { "fullName",  "description", "obj" };
			getDescription("rules", tagValues, displayTags, false, columnsSize, folderWorkflow, "workflow");
			//Workflows end
			break;
		case 7:
			//Field updates start
			tagValues = new LinkedList<LinkedList<String>>();
			displayTags.add("Name");
			displayTags.add("Object");
			displayTags.add("Field to Update");
			displayTags.add("Operation");
			displayTags.add("Value");
			columnsSize.add(3584);
			columnsSize.add(3584);
			columnsSize.add(3584);
			columnsSize.add(3584);
			columnsSize.add(7936);
			tempTags = new LinkedList<String>();
			tempTags.add("fullName");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("obj");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("field");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("operation");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("formula");
			tagValues.add(tempTags);
			//String[] lista5= { "fullName",  "obj", "field", "operation",  "formula"};
			getDescription("fieldUpdates", tagValues, displayTags, false, columnsSize, folderWorkflow, "workflow");
			//field Updates end
			break;
		case 8:
			//Field updates start
			tagValues = new LinkedList<LinkedList<String>>();
			displayTags.add("Object");
			displayTags.add("Assigned");
			displayTags.add("Subject");
			displayTags.add("Due Date");
			displayTags.add("Priority");
			displayTags.add("Comment");
			columnsSize.add(3712);
			columnsSize.add(3712);
			columnsSize.add(3712);
			columnsSize.add(3712);
			columnsSize.add(3712);
			columnsSize.add(3712);
			tempTags = new LinkedList<String>();
			tempTags.add("obj");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("assignedToType");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("subject");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("offsetFromField");
			tempTags.add("dueDateOffset");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("priority");
			tagValues.add(tempTags);
			tempTags = new LinkedList<String>();
			tempTags.add("description");
			tagValues.add(tempTags);
			//String[] lista6= { "obj",  "assignedToType", "subject", "operation",  "priority", "description"};
			getDescription("tasks", tagValues, displayTags, false, columnsSize, folderWorkflow, "workflow");
			//field Updates end
			break;
		default:
			return;
		}
	}
	public static void getDescription(String masterTag, LinkedList<LinkedList<String>> childTags, LinkedList<String> columnNames, boolean withLineNumbers, LinkedList<Integer> columnsSize, String folder, String extensionToIgnore) throws WriteException, IOException{
		
		LinkedList<LinkedList<String>> parsed;
		LinkedList<String> sheets = new LinkedList<String>();
		File dir = new File(folder);
		Map<String, LinkedList<LinkedList<String>>> abc = new HashMap<String, LinkedList<LinkedList<String>>>();
		String[] children = dir.list();
		int len;
		if (children == null) {
		    // Either dir does not exist or is not a directory
		} else {
		    for (int i=0; i<children.length; i++) {
		        // Get filename of file or directory
		        String filename = children[i];
		        if(objectsToIgnore.contains(filename)) continue;
		        String filena = filename;
		        len = filename.length();
		        int extensionLength = extensionToIgnore.length() +1;
//		        try{
//		        	System.out.println(filename.substring(len-(extensionLength) +1, len));
//		        	if(!filename.substring(len-(extensionLength) +1, len).equals(extensionToIgnore)) continue;
//		        }
//		        catch(StringIndexOutOfBoundsException ex){
//		        	
//		        }
		        filename = filename.substring(0,len-(extensionLength));
		        //System.out.println(filename.substring(len-(extensionLength+3), len-extensionLength));
		        if(filename.substring(len-(extensionLength+2), len-extensionLength).equals("__c")){
		        	filename=filename.substring(0,len-10);
		        }
		        else{
		        	if(SKIP_STANDARD_OBJECTS)continue;
		        }
		        if(filename.length() >= 25)
		        	filename = filename.substring(0, 25);
		        if(objectsToIgnore.contains(filename)) continue;
		        parsed = parse(childTags, folder + "\\"+filena, masterTag, filename, DEFAULT_FIELD_CONNECTOR );
		        if(parsed.size() <= 0)continue;

		        sheets.add(filename);
		        abc.put(filename, parsed);
		    }
		}		

		WriteExcel test = new WriteExcel();
		test.withLinesNumbers = withLineNumbers;
		test.setOutputFile("c:/" + masterTag + ".xls");
		test.write(columnNames,sheets, abc,columnsSize);		
	}
	public static  LinkedList<LinkedList<String>> parse(LinkedList<LinkedList<String>> tagNames, String filename, String masterTag, String objectName, String fieldConnector) {
		LinkedList<LinkedList<String>> result = new LinkedList<LinkedList<String>>(); 
		LinkedList<String> partialResult = new LinkedList<String>();
		try {
			File file = new File(filename);
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			NodeList nodeLst = doc.getElementsByTagName(masterTag);
			String tempResult = "";
			int numbersOfTags;
			int iteratorTags;
			for (int s = 0; s < nodeLst.getLength(); s++) {
				partialResult = new LinkedList<String>();
				Node fstNode = nodeLst.item(s);

				if (fstNode.getNodeType() == Node.ELEMENT_NODE) {
					for (LinkedList<String> fieldNames : tagNames) {
						tempResult = "";
						numbersOfTags = fieldNames.size();
						iteratorTags = 0;
						for(String fieldName : fieldNames){
							Element fstElmnt = (Element) fstNode;
							NodeList fstNmElmntLst = fstElmnt
									.getElementsByTagName(fieldName);
							Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
							if (fstNmElmnt != null) {
								NodeList fstNm = fstNmElmnt.getChildNodes();
								//partialResult.add(((Node) fstNm.item(0)).getNodeValue());
								tempResult += ((Node) fstNm.item(0)).getNodeValue();
							} else {
								tempResult += "";
							}
							iteratorTags++;
							if(iteratorTags < numbersOfTags){
								tempResult += fieldConnector;
							}
							
						}
						partialResult.add(tempResult);
					}
					//System.out.println(partialResult);
					result.add(partialResult);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
/****************************************/
	public static void getDescriptionPicklist(LinkedList<String> columnNames,  LinkedList<Integer> columnsSize) throws WriteException, IOException{
		
		LinkedList<LinkedList<String>> parsed;
		LinkedList<String> sheets = new LinkedList<String>();
		File dir = new File("C:\\compare\\config3\\objects");
		Map<String, LinkedList<LinkedList<String>>> abc = new HashMap<String, LinkedList<LinkedList<String>>>();
		String[] children = dir.list();
		int len;
		if (children == null) {
		    // Either dir does not exist or is not a directory
		} else {
		    for (int i=0; i<children.length; i++) {
		        // Get filename of file or directory
		        String filename = children[i];
		        String filena = filename;
		        len = filename.length();
		        filename = filename.substring(0,len-7);
		        if(filename.substring(len-10, len-7).equals("__c")){
		        	filename=filename.substring(0,len-10);
		        }
		        else{
		        	if(SKIP_STANDARD_OBJECTS)continue;
		        	//continue;//skip standard objects
		        }
		        if(filename.length() >= 25)
		        	filename = filename.substring(0, 25);
		        if(objectsToIgnore.contains(filename)) continue;
		        parsed = parsePicklist("C:\\compare\\config3\\objects\\" + filena);
		        if(parsed.size() <= 0)continue;

		        sheets.add(filename);
		        abc.put(filename, parsed);
		    }
		}		

		WriteExcel test = new WriteExcel();

		test.setOutputFile("c:/picklist.xls");
		test.write(columnNames,sheets, abc,columnsSize);		
	}
	public static  LinkedList<LinkedList<String>> parsePicklist(String filename) {
		LinkedList<LinkedList<String>> result = new LinkedList<LinkedList<String>>(); 
		LinkedList<String> partialResult = new LinkedList<String>();
		try {
			File file = new File(filename);
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			NodeList nodeLst = doc.getElementsByTagName("fields");
			String tmpResult = "";
			for (int s = 0; s < nodeLst.getLength(); s++) {
				
				partialResult = new LinkedList<String>();
				Node fstNode = nodeLst.item(s);
				Element fstElmnt2 = (Element) fstNode;
				NodeList fstNmElmntLst3 = fstElmnt2.getElementsByTagName("label");
				Element fstNmElmnt2 = (Element) fstNmElmntLst3.item(0);
				if (fstNmElmnt2 != null) {
					NodeList fstNm1 = fstNmElmnt2.getChildNodes();
					//System.out.print(((Node) fstNm1.item(0)).getNodeValue());
					partialResult.add(((Node) fstNm1.item(0)).getNodeValue());
				}else{
					fstNmElmntLst3 = fstElmnt2.getElementsByTagName("fullName");
					fstNmElmnt2 = (Element) fstNmElmntLst3.item(0);
					NodeList fstNm1 = fstNmElmnt2.getChildNodes();
					//System.out.print(((Node) fstNm1.item(0)).getNodeValue());
					partialResult.add(((Node) fstNm1.item(0)).getNodeValue());
				}
				
				Element fstElmnt = (Element) fstNode;
				NodeList fstNmElmntLst = fstElmnt.getElementsByTagName("picklist");
				Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
				if (fstNmElmnt == null) continue;
				NodeList fstNmElmntLst1 = fstNmElmnt.getElementsByTagName("picklistValues");
				//System.out.println("*"+s+"*");
				tmpResult = "";
				for(int y =0; y<fstNmElmntLst1.getLength();y++){
					//System.out.println("***"+y+"***");
					Node fstNode1Node = fstNmElmntLst1.item(y);
					Element fstElmnt1 = (Element) fstNode1Node;
					NodeList fstNmElmntLst2 = fstElmnt1.getElementsByTagName("fullName");
					Element fstNmElmnt1 = (Element) fstNmElmntLst2.item(0);
					if (fstNmElmnt1 != null) {
						NodeList fstNm = fstNmElmnt1.getChildNodes();
						//System.out.print(((Node) fstNm.item(0)).getNodeValue());
						tmpResult += ((Node) fstNm.item(0)).getNodeValue();
						tmpResult += "\n";
					} 
				}
				if(tmpResult.length() > 1) tmpResult = tmpResult.substring(0, tmpResult.length()-1);
				partialResult.add(tmpResult);
				//System.out.println(partialResult);
				result.add(partialResult);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}