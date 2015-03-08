package m.Controller;

import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	
	@RequestMapping(value="index")
	public String index()
	{
		MongoTemplate mongoTemplate;
		
		System.out.println("index");
		return "index";
	}
	
	@RequestMapping(value="bootstrap")
	public String bootstrap()
	{
		System.out.println("TestBootstrap");
		return "TestBootstrap";
	}

}