package com.eyetalk.mapper;

import java.util.List;

import com.eyetalk.domain.CodeGroup;

public interface CodeGroupMapper {

	public int create(CodeGroup codeGroup) throws Exception;

	public List<CodeGroup> list() throws Exception;

	public CodeGroup read(CodeGroup codeGroup) throws Exception;

	public int update(CodeGroup codeGroup) throws Exception;

	public int delete(CodeGroup codeGroup) throws Exception;
	
}
