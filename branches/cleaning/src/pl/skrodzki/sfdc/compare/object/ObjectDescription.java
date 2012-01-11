package pl.skrodzki.sfdc.compare.object;

import java.util.LinkedList;

public class ObjectDescription {
	public String masterTag;
	public String inputFolder;
	public String resultFile;
	public String fileExtension;
	public LinkedList<String> properties;
	public boolean isPicklist = false;
}
