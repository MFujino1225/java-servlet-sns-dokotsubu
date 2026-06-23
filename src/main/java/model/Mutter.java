package model;

import java.io.Serializable;

public class Mutter implements Serializable {
	//フィールド
	private String userName; //ユーザー名
	private String text; //つぶやき内容
	
	//コンストラクタ
	public Mutter() {}
	public Mutter(String userName, String text) {
		this.userName = userName;
		this.text = text;
	}
	
	//getter
	public String getUserName() {return userName;}
	public String getText() {return text;}
}
