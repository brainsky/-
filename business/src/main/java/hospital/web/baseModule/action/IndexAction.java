package hospital.web.baseModule.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexAction {
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String index(Model model){
		
		return "/index.jsp";
	}
}
