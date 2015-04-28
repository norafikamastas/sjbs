package com.rays.sjbs;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rays.entity.Dept;
import com.rays.service.HomeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private final HomeService homeService;
	
	@Autowired
	public HomeController(final HomeService homeService){
		this.homeService = homeService;
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! the client locale is "+ locale.toString());
		/*Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );*/
		
		 /*ApplicationContext ac = new ClassPathXmlApplicationContext("context.xml", HomeController.class);
		    DataSource dataSource = (DataSource) ac.getBean("dataSource");
		    // DataSource mysqlDataSource = (DataSource) ac.getBean("mysqlDataSource");

		    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		    jdbcTemplate.batchUpdate(new String[] { "update dept set loc = 'NY' where deptno = 10"});*/
		    
		    Dept dept = homeService.findByDeptNo(10L);
		    System.out.println(dept.getDeptno());
		
		return "home";
	}
	
}
