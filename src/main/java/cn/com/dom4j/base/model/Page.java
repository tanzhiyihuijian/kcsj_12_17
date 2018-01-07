package cn.com.dom4j.base.model;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Alvin(Alvin@laowantong.cc)
 * @date 2016年1月13日
 * @desc
 */
public class Page {
	////是否是搜索请求 
	private boolean _search;
	
	private int page = 1;
	
	private int rowNum;
	
	private int rows = 10;
	
	private String sord;
	
	private String sidx;
	
	private String param;
	//已经发送的请求的次数  
	private String nd;
	
	private String searchField;
	
	private String searchOper;
	
	private String searchString;

	private String keywords = "";
	
	private String filters;

	private int difficulty;

	private int danceType;

	private int startIndex = -1;

	private int limit;

	private int recordCount;

	private Map<String, Object> params = new HashMap<String, Object>();
	
	public boolean is_search() {
		return _search;
	}

	public void set_search(boolean _search) {
		this._search = _search;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public String getSord() {
		return sord;
	}

	public void setSord(String sord) {
		this.sord = sord;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}
	
	public int getStart() {
		return startIndex > -1 ? startIndex : (page - 1)*rows;
	}

	public String getNd() {
		return nd;
	}

	public void setNd(String nd) {
		this.nd = nd;
	}

	public String getSearchField() {
		return searchField;
	}

	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}

	public String getSearchOper() {
		return searchOper;
	}

	public void setSearchOper(String searchOper) {
		this.searchOper = searchOper;
	}

	public String getSearchString() {
		return searchString;
	}

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	public String getFilters() {
		return filters;
	}

	public void setFilters(String filters) {
		this.filters = filters;
	}

	public String getSidx() {
		return sidx;
	}

	public void setSidx(String sidx) {
		this.sidx = sidx;
	}
	
	public void putParam(String name, Object value) {
		params.put(name, value);
	}

	public Map<String, Object> getParams() {
		return this.params;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public int getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(int difficulty) {
		this.difficulty = difficulty;
	}

	public int getDanceType() {
		return danceType;
	}

	public void setDanceType(int danceType) {
		this.danceType = danceType;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public int getPageCount() {
		if (rows == 0) {
			return 0;
		}
		if (recordCount == 0) {
			return 0;
		}
		return (recordCount % rows) == 0 ? recordCount / rows : (recordCount / rows) + 1;
	}

	public boolean isLastPage() {
		if ((startIndex * limit) >= recordCount) {
			return false;
		} else {
			return true;
		}
	}

	public int getLimitRows() {
		if (getStart() + rows > recordCount) {
			return getStart() + rows - recordCount;
		}
		return rows;
	}
}
