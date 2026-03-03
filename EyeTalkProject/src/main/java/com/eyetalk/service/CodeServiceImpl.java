package com.eyetalk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eyetalk.common.domain.CodeLabelValue;
import com.eyetalk.mapper.CodeMapper;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	private CodeMapper mapper;

	@Override
	public List<CodeLabelValue> getCodeGroupList() throws Exception {
		return mapper.getCodeGroupList();
	}
}
