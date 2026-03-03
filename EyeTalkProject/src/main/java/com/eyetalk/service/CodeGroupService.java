package com.eyetalk.service;

import java.util.List;

import com.eyetalk.domain.CodeGroup;

public interface CodeGroupService {

	public int register(CodeGroup codeGroup) throws Exception;

	public List<CodeGroup> list() throws Exception;

	public CodeGroup read(CodeGroup codeGroup) throws Exception;

	public int update(CodeGroup codeGroup) throws Exception;

	public int remove(CodeGroup codeGroup) throws Exception;
}
