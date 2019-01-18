package fr.glegalludec;

public enum LoginPostName {
	EMAIL("email"),
	PASSWORD("password"),
	NAME("name"),
	USERNAME("username"),
	STAYCO("stayco"),
	PASSWORD_C("passwordm"),
	PASSWORD_CF("passwordc");

	private String name;
	
	public final String getName() {
		return this.name;
	}
	
	private LoginPostName(final String name) {
		this.name = name;
	}
}
