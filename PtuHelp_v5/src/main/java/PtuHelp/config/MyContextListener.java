package PtuHelp.config;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread;

public class MyContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // 초기화 코드 (필요한 경우 추가 가능)
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // JDBC 드라이버 해제
        Enumeration<java.sql.Driver> drivers = DriverManager.getDrivers();
        while (drivers.hasMoreElements()) {
            java.sql.Driver driver = drivers.nextElement();
            try {
                DriverManager.deregisterDriver(driver);
                System.out.println("JDBC 드라이버 해제: " + driver);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        // AbandonedConnectionCleanupThread 종료
        AbandonedConnectionCleanupThread.checkedShutdown();
        System.out.println("AbandonedConnectionCleanupThread 종료 완료");
        
    }
}
