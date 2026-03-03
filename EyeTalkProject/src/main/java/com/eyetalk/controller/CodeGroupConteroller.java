package com.eyetalk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eyetalk.domain.CodeGroup;
import com.eyetalk.service.CodeGroupService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/codegroup")
public class CodeGroupConteroller {
	
	@Autowired
	private CodeGroupService service;
	
	// 등록 페이지
	@GetMapping("/register")
	public void registerForm(Model model) throws Exception {
		CodeGroup codeGroup = new CodeGroup();
		model.addAttribute(codeGroup);
	}
	
	// 코드그룹 등록 처리요청
	@PostMapping("/register")
	public String register(CodeGroup codeGroup, RedirectAttributes rttr) throws Exception {
		int count = service.register(codeGroup);
		log.info("codeGroup/register = " + count);
		if (count != 0) {
			rttr.addFlashAttribute("msg", "코드그룹 등록이 완료되었습니다.");
			return "redirect:/codegroup/list";
		}
		return "redirect:/codegroup/register";
	}
	
	@GetMapping("/list")
	public void list(Model model) throws Exception {
		model.addAttribute("list",service.list());
	}
	
	// 코드그룹 상세페이지 요청
	@GetMapping("/detail")
	public void read(CodeGroup codeGroup, Model model) throws Exception {
		model.addAttribute(service.read(codeGroup));
	}
	
	// 수정 페이지
		@GetMapping("/modify")
		public void modifyForm(CodeGroup codeGroup, Model model) throws Exception {
			model.addAttribute(service.read(codeGroup));
		}
		
		// 코드그룹 수정 등록 페이지
		@PostMapping("/modify")
		public String modify(CodeGroup codeGroup, RedirectAttributes rttr) throws Exception {
			int count = service.update(codeGroup);
			if (count != 0) {
				rttr.addFlashAttribute("msg", "코드그룹 수정이 완료되었습니다.");
			} else {
				rttr.addFlashAttribute("msg", "코드그룹 수정에 실패하였습니다.");
			}
			return "redirect:/codegroup/list";
		}
		
		// 코드그룹 삭제 처리요청
		@GetMapping("/remove")
		public String remove(CodeGroup codeGroup, RedirectAttributes rttr) throws Exception {
			int count = service.remove(codeGroup);
			if (count != 0) {
				rttr.addFlashAttribute("msg", "코드그룹 삭제가 완료되었습니다.");
			} else {
				rttr.addFlashAttribute("msg", "코드그룹 삭제에 실패하였습니다.");
			}
			return "redirect:/codegroup/list";
		}
	
}
