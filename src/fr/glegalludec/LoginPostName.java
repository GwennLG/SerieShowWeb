package fr.glegalludec;

public enum LoginPostName {
	EMAIL("email"),
	PASSWORD("password"),
	NAME("name"),
	STAYCO("stayco");

	private String name;
	
	public final String getName() {
		return this.name;
	}
	
	private LoginPostName(final String name) {
		this.name = name;
	}
}
