package hospital.web.baseModule.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserManageAction {
	
	@RequestMapping("/user")
	public String userManage(Model model){
		
		return "/usermanage.jsp";
	}
}
