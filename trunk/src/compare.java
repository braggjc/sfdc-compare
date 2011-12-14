import java.io.File;
import java.util.HashMap;
import java.util.LinkedList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

//import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;


public class compare {

	public class Difference{
		String first;
		String second;
		public String toString(){
			return "\nfirst: " + first + " \nsecond: " + second;
		}
	}
	public class Picklist implements Comparable{
		String masterName;
		String picklistName;
		LinkedList<String> values;
		@Override
		public String toString(){
			String result = "";
			for(String s: this.values){
				result += s + "\n";
			}
			return result;
		}
		@Override
		public int compareTo(Object arg0) {
			Picklist first = (Picklist)this;
			Picklist second = (Picklist)arg0;
			if(!(first.picklistName.equalsIgnoreCase(second.picklistName) && first.masterName.equalsIgnoreCase(second.masterName) )) return -1;
			
			for(String s :first.values){
				if(!second.values.contains(s)) return -1;
			}
			for(String s :second.values){
				if(!first.values.contains(s)) return -1;
			}
			return 0;
		}
	}
	public class Request{
		String compType;
		ObjectDescription object;
	}
	public class ObjectDescription{
		String masterTag;
		String inputFolder;
		String resultFile;
		String fileExtension;
		LinkedList<String> properties;		
		boolean isPicklist = false;
	}
	public class parseResult{
		String masterTagTagValue;
		HashMap<String,String> tagValues;		
	}
	
	String pathToFirstEnv, pathToSecondEnv, resultPath;
	LinkedList<String> mode;
	LinkedList<String> whichObjects;
	LinkedList<Request> listOfRequests;
	boolean allObjects = false;
	boolean printFiles = true;
	
	public static void main(){
		compare comp = new compare();
		comp.listOfRequests = new LinkedList<Request>();
		comp.mode = new LinkedList<String>();
		comp.whichObjects = new LinkedList<String>();
		
		comp = readConfig();
		//checkConfig(comp);
	
		if (checkConfig(comp)){
			if (!comp.printFiles)
				System.out.printf("Working...");
			for (int s = 0; s<comp.listOfRequests.size(); s++)
				for (int c = 0; c<comp.mode.size(); c++)
					if (comp.listOfRequests.get(s).compType.equalsIgnoreCase(comp.mode.get(c)))
						compareFields(comp, s, comp.listOfRequests.get(s).object.isPicklist);		
		}
		
		System.out.println();
		System.out.println("DONE");
		
		 
		
		//comparePicklists("C:\\compare\\config3","C:\\compare\\test");
		//parsePicklist(filename);
		
		 
		
	}
	
