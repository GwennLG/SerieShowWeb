package fr.glegalludec;


public enum RoleUser {
	ADMIN(1, "ADMIN"),
	USER(0, "USER");
	
	private int id;
	private String name;
	
	public final int getId() {
		return id;
	}

	public final String getName() {
		return name;
	}

	private RoleUser(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public static RoleUser findById(final int id) {
		for (RoleUser role : RoleUser.values()) {
			if (id == role.id) return role;
		}
		return null;
	}

	public static RoleUser findByName(final String name) {
		for (RoleUser role : RoleUser.values()) {
			if (name.equalsIgnoreCase(role.name)) return role;
		}
		return null;
	}
	
}
