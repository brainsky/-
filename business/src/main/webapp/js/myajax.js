var pathName=window.document.location.pathname;
var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
alert(projectName);
var navigation = new Array();

$(document).ready(function(){
	$.ajax({
		type:"GET",//请求方式
		url:"json/hospital.json",
		dataType: "json",
		success: function(data){
			alert("success");
			$.each(data.collapse, function(i, item){
				navigation[i] = item.url;		
			})
		},
		error: function(){
			alert("fail");
			$('.text-center text-success').html("");//清空
			$('.text-center text-success').append("ooh!火星登陆失败，请稍后再试！")
		}
		});
});

$(function initNavigation(){
	
		$('#nav_collapse li a').each(function(index){
				$(this).click(function(){
					$('#main_content').html("");	
					var url = navigation[index];  
			        var data = {type:1};  
			        $.ajax({  
			            type : "get",  
			            async : true,  //同步请求  
			            url : url,  
			            data : data,  
			            timeout:5000,  
			            success:function(dates){  
			                //alert(dates);  
			                $("#main_content").html(dates);//要刷新的div  
			            },  
			            error: function() {  
			               // alert("失败，请稍后再试！");  
			            }  
			        });  
				})
				
			
	})
})