package com.eyetalk.service;

import java.util.List;

import com.eyetalk.domain.CodeDetail;

public interface CodeDetailService {

	public int register(CodeDetail codeDetail) throws Exception;

	public List<CodeDetail> list() throws Exception;

	public CodeDetail read(CodeDetail codeDetail) throws Exception;

	public int modify(CodeDetail codeDetail) throws Exception;

	public int remove(CodeDetail codeDetail) throws Exception;

}
