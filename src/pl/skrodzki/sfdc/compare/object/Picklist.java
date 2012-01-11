package pl.skrodzki.sfdc.compare.object;

import java.util.LinkedList;

@SuppressWarnings("rawtypes")
public class Picklist implements Comparable {
	public String masterName;
	public String picklistName;
	public LinkedList<String> values;

	@Override
	public String toString() {
		String result = "";
		for (String s : this.values) {
			result += s + "\n";
		}
		return result;
	}

	@Override
	public int compareTo(Object arg0) {
		Picklist first = (Picklist) this;
		Picklist second = (Picklist) arg0;
		if (!(first.picklistName.equalsIgnoreCase(second.picklistName) && first.masterName
				.equalsIgnoreCase(second.masterName)))
			return -1;

		for (String s : first.values) {
			if (!second.values.contains(s))
				return -1;
		}
		for (String s : second.values) {
			if (!first.values.contains(s))
				return -1;
		}
		return 0;
	}
}
