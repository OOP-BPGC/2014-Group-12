public class Login {
	public Login(String username, String password_hash) {
		this.username = username;
		this.password_hash = password_hash;
	}
	private String username;
	private String password_hash;

	public static boolean verifyLogin(String username,String password) {
		return false;
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword_hash() {
		return password_hash;
	}
	public Login(){
		
	}
	public void setPassword_hash(String password_hash) {
		this.password_hash = password_hash;
	}



}