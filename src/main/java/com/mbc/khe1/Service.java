package com.mbc.khe1;

import java.util.ArrayList;

public interface Service {

	void insertm(String name, int kor, int eng, int mat);

	ArrayList<ScoreDTO> out2();

}