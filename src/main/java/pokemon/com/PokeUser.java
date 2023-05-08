package pokemon.com;

public class PokeUser {
	private String id;
	private String pass;
	private String name;
	private String phone;


	public String getId() {
		return id;
	}

	public String getPass() {
		return pass;
	}

	public String getPhone() {
		return phone;
	}

	public String getName() {
		return name;
	}
	
	public PokeUser setPhone(String phone) {
		this.phone = phone;
		return this;
	}

	public PokeUser setId(String id) {
		this.id = id;
		return this;
	}

	public PokeUser setPass(String pass) {
		this.pass = pass;
		return this;
	}


	public PokeUser setName(String name) {
		this.name = name;
		return this;
	}

}