package fr.glegalludec;

import java.util.ArrayList;
import java.util.Arrays;



public final class DataBaseUser {
	private static ArrayList<User> accounts = new ArrayList<User>(
			Arrays.asList(new User("Administrateur", "admin@localhost", "Administrator", RoleUser.ADMIN)));

	public static final boolean register(final String pseudo, final String email, final String password) {
		
		if (!exists(pseudo, email)) {
			User newUser = new User();
			
			newUser.setPseudo(pseudo);
			newUser.setEmail(email);
			newUser.setPassword(password);
			
			accounts.add(newUser);
			return true;
		}
		return false;
	}

	public static final boolean delete(final User user) {
		if (exists(user)) {
			DataBaseUser.accounts.remove(user);
			return true;
		}
		return false;
	}
	
	public static final boolean delete(final int index) {
		if (index <= DataBaseUser.accounts.size() -1) {
			DataBaseUser.accounts.remove(index);
		}
		return false;
	}

	public static final boolean exists(final String userName, final String email) {
		if (existsPseudo(userName) && existsEmail(email)) {
			return true;
		}
		return false;
	}
	
	public static final boolean exists(final User user) {
		for (User webUser : DataBaseUser.accounts) {
			if (webUser.equals(user)) {
				return true;
			}
		}
		return false;
	}

	public static final boolean existsPseudo(final String peuso) {
		for (User webUser : DataBaseUser.accounts) {
			if (webUser.getPseudo().equalsIgnoreCase(peuso)) {
				return true;
			}
		}
		return false;
	}
	
	public static final boolean existsEmail(final String email) {
		for (User webUser : DataBaseUser.accounts) {
			if (webUser.getEmail().equalsIgnoreCase(email)) {
				return true;
			}
		}
		return false;
	}
	
	public static final User get(final int index) {
		if (index <= DataBaseUser.accounts.size() -1) {
			return DataBaseUser.accounts.get(index);
		}
		return null;
	}
	
	public static final User get(final String pseudo, final String email) {
		for (User webUser : DataBaseUser.accounts) {
			if (webUser.getPseudo().equalsIgnoreCase(pseudo)) {
				if (webUser.getEmail().equalsIgnoreCase(email)) {
					return webUser;
				}
			}
		}
		return null;
	}
	
	public static final User get(final String pseudo, final String email, final String password) {
		for (User webUser : DataBaseUser.accounts) {
			if (webUser.getPseudo().equalsIgnoreCase(pseudo)) {
				if (webUser.getEmail().equalsIgnoreCase(email)) {
					if (webUser.getPassword().equals(password)) {
						return webUser;
					}
				}
			}
		}
		return null;
	}
	
	public static final User selectByPseudoOrEmail(final String username) {
		for (User webUser : DataBaseUser.accounts) {
			if (webUser.getPseudo().equalsIgnoreCase(username)) {
				return webUser;
			}
			if (webUser.getEmail().equalsIgnoreCase(username)) {
					return webUser;
			}
		}
		return null;
	}
	
}
