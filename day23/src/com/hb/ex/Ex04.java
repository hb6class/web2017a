package com.hb.ex;


class Ex04_2 implements MyInter{
	
	public void func() {
		System.out.println("func()3");
	}
	
}

// tomcat
interface MyInter{
	void func();
}
public class Ex04 {
	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
//		Ex04_2 me1=new Ex04_2();
		Class clss = Class.forName("com.hb.ex.Ex04_2");
		MyInter me1=(MyInter) clss.newInstance();		
		me1.func();

	}

}
