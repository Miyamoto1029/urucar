package com.urucar.util;

import java.util.ArrayList;
import java.util.List;

public class InputChecker {

//	画像のサイズチェック
	public List<String> doFileNameCheck(String fileName){
		List<String> imageFileNameErrorMessageList=new ArrayList<String>();
		if(fileName.length()==0){
			imageFileNameErrorMessageList.add("画像を選択してください。");
		}
		else if(fileName.length()>30){
			imageFileNameErrorMessageList.add("画像サイズは1文字以上30文字以下で入力してください。");
		}
		return imageFileNameErrorMessageList;
	}

	public List<String> doBirthPlaceCheck(String birthPlace){
		List<String> birthPlaceErrorMessageList=new ArrayList<String>();
		if(!(birthPlace.contains("都") ||birthPlace.contains("道")||birthPlace.contains("府")||birthPlace.contains("県"))){
			birthPlaceErrorMessageList.add("出身地には都道府県まで入力してください。");
		}
		return birthPlaceErrorMessageList;
	}

}
