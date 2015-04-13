<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>



<html>
<head>
</head>
<body>
<%

ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("Gallery/");
		String paramname=null;
		String file=null;
		String a=null,b=null,c=null,d=null,ee=null,ff=null,g=null,h=null,j=null,k=null,l=null,m=null,image=null;
	String bin = "";
		FileInputStream fs=null;
 
		File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("cname"))
				{
					a=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("pass"))
				{
					b=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("T1"))
				{
					c=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("T4"))
				{
					d=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("T5"))
				{
					ee=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("T3"))
				{
					ff=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("select"))
				{
					g=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("select2"))
				{
					h=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("select3"))
				{
					j=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("select4"))
				{
					k=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("select5"))
				{
					l=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("select6"))
				{
					m=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("photo"))
				{
					image=multi.getParameter(paramname);
				}
				
				
				
				}
		
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("Gallery\\"+image);
			file1 = new File(fPath);
			fs = new FileInputStream(file1);
			list.add(fs);
			
			
				
		String ss=fPath;
		FileInputStream fis = new FileInputStream(ss);
		StringBuffer sb1=new StringBuffer();
		 int i = 0;
         while ((i = fis.read()) != -1) {
                 if (i != -1) {
                       //System.out.println(i);
						 String hex = Integer.toHexString(i);
						// session.put("hex",hex);
						 sb1.append(hex);
						// sb1.append(",");
						
    String binFragment = "";
    int iHex;
 

    for(int i1= 0; i1 < hex.length(); i1++){
        iHex = Integer.parseInt(""+hex.charAt(i1),16);
        binFragment = Integer.toBinaryString(iHex);

        while(binFragment.length() < 4){
            binFragment = "0" + binFragment;
        }
        bin += binFragment;
		//System.out.print(bin);
		}
                 }
			
			
    }
			
			
			
			
			
			
		}		
	}
	
	        FileInputStream fs1 = null;
            //name=dirName+"\\Gallery\\"+image;
			int lyke=0;
			//String as="0";
			
 
 PreparedStatement ps=connection.prepareStatement("insert into user(username,password,fname,email,dob,mobile,habits,attitudes,tastes,moral,economic,people,imagess,binaryimage) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1,a);
               	ps.setString(2,b);
				ps.setString(3,c);	
       			ps.setString(4,d);
       			ps.setString(5,ee);
       			ps.setString(6,ff);
       			ps.setString(7,g);
       			ps.setString(8,h);
       			ps.setString(9,j);
       			ps.setString(10,k);
       			ps.setString(11,l);
       			ps.setString(12,m);
       			
       			
			 	ps.setBinaryStream(13, (InputStream)fs, (int)(file1.length()));
				ps.setString(14,bin);				
				
       if(f == 0)
			ps.setObject(7,null);
		else if(f ==7)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(7,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			out.println("User Registered Successfully......");
			  %><p><a href="registeruser.jsp">Back</a></p>

			  </body>
			  </html>
			  <%
			
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>

