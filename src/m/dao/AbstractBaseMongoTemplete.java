package m.dao;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.data.mongodb.core.MongoTemplate;

public class AbstractBaseMongoTemplete implements ApplicationContextAware {
	MongoTemplate mongoTemplate ;
	/**
	 * 设置mongoTemplage
	 * @param mongoTemplate
	 */
	public void setMongoTemplate(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}
	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {

		mongoTemplate = applicationContext.getBean("mongoTemplate", MongoTemplate.class);

	}

}
