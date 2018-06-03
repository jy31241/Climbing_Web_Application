package net.skhu.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.cxf.helpers.IOUtils;
import org.apache.cxf.io.CachedOutputStream;
import org.json.simple.JSONObject;

@WebServlet("/PublicData.do")
public class MtInforController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String addr = "http://openapi.forest.go.kr/openapi/service/cultureInfoService/gdTrailInfoOpenAPI?serviceKey=";
		String serviceKey = "lco1hBydNCh2%2FdcDDkSBod92Ace0eyP9JzPBVIwJKlWlSoxF6uQ%2BLgMXuzDX5a0pqK%2By0q7lhlZvQPIEndZsxQ%3D%3D";
//		String parameter = "";
//		// serviceKey = URLEncoder.encode(serviceKey,"utf-8");
		PrintWriter out = response.getWriter();
//		parameter = parameter + "&" + "searchMtNm=설악산";

		addr = addr + serviceKey;
		URL url = new URL(addr);

		InputStream in = url.openStream();
		CachedOutputStream bos = new CachedOutputStream();
		IOUtils.copy(in, bos);
		in.close();
		bos.close();

		// out.println(addr);

		String data = bos.getOut().toString();
		out.println(data);

		JSONObject json = new JSONObject();
		json.put("data", data);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String addr = "http://openapi.forest.go.kr/openapi/service/cultureInfoService/gdTrailInfoOpenAPI?ServiceKey=";
		String serviceKey = "lco1hBydNCh2%2FdcDDkSBod92Ace0eyP9JzPBVIwJKlWlSoxF6uQ%2BLgMXuzDX5a0pqK%2By0q7lhlZvQPIEndZsxQ%3D%3D";
		String parameter = "";


		// serviceKey = URLEncoder.encode(serviceKey,"utf-8");
		PrintWriter out = response.getWriter();
		parameter = parameter + "&" + "searchMtNm=설악산";

		addr = addr + serviceKey + parameter;
		URL url = new URL(addr);

		InputStream in = url.openStream();
		CachedOutputStream bos = new CachedOutputStream();
		IOUtils.copy(in, bos);
		in.close();
		bos.close();

		// out.println(addr);

		String data = bos.getOut().toString();
		out.println(data);

		JSONObject json = new JSONObject();
		json.put("data", data);

	}

}
