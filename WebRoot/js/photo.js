//发送请求
function sendImgAjax(){
	$.post("CustomerServlet",{"username":username,"pwd":pwd},function(data){
		
		//每次显示查询后的数据前，清空原有的数据
		
		$.each(data,function(index,customerJson){
			$("div").append("<tr><td>"+customerJson.id+"</td>" +
							  "<td>"+customerJson.username+"</td>" +
							  "<td>"+customerJson.pwd+"</td>" +
							  "<td>"+customerJson.photo+"</td>");
		});
		
	},"json");
	
}