package com.eyetalk.service;

import java.util.List;

import com.eyetalk.common.domain.CodeLabelValue;

public interface CodeService {

	public List<CodeLabelValue> getCodeGroupList() throws Exception;

}