	public static void compareFields(compare comp, int iReqNum, boolean isPicklist){
		
		int childrenLimit = 0;
		HashMap<String,HashMap<String,HashMap<String,Difference>>> comparisionResult = new HashMap<String,HashMap<String,HashMap<String,Difference>>>();
			
		File dirFirstEnv = new File(comp.pathToFirstEnv + "\\" + comp.listOfRequests.get(iReqNum).object.inputFolder);
		File dirSecondEnv = new File(comp.pathToSecondEnv + "\\" + comp.listOfRequests.get(iReqNum).object.inputFolder);
		
		//which objects compare?
		String[] children = dirFirstEnv.list();
		if (children == null){
			System.out.println();
			System.out.println("WARNING! Folder \"" + dirFirstEnv.getPath() + "\" not found!");
			return;
		}
		if (!comp.allObjects){
			childrenLimit = comp.whichObjects.size();
			for (int c = 0; c<childrenLimit; c++){
				children[c] = "";
				children[c] = comp.whichObjects.get(c) + "." + comp.listOfRequests.get(iReqNum).object.fileExtension;
			}
		}
		else
			childrenLimit = children.length;
		
		//Fields
		HashMap<String,HashMap<String,HashMap<String,String>>> firstEnvResult = new HashMap<String,HashMap<String,HashMap<String,String>>>();
		HashMap<String,HashMap<String,HashMap<String,String>>> secondEnvResult = new HashMap<String,HashMap<String,HashMap<String,String>>>();
		
		//Picklists
		HashMap<String,HashMap<String,Picklist>> firstEnvPicklist = new HashMap<String,HashMap<String,Picklist>>();
		HashMap<String,HashMap<String,Picklist>> secondEnvPicklist = new HashMap<String,HashMap<String,Picklist>>();
		
		//First Env
		for (int i=0; i<childrenLimit; i++) {
			String filename = children[i];
			if (!comp.printFiles){
				if (i%8 == 0)
					System.out.printf(".");
			}
		    firstEnvResult.put(filename, parseObject(comp.listOfRequests.get(iReqNum).compType, comp.listOfRequests.get(iReqNum).object.masterTag, comp.listOfRequests.get(iReqNum).object.properties, dirFirstEnv + "\\" + filename, comp.printFiles));
		    if (isPicklist)
		    	firstEnvPicklist.put(filename,parsePicklist(comp.listOfRequests.get(iReqNum).compType, dirFirstEnv + "\\" + filename, comp.printFiles));
		}
		
		//if allObjects list all files in secondEnv folder
		String[] children_temp = children;
		children = null;
		if (comp.allObjects){
			children = dirSecondEnv.list();
			if (children == null){
				System.out.println();
				System.out.println("WARNING! Folder \"" + dirSecondEnv.getPath() + "\" not found!");
				return;
			}
			childrenLimit = children.length;
		}
		else{
			children = children_temp;
		}
		//Second Env
		for (int i=0; i<childrenLimit; i++) {
			String filename = children[i];
			if (!comp.printFiles){
				if (i%8 == 0)
					System.out.printf(".");
			}
		    secondEnvResult.put(filename, parseObject(comp.listOfRequests.get(iReqNum).compType, comp.listOfRequests.get(iReqNum).object.masterTag, comp.listOfRequests.get(iReqNum).object.properties, dirSecondEnv + "\\" + filename, comp.printFiles));
		    if (isPicklist)
		    	secondEnvPicklist.put(filename,parsePicklist(comp.listOfRequests.get(iReqNum).compType, dirSecondEnv + "\\" + filename, comp.printFiles));
		}
		if(!comp.printFiles)
	    	System.out.println();
		//===========================PICKLISTS======================================
		if (isPicklist){
			HashMap<String,HashMap<String,HashMap<String,Difference>>> picklistCompResult = new HashMap<String,HashMap<String,HashMap<String,Difference>>>();
			//for all objects
			for(String s: firstEnvPicklist.keySet()){
				if(secondEnvPicklist.containsKey(s)){
					//for all fields
					HashMap<String,HashMap<String,Difference>> tmp = new HashMap<String,HashMap<String,Difference>>();
					HashMap<String,Difference> res1 = new HashMap<String,Difference>();
					
					for(String ss: firstEnvPicklist.get(s).keySet()){
						res1 = new HashMap<String,Difference>();
						if(secondEnvPicklist.get(s).containsKey(ss)){
							
							if((firstEnvPicklist.get(s).get(ss).compareTo(secondEnvPicklist.get(s).get(ss))) != 0){
								Difference newDiff = comp.new Difference();
								newDiff.first = firstEnvPicklist.get(s).get(ss).toString();
								newDiff.second = secondEnvPicklist.get(s).get(ss).toString();
								res1.put("value", newDiff);
								tmp.put(ss,res1);
								picklistCompResult.put(s,tmp);							
							}
						}
						else{
							res1.put(ss, null);
						}

					}
					/*if(!res1.isEmpty()){					
						tmp.put("picklistVale", res1);
						picklistCompResult.put(s,tmp);
					}*/
				}
				else{
					HashMap<String,HashMap<String,Difference>> temp = new HashMap<String,HashMap<String,Difference>>();
					temp.put("missing whole file in second Enviroment", new HashMap<String,Difference>());
					picklistCompResult.put(s,temp);
				}
			}
			//System.out.println(picklistCompResult);
			WriteExcel test = new WriteExcel();
			if (!picklistCompResult.isEmpty())
			{
				if (comp.listOfRequests.get(iReqNum).compType.equalsIgnoreCase("rules")){
					test.write(comp.resultPath + "\\" + comp.listOfRequests.get(iReqNum).object.resultFile + "_actions_criteriaItems" + ".xls",picklistCompResult);
					System.out.println();
					System.out.println("DIFFERENCES BETWEEN " + comp.listOfRequests.get(iReqNum).compType.toUpperCase() + " ACTIONS/CRITERIA_ITEMS FOUND AND SAVED TO:");
					System.out.println(comp.resultPath + "\\" + comp.listOfRequests.get(iReqNum).object.resultFile + "_actions_criteriaItems" + ".xls");
				}
				else{
					test.write(comp.resultPath + "\\" + comp.listOfRequests.get(iReqNum).object.resultFile + "_picklists" + ".xls",picklistCompResult);
					System.out.println();
					System.out.println("DIFFERENCES BETWEEN " + comp.listOfRequests.get(iReqNum).compType.toUpperCase() + " PICKLISTS FOUND AND SAVED TO:");
					System.out.println(comp.resultPath + "\\" + comp.listOfRequests.get(iReqNum).object.resultFile + "_picklists" + ".xls");
				}
				
			}
			else{
				if (comp.listOfRequests.get(iReqNum).compType.equalsIgnoreCase("rules")){
					System.out.println();
					System.out.println("NO DIFFERENCES BETWEEN " + comp.listOfRequests.get(iReqNum).compType.toUpperCase() + " ACTIONS/CRITERIA_ITEMS FOUND");
				}
				else {
				System.out.println();
				System.out.println("NO DIFFERENCES BETWEEN " + comp.listOfRequests.get(iReqNum).compType.toUpperCase() + " PICKLISTS FOUND");
				}
			}
			System.out.println();
		}
		//===========================END======================================
		
		//--------------------------FIELDS-------------------------------------------------------
		//find differences
		//for all files
		for(String s : firstEnvResult.keySet()){
			//System.out.println("s " + s);
			if(secondEnvResult.containsKey(s)){
				//for all mastertags
				HashMap<String,HashMap<String,Difference>> res2 = new HashMap<String,HashMap<String,Difference>>();
				for(String pr : firstEnvResult.get(s).keySet()){
					if(secondEnvResult.get(s).containsKey(pr)){
						//for all tags
						//ystem.out.println("PR " + pr);
						HashMap<String,Difference> res3 = new HashMap<String,Difference>();
						for(String ss : firstEnvResult.get(s).get(pr).keySet()){
							Difference diff = comp.new Difference();
							if(secondEnvResult.get(s).get(pr).containsKey(ss)){
								diff.first = firstEnvResult.get(s).get(pr).get(ss);
								diff.second = secondEnvResult.get(s).get(pr).get(ss);
							}else{									
								diff.first = firstEnvResult.get(s).get(pr).get(ss);
								diff.second = "";								
							}								
							if(!diff.first.equals(diff.second)){		
								res3.put(ss, diff);
							}
						}	
						if(!res3.isEmpty()){
							res2.put(pr,res3);
						}
					}
					else{
						//System.out.println("res2" + pr);
						res2.put(pr,new HashMap<String,Difference>());
					}
				}
				if(!res2.isEmpty()){
					comparisionResult.put(s,res2);
				}
			}
			else{
				HashMap<String,HashMap<String,Difference>> temp = new HashMap<String,HashMap<String,Difference>>();
				temp.put("missing whole file in second Enviroment", new HashMap<String,Difference>());
				comparisionResult.put(s, temp);
			}
		}
		//-----------------------------END----------------------------------------------------
		
		WriteExcel test = new WriteExcel();
		if (!comparisionResult.isEmpty())
		{
			test.write(comp.resultPath + "\\" + comp.listOfRequests.get(iReqNum).object.resultFile + ".xls",comparisionResult);
			System.out.println();
			System.out.println("DIFFERENCES BETWEEN " + comp.listOfRequests.get(iReqNum).compType.toUpperCase() + " IN FILES FOUND AND SAVED TO:");
			System.out.println(comp.resultPath + "\\" + comp.listOfRequests.get(iReqNum).object.resultFile + ".xls");
		}
		else{
			System.out.println();
			System.out.println("NO DIFFERENCES BETWEEN " + comp.listOfRequests.get(iReqNum).compType.toUpperCase() + " IN FILES FOUND");
		}
		System.out.println();
		
		
	}
	
