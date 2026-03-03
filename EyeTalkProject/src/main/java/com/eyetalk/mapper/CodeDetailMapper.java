package com.eyetalk.mapper;

import java.util.List;

import com.eyetalk.domain.CodeDetail;

public interface CodeDetailMapper {

	public int create(CodeDetail codeDetail) throws Exception;

	public int getMaxSortSeq(String groupCode) throws Exception;

	public List<CodeDetail> list() throws Exception;

	public CodeDetail read(CodeDetail codeDetail) throws Exception;

	public int update(CodeDetail codeDetail) throws Exception;

	public int delete(CodeDetail codeDetail) throws Exception;

}
