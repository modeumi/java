package app.study;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class MessageMain {

	public static void main(String[] args) {
		
//		MessageBean bean = new MessageBeanKr();
//		bean.sayHello("Spring");
//		bean = new MessageBeanEn();
//		bean.sayHello("Spring");
//		
		
		ApplicationContext factory = new FileSystemXmlApplicationContext("Beans.xml");
		MessageBean bean = factory.getBean("messageBean",MessageBeanEn.class);
		bean.sayHello("Spring");
		MessageBean beankr = factory.getBean("messageBeanKr",MessageBeanKr.class);
		beankr.sayHello("Spring");
	}
}
