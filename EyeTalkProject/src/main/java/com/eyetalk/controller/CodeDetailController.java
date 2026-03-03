package com.eyetalk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eyetalk.common.domain.CodeLabelValue;
import com.eyetalk.domain.CodeDetail;
import com.eyetalk.service.CodeDetailService;
import com.eyetalk.service.CodeService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/codedetail")
public class CodeDetailController {

	@Autowired
	private CodeDetailService codeDetailService;

	@Autowired
	private CodeService codeService;

	// 등록 페이지
	@GetMapping("/register")
	public void registerForm(Model model) throws Exception {
		CodeDetail codeDetail = new CodeDetail();
		model.addAttribute(codeDetail);

		// 그룹코드 목록을 조회하여 뷰에 전달
		List<CodeLabelValue> groupCodeList = codeService.getCodeGroupList();
		model.addAttribute("groupCodeList", groupCodeList);
	}

	@PostMapping("/register")
	public String register(CodeDetail codeDetail, RedirectAttributes rttr) throws Exception {
		int count = codeDetailService.register(codeDetail);
		log.info("codeDetail/register = " + count);
		if (count != 0) {
			rttr.addFlashAttribute("msg", "SUCCESS");
			return "redirect:/codedetail/list";
		}
		return "redirect:/codedetail/register";
	}
	
	@GetMapping("/list")
	public void codeDetailList(Model model) throws Exception {
		model.addAttribute("list",codeDetailService.list());
	}
	
	@GetMapping("/detail")
	public void codeDetailDetail(CodeDetail codeDetail, Model model) throws Exception {
		model.addAttribute(codeDetailService.read(codeDetail));
		
		List<CodeLabelValue> groupCodeList = codeService.getCodeGroupList();
		model.addAttribute("groupCodeList",groupCodeList);
	}
	
	@GetMapping("/modify")
	public void modifyForm(CodeDetail codeDetail, Model model) throws Exception {
		model.addAttribute(codeDetailService.read(codeDetail));

		// 그룹코드 목록을 조회하여 뷰에 전달
		List<CodeLabelValue> groupCodeList = codeService.getCodeGroupList();
		model.addAttribute("groupCodeList", groupCodeList);
	}

	@PostMapping("/modify")
	public String modify(CodeDetail codeDetail, RedirectAttributes rttr) throws Exception {
		int count = codeDetailService.modify(codeDetail);
		log.info("codeDetail/update = " + count);
		if (count != 0) {
			rttr.addFlashAttribute("msg", "SUCCESS");
		} else {
			rttr.addFlashAttribute("msg", "FAIL");
		}
		return "redirect:/codedetail/list";
	}
	
	@GetMapping("/remove")
	public String getMethodName(CodeDetail codeDetail, RedirectAttributes rttr) throws Exception {
		int count = codeDetailService.remove(codeDetail);
		log.info("codeDetail/update = " + count);
		if (count != 0) {
			rttr.addFlashAttribute("msg", "SUCCESS");
		} else {
			rttr.addFlashAttribute("msg", "FAIL");
		}
		return "redirect:/codedetail/list";
	}
}
