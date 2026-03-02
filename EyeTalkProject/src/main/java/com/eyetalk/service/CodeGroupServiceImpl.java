package com.eyetalk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eyetalk.domain.CodeGroup;
import com.eyetalk.mapper.CodeGroupMapper;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	
	@Autowired
	private CodeGroupMapper mapper;

	@Override
	public int register(CodeGroup codeGroup) throws Exception {
		return mapper.create(codeGroup);
	}
	
	
}
