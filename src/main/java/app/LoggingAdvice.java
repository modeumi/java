package app;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class LoggingAdvice implements MethodInterceptor {
	public Object invoke(MethodInvocation invocation) throws Throwable {
		// invoke란 advice가 타입 사이사이 ?
		System.out.println("[메서드 호출 전 : LogginAdvice]");
		System.out.println(invocation.getMethod() + "메소드 호출 전");
		invocation.proceed();
		System.out.println("[메소드 호출 후 : loggingAdvice]");
		System.out.println(invocation.getMethod()+"메소드 호출 후");
		return null;
	}

}