	public static HashMap<String,HashMap<String,String>> parseObject(String compType, String masterTagTag, LinkedList<String> tags, String filename , boolean printFiles) {
		
		HashMap<String,HashMap<String,String>> result = new HashMap<String,HashMap<String,String>>();
		
		tags.add(masterTagTag);
		
		String masterTagTagValue = "";
		
		try {
			//print filename (with path) in console
			if (printFiles)
				System.out.println(filename);
			
			File file = new File(filename);
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			
			NodeList nodeLst = doc.getElementsByTagName(compType);
			
			HashMap<String,String> tmpResult;
			
			for (int s = 0; s < nodeLst.getLength(); s++) {
				
				Node currentNode = nodeLst.item(s);
				
				tmpResult = new HashMap<String,String>();
				
				if (currentNode != null && currentNode.getNodeType() == Node.ELEMENT_NODE) {
					
					for(String fieldName : tags){
						if (fieldName.equalsIgnoreCase("picklist")) 
							continue;
						Element crrntElmnt = (Element) currentNode;
						NodeList crrntNmElmntLst = crrntElmnt.getElementsByTagName(fieldName);
						Element crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
						
						if (crrntNmElmnt != null) {
							NodeList crrntNm = crrntNmElmnt.getChildNodes();
							
							if(fieldName.equalsIgnoreCase(masterTagTag)){
								masterTagTagValue = "" + ((Node) crrntNm.item(0)).getNodeValue();
								//System.out.println("masterTagTag: " + fieldName + " value: " + tmpResult.masterTagTagValue);
							}
							else{
								tmpResult.put(fieldName, ""+((Node) crrntNm.item(0)).getNodeValue());
							}
						}//end.if
					
					}//end.for
					
				}//end.if
				
				result.put(masterTagTagValue,tmpResult);
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static HashMap<String,Picklist> parsePicklist(String compType, String filename, boolean printFiles) {
		
		HashMap<String,Picklist> result = new HashMap<String,Picklist>(); 
		try {
			if (printFiles){
				if (compType.equalsIgnoreCase("rules"))
					System.out.println(filename + " << actions_criteriaItems");
				else
					System.out.println(filename + " << picklists");
			}
			
			File file = new File(filename);
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			
			doc.getDocumentElement().normalize();
			
			NodeList nodeLst = doc.getElementsByTagName(compType);
			
			compare comp = new compare();
			
			for (int s = 0; s < nodeLst.getLength(); s++) {
				
				Picklist tempres = comp.new Picklist();
				
				Node fstNode = nodeLst.item(s);
				Element fstElmnt2 = (Element) fstNode;
				NodeList fstNmElmntLst3 = fstElmnt2.getElementsByTagName("label");
				Element fstNmElmnt2 = (Element) fstNmElmntLst3.item(0);
				
				if (fstNmElmnt2 != null) {
					
					NodeList fstNm1 = fstNmElmnt2.getChildNodes();
					
					tempres.masterName = "" + ((Node) fstNm1.item(0)).getNodeValue();
					if (compType.equalsIgnoreCase("fields"))
						tempres.picklistName = "" + ((Node) fstNm1.item(0)).getNodeValue();
				}
				else{
					fstNmElmntLst3 = fstElmnt2.getElementsByTagName("fullName");
					fstNmElmnt2 = (Element) fstNmElmntLst3.item(0);
					NodeList fstNm1 = fstNmElmnt2.getChildNodes();
					tempres.masterName = "" + ((Node) fstNm1.item(0)).getNodeValue();
					if (compType.equalsIgnoreCase("fields"))
						tempres.picklistName = "" + ((Node) fstNm1.item(0)).getNodeValue();
				}
				
				if (compType.equalsIgnoreCase("recordTypes")){
					
					Element fstElmnt = (Element) fstNode;
					NodeList fstNmElmntLst = fstElmnt.getElementsByTagName("picklistValues");
					
					for (int pickID = 0; pickID < fstNmElmntLst.getLength(); pickID++){
						
						Element fstNmElmnt = (Element) fstNmElmntLst.item(pickID);
						Picklist res = comp.new Picklist();
						res.masterName = tempres.masterName;
						
						if (fstNmElmnt == null) continue;
					
						NodeList fstNmElmntLst9 = fstNmElmnt.getElementsByTagName("picklist");
						Element fstNmElmnt3 = (Element) fstNmElmntLst9.item(0);
						NodeList lstNm = fstNmElmnt3.getChildNodes();
						res.picklistName = "" + ((Node) lstNm.item(0)).getNodeValue();
					
						NodeList fstNmElmntLst1 = fstNmElmnt.getElementsByTagName("values");
					
						res.values = new LinkedList<String>();
					
						for(int y =0; y<fstNmElmntLst1.getLength();y++){
							//System.out.println("***"+y+"***");
							Node fstNode1Node = fstNmElmntLst1.item(y);
							Element fstElmnt1 = (Element) fstNode1Node;
							NodeList fstNmElmntLst2 = fstElmnt1.getElementsByTagName("fullName");
							Element fstNmElmnt1 = (Element) fstNmElmntLst2.item(0);
							
							if (fstNmElmnt1 != null) {
								NodeList fstNm = fstNmElmnt1.getChildNodes();
								//System.out.print(((Node) fstNm.item(0)).getNodeValue());
								//String sssssss = ((Node) fstNm.item(0)).getNodeValue();
								res.values.add(((Node) fstNm.item(0)).getNodeValue());
							} 
						}
						//System.out.println(res.picklistName + res.values);
						//String sssssss = res.masterName+">"+(pickID+1)+"."+res.picklistName;
						result.put(res.masterName+">"+res.picklistName,res);
					}
				}
				
				else if (compType.equalsIgnoreCase("fields")){
					Element fstElmnt = (Element) fstNode;
					NodeList fstNmElmntLst = fstElmnt.getElementsByTagName("picklist");
					Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
					
					if (fstNmElmnt == null) continue;
					
					NodeList fstNmElmntLst1 = fstNmElmnt.getElementsByTagName("picklistValues");
					//System.out.println("*"+s+"*");
					
					tempres.values = new LinkedList<String>();
					
					for(int y =0; y<fstNmElmntLst1.getLength();y++){
						//System.out.println("***"+y+"***");
						Node fstNode1Node = fstNmElmntLst1.item(y);
						Element fstElmnt1 = (Element) fstNode1Node;
						NodeList fstNmElmntLst2 = fstElmnt1.getElementsByTagName("fullName");
						Element fstNmElmnt1 = (Element) fstNmElmntLst2.item(0);
						
						if (fstNmElmnt1 != null) {
							NodeList fstNm = fstNmElmnt1.getChildNodes();
							//String sssssss = ((Node) fstNm.item(0)).getNodeValue();
							tempres.values.add(((Node) fstNm.item(0)).getNodeValue());
						} 
					}
					//System.out.println(res.picklistName + res.values);
					result.put(tempres.picklistName,tempres);
				}
				else if (compType.equalsIgnoreCase("rules")){
					
					tempres.picklistName = "actions";
					Element fstElmnt = (Element) fstNode;
					NodeList fstNmElmntLst = fstElmnt.getElementsByTagName("actions");
					Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
					
					if (fstNmElmnt == null) continue;
					
					NodeList fstNmElmntLst1 = fstNmElmnt.getElementsByTagName("name");
					Element fstNode1Element =(Element) fstNmElmntLst1.item(0);
					
					tempres.values = new LinkedList<String>();
					
					if (fstNode1Element != null){
						NodeList fstNm = fstNode1Element.getChildNodes();
						tempres.values.add(((Node) fstNm.item(0)).getNodeValue());					
					}
					fstNmElmntLst1 = fstNmElmnt.getElementsByTagName("type");
					fstNode1Element = (Element) fstNmElmntLst1.item(0);
					if (fstNode1Element != null){
						NodeList fstNm = fstNode1Element.getChildNodes();
						tempres.values.add(((Node) fstNm.item(0)).getNodeValue());					
					}
					result.put(tempres.masterName+">"+tempres.picklistName,tempres);
					
					fstElmnt = (Element) fstNode;
					fstNmElmntLst = fstElmnt.getElementsByTagName("criteriaItems");
					
					for (int pickID = 0; pickID < fstNmElmntLst.getLength(); pickID++){
						
						fstNmElmnt = (Element) fstNmElmntLst.item(pickID);
						Picklist res = comp.new Picklist();
						res.masterName = tempres.masterName;
						
						if (fstNmElmnt == null) continue;
					
						NodeList fstNmElmntLst9 = fstNmElmnt.getElementsByTagName("field");
						Element fstNmElmnt3 = (Element) fstNmElmntLst9.item(0);
						NodeList lstNm = fstNmElmnt3.getChildNodes();
						res.picklistName = "criteriaItems" + ":" + ((Node) lstNm.item(0)).getNodeValue();
					
						res.values = new LinkedList<String>();
						
						fstNmElmntLst1 = fstNmElmnt.getElementsByTagName("operation");
						fstNode1Element = (Element) fstNmElmntLst1.item(0);
						if (fstNode1Element != null){
							NodeList fstNm = fstNode1Element.getChildNodes();
							res.values.add(((Node) fstNm.item(0)).getNodeValue());
						}
						
						fstNmElmntLst1 = fstNmElmnt.getElementsByTagName("value");
						fstNode1Element = (Element) fstNmElmntLst1.item(0);
						if (fstNode1Element != null){
							NodeList fstNm = fstNode1Element.getChildNodes();
							res.values.add(((Node) fstNm.item(0)).getNodeValue());
						}

						result.put(res.masterName+">"+res.picklistName,res);
					}
					
					
				}
				else
					break;
				
				
			}
		} 
		catch (Exception e){
			e.printStackTrace();
		}
		return result;
	}	
	
	public static compare readConfig(){
		
		compare comp = new compare();
		comp.listOfRequests = new LinkedList<Request>();
		comp.mode = new LinkedList<String>();
		comp.whichObjects = new LinkedList<String>();
		comp.allObjects = false;
		
			try{
			File file = new File("config.xml");
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			
			NodeList nodeLst = doc.getElementsByTagName("general");
			
			for (int s = 0; s < nodeLst.getLength(); s++) {
				Node currentNode = nodeLst.item(s);
			    if (currentNode != null && currentNode.getNodeType() == Node.ELEMENT_NODE) {
			    	Element fstElmnt = (Element) currentNode;
			    	NodeList fstNmElmntLst = fstElmnt.getElementsByTagName("key");
			    	Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
			    	NodeList fstNm = fstNmElmnt.getChildNodes();
			    	String sKeyName = "" + ((Node) fstNm.item(0)).getNodeValue();
			    	NodeList lstNmElmntLst = fstElmnt.getElementsByTagName("value");
			    	Element lstNmElmnt = (Element) lstNmElmntLst.item(0);
			    	NodeList lstNm = lstNmElmnt.getChildNodes();
			    	String sValue = "" + ((Node) lstNm.item(0)).getNodeValue();
			    	if (sKeyName.equalsIgnoreCase("1stPath")){
			    		comp.pathToFirstEnv = sValue;
			    	}
			    	else if (sKeyName.equalsIgnoreCase("2ndPath")){
			    		comp.pathToSecondEnv = sValue;
			    	}
			    	else if (sKeyName.equalsIgnoreCase("objects")){
			    		if (sValue.equalsIgnoreCase("*"))
			    			comp.allObjects = true;
			    		else{
			    			comp.whichObjects.add(sValue);
			    		}
			    	}
			    	else if (sKeyName.equalsIgnoreCase("mode")){
			    		comp.mode.add(checkTag(sValue));
			    	}
			    	else if (sKeyName.equalsIgnoreCase("resultPath")){
			    		comp.resultPath = sValue;
			    	}
			    	else if (sKeyName.equalsIgnoreCase("printFiles") && sValue.equalsIgnoreCase("no"))
			    		comp.printFiles = false;
			    		
			    }
			}
			
			//---------FIELDS----------------------------
			nodeLst = doc.getElementsByTagName("fields");
			Request req = comp.new Request();
			req.object = comp.new ObjectDescription();
			req.compType = "fields";
			
			Node currentNode = nodeLst.item(0);
			if (currentNode != null && currentNode.getNodeType() == Node.ELEMENT_NODE) {
			    Element crrntElmnt = (Element) currentNode;
			    NodeList crrntNmElmntLst = crrntElmnt.getElementsByTagName("masterTag");
			    Element crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    NodeList crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.masterTag = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("inputFolder");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.inputFolder = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("resultFile");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.resultFile = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("fileExtension");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.fileExtension = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("properties");
			    req.object.properties = new LinkedList<String>();
			    for (int s = 0; s < crrntNmElmntLst.getLength(); s++) {
			    	Element lstNmElmnt = (Element) crrntNmElmntLst.item(s);
			    	NodeList lstNm = lstNmElmnt.getChildNodes();
			    	req.object.properties.add( checkTag("" + ((Node) lstNm.item(0)).getNodeValue()));
			    }
			    
			    comp.listOfRequests.add(req);
			}
			
			//---------WEBLINKS----------------------------
			nodeLst = doc.getElementsByTagName("webLinks");
			req = comp.new Request();
			req.object = comp.new ObjectDescription();
			req.compType = "webLinks";
			
			currentNode = nodeLst.item(0);
			if (currentNode != null && currentNode.getNodeType() == Node.ELEMENT_NODE) {
			    Element crrntElmnt = (Element) currentNode;
			    NodeList crrntNmElmntLst = crrntElmnt.getElementsByTagName("masterTag");
			    Element crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    NodeList crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.masterTag = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("inputFolder");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.inputFolder = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("resultFile");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.resultFile = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("fileExtension");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.fileExtension = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("properties");
			    req.object.properties = new LinkedList<String>();
			    for (int s = 0; s < crrntNmElmntLst.getLength(); s++) {
			    	Element lstNmElmnt = (Element) crrntNmElmntLst.item(s);
			    	NodeList lstNm = lstNmElmnt.getChildNodes();
			    	req.object.properties.add( checkTag("" + ((Node) lstNm.item(0)).getNodeValue()));
			    }

			    comp.listOfRequests.add(req);
			}
			
			
			//---------RECORDTYPES----------------------------
			nodeLst = doc.getElementsByTagName("recordTypes");
			req = comp.new Request();
			req.object = comp.new ObjectDescription();
			req.compType = "recordTypes";
			
			currentNode = nodeLst.item(0);
			if (currentNode != null && currentNode.getNodeType() == Node.ELEMENT_NODE) {
			    Element crrntElmnt = (Element) currentNode;
			    NodeList crrntNmElmntLst = crrntElmnt.getElementsByTagName("masterTag");
			    Element crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    NodeList crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.masterTag = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("inputFolder");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.inputFolder = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("resultFile");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.resultFile = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("fileExtension");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.fileExtension = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("properties");
			    req.object.properties = new LinkedList<String>();
			    for (int s = 0; s < crrntNmElmntLst.getLength(); s++) {
			    	Element lstNmElmnt = (Element) crrntNmElmntLst.item(s);
			    	NodeList lstNm = lstNmElmnt.getChildNodes();
			    	req.object.properties.add( checkTag("" + ((Node) lstNm.item(0)).getNodeValue()));
			    }
			    
			    comp.listOfRequests.add(req);
			}
			//---------VALIDATIONRULES----------------------------
			nodeLst = doc.getElementsByTagName("validationRules");
			req = comp.new Request();
			req.object = comp.new ObjectDescription();
			req.compType = "validationRules";
			
			currentNode = nodeLst.item(0);
			if (currentNode != null && currentNode.getNodeType() == Node.ELEMENT_NODE) {
			    Element crrntElmnt = (Element) currentNode;
			    NodeList crrntNmElmntLst = crrntElmnt.getElementsByTagName("masterTag");
			    Element crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    NodeList crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.masterTag = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("inputFolder");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.inputFolder = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("resultFile");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.resultFile = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("fileExtension");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.fileExtension = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("properties");
			    req.object.properties = new LinkedList<String>();
			    for (int s = 0; s < crrntNmElmntLst.getLength(); s++) {
			    	Element lstNmElmnt = (Element) crrntNmElmntLst.item(s);
			    	NodeList lstNm = lstNmElmnt.getChildNodes();
			    	req.object.properties.add( checkTag("" + ((Node) lstNm.item(0)).getNodeValue()));
			    }
			    
			    comp.listOfRequests.add(req);
			}
			
			//---------CUSTOMSETTINGS----------------------------
			nodeLst = doc.getElementsByTagName("customSettings");
			req = comp.new Request();
			req.object = comp.new ObjectDescription();
			req.compType = "customSettings";
			
			currentNode = nodeLst.item(0);
			if (currentNode != null && currentNode.getNodeType() == Node.ELEMENT_NODE) {
			    Element crrntElmnt = (Element) currentNode;
			    NodeList crrntNmElmntLst = crrntElmnt.getElementsByTagName("masterTag");
			    Element crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    NodeList crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.masterTag = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("inputFolder");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.inputFolder = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("resultFile");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.resultFile = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("fileExtension");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    req.object.fileExtension = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("properties");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    File tagListFile = new File("" + ((Node) crrntNm.item(0)).getNodeValue());
				DocumentBuilderFactory dbf2 = DocumentBuilderFactory.newInstance();
				DocumentBuilder db2 = dbf2.newDocumentBuilder();
				Document doc2 = db2.parse(tagListFile);
				doc.getDocumentElement().normalize();
				
				NodeList nodeList2 = doc2.getElementsByTagName("tagList");
				req.object.properties = new LinkedList<String>();
				Node currentNode2 = nodeList2.item(0);
				if (currentNode2 != null && currentNode2.getNodeType() == Node.ELEMENT_NODE){
					Element crrntElmnt2 = (Element) currentNode2;
				    NodeList crrntNmElmntLst2 = crrntElmnt2.getElementsByTagName("tag");
				    for (int s = 0; s < crrntNmElmntLst2.getLength(); s++) {
				    Element crrntNmElmnt2 = (Element) crrntNmElmntLst2.item(s);
				    NodeList crrntNm2 = crrntNmElmnt2.getChildNodes();
				    req.object.properties.add("" + ((Node) crrntNm2.item(0)).getNodeValue());
				    }
				}
			   // req.object.properties = new LinkedList<String>();
			   // for (int s = 0; s < crrntNmElmntLst.getLength(); s++) {
			    //	Element lstNmElmnt = (Element) crrntNmElmntLst.item(s);
			    //	NodeList lstNm = lstNmElmnt.getChildNodes();
			    //	req.object.properties.add( checkTag("" + ((Node) lstNm.item(0)).getNodeValue()));
			   // }
			    
			    comp.listOfRequests.add(req);
			}
			
			//---------WORKFLOWS----------------------------
			nodeLst = doc.getElementsByTagName("workflows");
			Request masterReq = comp.new Request();
			masterReq.object = comp.new ObjectDescription();
			masterReq.compType = "workflows";
			
			currentNode = nodeLst.item(0);
			if (currentNode != null && currentNode.getNodeType() == Node.ELEMENT_NODE) {
			    
			    Element crrntElmnt = (Element) currentNode;
			    NodeList crrntNmElmntLst = crrntElmnt.getElementsByTagName("inputFolder");
			    Element crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    NodeList crrntNm = crrntNmElmnt.getChildNodes();
			    masterReq.object.inputFolder = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("resultFile");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    masterReq.object.resultFile = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());

			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("fileExtension");
			    crrntNmElmnt = (Element) crrntNmElmntLst.item(0);
			    crrntNm = crrntNmElmnt.getChildNodes();
			    masterReq.object.fileExtension = checkTag("" + ((Node) crrntNm.item(0)).getNodeValue());
			    
			    crrntElmnt = (Element) currentNode;
			    crrntNmElmntLst = crrntElmnt.getElementsByTagName("tag");
			    masterReq.object.properties = new LinkedList<String>();
			    for (int s = 0; s < crrntNmElmntLst.getLength(); s++) {
			    	
			    	req = comp.new Request();
			    	req.object = comp.new ObjectDescription();
			    	Element lstNmElmnt = (Element) crrntNmElmntLst.item(s);
			    	
			    	if (lstNmElmnt != null && lstNmElmnt.getNodeType() == Node.ELEMENT_NODE) {
			    		NodeList lstNmElmntList = lstNmElmnt.getElementsByTagName("template");
			    		Element lstNmElement = (Element) lstNmElmntList.item(0);
			    		NodeList lstNm = lstNmElement.getChildNodes();
			    		masterReq.object.properties.add( checkTag("" + ((Node) lstNm.item(0)).getNodeValue()));
			    		req.compType = checkTag("" + ((Node) lstNm.item(0)).getNodeValue());
			    			
			    		lstNmElmntList = lstNmElmnt.getElementsByTagName("masterTag");
			    		lstNmElement = (Element) lstNmElmntList.item(0);
			    		lstNm = lstNmElement.getChildNodes();
			    		req.object.masterTag = checkTag("" + ((Node) lstNm.item(0)).getNodeValue());
			    		
			    		
			    		lstNmElmntList = lstNmElmnt.getElementsByTagName("properties");
			    		req.object.properties = new LinkedList<String>();
			    		for (int z = 0; z < lstNmElmntList.getLength(); z++){
			    			Element lstNmElment = (Element) lstNmElmntList.item(z);
			    			NodeList lastNm = lstNmElment.getChildNodes();
			    			req.object.properties.add( checkTag("" + ((Node) lastNm.item(0)).getNodeValue()));
			    		}
			    		
			    		req.object.fileExtension = masterReq.object.fileExtension;
			    		req.object.inputFolder = masterReq.object.inputFolder;
			    		req.object.resultFile = masterReq.object.resultFile+"_"+req.compType;
			    	
			    	comp.listOfRequests.add(req);
			    	}
			    }
			    
			    
			    
			    //comp.listOfRequests.add(masterReq);
			    for (int y = 0; y < comp.mode.size(); y++){
			    	if (comp.mode.get(y).equalsIgnoreCase("workflows")){
			    		for (int z = 0; z < masterReq.object.properties.size(); z++){
			    			comp.mode.add(masterReq.object.properties.get(z));
			    		}
			    	}
			    }
			    
			}
			
			}catch(Exception e){
				e.printStackTrace();
			}
			return comp;
	}
		
	public static boolean checkConfig(compare comp){
		 boolean retVal = true;
		 System.out.println();
		 System.out.println(">>>>>>checkConfig LOG<<<<<<");
		 System.out.println();
		 System.out.println("GENERAL CONFIG:");
		 System.out.println();
		 if (comp.pathToFirstEnv != null && comp.pathToFirstEnv != "")
			 System.out.println("pathToFirstEnv = " + comp.pathToFirstEnv);
		 else{
			 retVal = false;
			 System.out.println("NO PATH TO FIRST ENV!!!");
		 }
		 if (comp.pathToSecondEnv != null && comp.pathToSecondEnv != "")
			 System.out.println("pathToSecondEnv = " + comp.pathToSecondEnv);
		 else{
			 retVal = false;
			 System.out.println("NO PATH TO SECOND ENV!!!");
		 }
		 if (comp.resultPath != null && comp.resultPath != "")
			 System.out.println("resultPath = " + comp.resultPath);
		 else{
			 retVal = false;
			 System.out.println("NO RESULT PATH!!!");
		 }
		 if (!comp.whichObjects.isEmpty())
			 if (!comp.allObjects)
			 	for (int i = 0; i < comp.whichObjects.size(); i++)
			 		System.out.println("Object no." + (i+1) + ": " + comp.whichObjects.get(i));
			 else
				 System.out.println("All objects selected");				 
		 else{
			 if (comp.allObjects)
				 System.out.println("All objects selected");
			 else{
				 retVal = false;
				 System.out.println("NO OBJECTS SELECTED!!!");
			 }
		 }
		 if (!comp.mode.isEmpty())
			 for (int i = 0; i < comp.mode.size(); i++)
				 System.out.println("mode no." + (i+1) + ": " + comp.mode.get(i));
		 else{
			 retVal = false;
			 System.out.println("NO MODE SELECTED!!!");
		 }
		 
		 System.out.printf("Print file names? : ");
		 if (comp.printFiles)
			 System.out.println("yes");
		 else
			 System.out.println("no");
		 
		 System.out.println();
		 System.out.println();
		 
		 if (!comp.listOfRequests.isEmpty()){
			 System.out.println("REQUESTS:");
			 System.out.println();
			 for (int i = 0; i < comp.listOfRequests.size(); i++){
				 System.out.println(comp.listOfRequests.get(i).compType);
				 System.out.printf("\t");
				 if (comp.listOfRequests.get(i).object.masterTag != null && comp.listOfRequests.get(i).object.masterTag != ""){
					 System.out.println("masterTag: " + comp.listOfRequests.get(i).object.masterTag);
				 }
				 else{
					 System.out.println("!!!NO masterTag!!!");
					 retVal = false;
				 }
				 
				 System.out.printf("\t");
				 if (comp.listOfRequests.get(i).object.inputFolder != null && comp.listOfRequests.get(i).object.inputFolder != ""){
					 System.out.println("inputFolder: " + comp.listOfRequests.get(i).object.inputFolder);
				 }
				 else{
					 System.out.println("!!!NO inputFolder!!!");
					 retVal = false;
				 }
				 
				 System.out.printf("\t");
				 if (comp.listOfRequests.get(i).object.resultFile != null && comp.listOfRequests.get(i).object.resultFile != ""){
					 System.out.println("resultFile: " + comp.listOfRequests.get(i).object.resultFile);
				 }
				 else{
					 System.out.println("!!!NO resultFile!!!");
					 retVal = false;
				 }
				 
				 System.out.printf("\t");
				 if (comp.listOfRequests.get(i).object.fileExtension != null && comp.listOfRequests.get(i).object.fileExtension != "")
					 System.out.println("fileExtension: " + comp.listOfRequests.get(i).object.fileExtension);
				 else{
					 System.out.println("!!!NO fileExtension!!!");
					 retVal = false;
				 }
				 
				 if (!comp.listOfRequests.get(i).object.properties.isEmpty())
					 for (int c = 0; c < comp.listOfRequests.get(i).object.properties.size(); c++){
						 //check for picklist request
						 if (comp.listOfRequests.get(i).object.properties.get(c).equalsIgnoreCase("picklist")){
							 comp.listOfRequests.get(i).object.isPicklist = true;
							 System.out.printf("!");
						 }
						 if (comp.listOfRequests.get(i).object.properties.get(c).equalsIgnoreCase("criteriaItems")){
							 comp.listOfRequests.get(i).object.isPicklist = true;
							 System.out.printf("!");
						 }
						 else if (comp.listOfRequests.get(i).object.properties.get(c).equalsIgnoreCase("actions")){
							 comp.listOfRequests.get(i).object.isPicklist = true;
							 System.out.printf("!");
						 }
						 System.out.printf("\t");
						 if (comp.listOfRequests.get(i).compType.equalsIgnoreCase("workflows"))
							 System.out.println("template no." + (c+1) + ": " + comp.listOfRequests.get(i).object.properties.get(c));
						 else
							 System.out.println("prop no." + (c+1) + ": " + comp.listOfRequests.get(i).object.properties.get(c));
					 }
				 else{
					 System.out.printf("\t");
					 if (comp.listOfRequests.get(i).compType.equalsIgnoreCase("workflows"))
						 System.out.println("!!!INVALID template!!!");
					 else
						 System.out.println("!!!INVALID properties!!!");
					 retVal = false;
				 }
				 System.out.println();
			 }
		 }
		 
		
		System.out.println();
		if (retVal)
			System.out.println("!!!CONFIG SUCCEDED!!!");
		else
			System.out.println("!!!CONFIG FAILED!!!");
		
		 System.out.println();
		 System.out.println(">>>>>>end of checkConfig LOG<<<<<<");
		 System.out.println();
		 
		return retVal;
	}
	
	public static String checkTag(String sTag){
		
		if (sTag.equalsIgnoreCase("fullName"))
			return "fullName";
		
		//----------mainTags-----------
		else if(sTag.equalsIgnoreCase("recordTypes"))
			return "recordTypes";
		else if(sTag.equalsIgnoreCase("fields"))
			return "fields";
		else if(sTag.equalsIgnoreCase("weblinks"))
			return "weblinks";
		else if(sTag.equalsIgnoreCase("validationRules"))
			return "validationRules";
		else if(sTag.equalsIgnoreCase("workflows"))
			return "workflows";
		else if(sTag.equalsIgnoreCase("customSettings"))
			return "customSettings";
		
		//------propertiesTags------------
		else if(sTag.equalsIgnoreCase("picklist") || sTag.equalsIgnoreCase("picklists"))
			return "picklist";
		else if(sTag.equalsIgnoreCase("description"))
			return "description";
		else if(sTag.equalsIgnoreCase("label"))
			return "label";
		else if(sTag.equalsIgnoreCase("referenceTo"))
			return "referenceTo";
		else if(sTag.equalsIgnoreCase("openType"))
			return "openType";
		else if(sTag.equalsIgnoreCase("url"))
			return "url";
		else if(sTag.equalsIgnoreCase("active"))
			return "active";
		else if(sTag.equalsIgnoreCase("errorConditionFormula"))
			return "errorConditionFormula";
		else if(sTag.equalsIgnoreCase("literalValue"))
			return "literalValue";
		else if(sTag.equalsIgnoreCase("notifyAssignee"))
			return "notifyAssignee";
		else if(sTag.equalsIgnoreCase("name"))
			return "name";
		else if(sTag.equalsIgnoreCase("errorDisplayField"))
			return "errorDisplayField";
		else if(sTag.equalsIgnoreCase("errorMessage"))
			return "errorMessage";
		else if(sTag.equalsIgnoreCase("fieldUpdates"))
			return "fieldUpdates";
		else if(sTag.equalsIgnoreCase("rules"))
			return "rules";
		else if(sTag.equalsIgnoreCase("triggerType"))
			return "triggerType";
		else if(sTag.equalsIgnoreCase("criteriaItems"))
			return "criteriaItems";
		else if(sTag.equalsIgnoreCase("actions"))
			return "actions";
		//----------file_extensionTags-----------
		else if(sTag.equalsIgnoreCase("object"))
			return "object";
		else if(sTag.equalsIgnoreCase("workflow"))
			return "workflow";
		
		//else if(sTag.equalsIgnoreCase(""))
			//return "";
		
		//---------default-----------
		else
			return sTag;
	}
	
}
