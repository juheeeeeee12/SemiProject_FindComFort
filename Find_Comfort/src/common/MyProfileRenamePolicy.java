package common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyProfileRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File originFile) {
		long currentTime = System.currentTimeMillis();
		int ranNum = (int)(Math.random() * 100000);
		
		String name = originFile.getName();
		String ext = null;
		int dot = name.lastIndexOf(".");
		
		if(dot == -1) {
			ext = "";
		} else {
			ext = name.substring(dot);
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String fileName = sdf.format(new Date(currentTime)) + ranNum + ext;
		
		File newFile = new File(originFile.getParent(), fileName);
		
		return newFile;
		
		
	}

}
