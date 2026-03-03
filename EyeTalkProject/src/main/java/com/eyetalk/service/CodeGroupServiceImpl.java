package com.eyetalk.service;

import java.util.List;

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

	@Override
	public List<CodeGroup> list() throws Exception {
		return mapper.list();
	}

	@Override
	public CodeGroup read(CodeGroup codeGroup) throws Exception {
		return mapper.read(codeGroup);
	}

	@Override
	public int update(CodeGroup codeGroup) throws Exception {
		return mapper.update(codeGroup);
	}

	@Override
	public int remove(CodeGroup codeGroup) throws Exception {
		return mapper.delete(codeGroup);
	}
	
	
}
