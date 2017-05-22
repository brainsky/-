package hospital.web.baseModule.dao.mapper;


import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import hospital.utils.UUIDBuild;
import hospital.web.baseModule.dao.mapper.SysuserMapper;
import hospital.web.baseModule.dao.pojo.Sysuser;
import hospital.web.baseModule.dao.pojo.SysuserExample;

public class SysuserMapperTest {
	
	private ApplicationContext applicationContext;
	private SysuserMapper sysuserMapper;
	/**
	 * 加载spring核心文件,这里会有两个问题，一个提示找不到文件，把resources下的目录也要写上例如spring/目录
	 * 二，路径也对，还是提示找不到，检查classpath,resouces下的Exclued和Inclued,第一个为None,第二个为All.
	 * 提示：java.lang.AbstractMethodError: org.mybatis.spring.transaction.SpringManagedTransaction.getTimeout()
	 * 解决：把mybatis-spring的版本升为1.3.0可解决
	 * @throws Exception
	 */
	@Before
	public void setUp() throws Exception {
		applicationContext = new ClassPathXmlApplicationContext(new String[]{
				"spring/applicationContext.xml","spring/applicationContext-dao.xml"
		});
		sysuserMapper = (SysuserMapper) applicationContext.getBean("sysuserMapper");
	}

	@Test
	public void testDeleteByPrimaryKey() {
		sysuserMapper.deleteByPrimaryKey("423");
	}

	@Test
	public void testInsert() {
			Sysuser user = new Sysuser();
			user.setId("424");
			user.setUserid("hbkjxueyuan");
			user.setUsername("华北科技学院");
			user.setUserstate("1");
			user.setGroupid("5");
			user.setPwd(UUIDBuild.getUUID());
			user.setEmail("");
			user.setSysid(UUIDBuild.getUUID());
			sysuserMapper.insert(user);
		}

	@Test
	public void testInsertSelective() {
		Sysuser user = new Sysuser();
		user.setId("423");
		user.setUserid("hbkjxy");
		user.setUsername("华北科技学院");
		user.setGroupid("5");
		user.setUserstate("1");
		user.setPwd(UUIDBuild.getUUID());
		sysuserMapper.insertSelective(user);
	}

	@Test
	public void testSelectByPrimaryKey() {
		Sysuser user59 = sysuserMapper.selectByPrimaryKey("59");
		System.out.println(user59);
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
		Sysuser user = new Sysuser();
		user.setId("423");
		user.setUsername("华北科技学院北门");
		user.setPhone("10086");
		sysuserMapper.updateByPrimaryKeySelective(user);
	}

	@Test
	public void testUpdateByPrimaryKey() {
		Sysuser user424 = sysuserMapper.selectByPrimaryKey("424");
		user424.setUsername("华北科技学院崇实楼");
		sysuserMapper.updateByPrimaryKey(user424);
	}
	@Test
	public void testSeleteExample(){
		SysuserExample sysuserExample = new SysuserExample();
		SysuserExample.Criteria criteria = sysuserExample.createCriteria();
		criteria.andUsernameLike("华北科技%");
		criteria.andUseridEqualTo("hbkjxueyuan");
		List<Sysuser> list = sysuserMapper.selectByExample(sysuserExample);
		System.out.print(list.get(0));
	}
}
