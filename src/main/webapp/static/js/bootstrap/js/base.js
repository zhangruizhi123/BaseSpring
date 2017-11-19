;(function($){
	$.fn.table=function(dt){
		var dd={
			type:'get',
			dataType:'json',
			async:false,
			title:'',/*表名*/
			url:'',/*要加载的数据*/
			data:[],/*直接填写的数据，当不为空时优先加载该数据*/
			column:[],/*要显示哪些列*/
			
		};
		$(this).html("<h2>111</h2>");
		$.extend(true, dd, dt);
		//当没有数据是
		if(dd.data.length<=0){
			$.ajax({
				url:dd.url,
				type:dd.type,
				dataType:dd.dataType,
				async:dd.async,
				success:function(json){
					dd.data=json.obj;
				}
			});
		}
		//表格对象
		var  $table=$("<table class='table table-bordered table-hover'></table>");
		//表头对象
		var  $tabHead=$("<thead></thead>");
		//解析表头对象
		var $th=$("<tr></tr>");
		for(var i=0;i<dd.column.length;i++){
			var item=dd.column[i];
			var td="";
			if(item.visible=="hide"){
				td="<td style='display:none'>"+item.name+"</td>";
			}else{
				td="<td>"+item.name+"</td>";
			}
			$th.append($(td));
		}
		$tabHead.append($th);
		var $tBody=$("<tbody></tbody>");
		
		//解析表的数据
		for(var j=0;j<dd.data.length;j++){
			var bdTR="<tr>";
			var item=dd.data[j];
			//获取数据
			for(var k=0;k<dd.column.length;k++){
				var colItem=dd.column[k];
				var key=colItem.field;
				//该属性可以连级操作,如field="abc.def"
				var text=$.jsonStr(item,key);
				var align="left";
				if(colItem.align!=undefined&&colItem.align!=""){
					align=colItem.align;
				}
				if(colItem.visible=="hide"){
					bdTR+="<td style='display:none;text-align:"+align+";'>"+text+"</td>";
				}else{
					
					bdTR+="<td style='text-align:"+align+";'>"+text+"</td>";
				}
				
			}
			bdTR+="</tr>";
			var $bdTR=$(bdTR);
			//当鼠标点击时添加选中效果
			$bdTR.click(function(){
				var cls=$(this).attr("class");
				if(cls==undefined){
					$(this).addClass("success");
				}else{
					//取消选
					var clss=cls.split(" ");
					var isRemove=false;
					for(var i=0;i<clss.length;i++){
						if(clss[i].indexOf("success")==0){
							$(this).removeClass("success");
							isRemove=true;
							break;
						}
					}
					if(!isRemove){
						$(this).addClass("success");
					}
				}
			})
			$tBody.append($bdTR);
		}
		$table.append($tabHead)
		$table.append($tBody);
		$(this).append($table);
		
		return this;
	}
	/**
	 * 根据字符串获取json对象的连级属性
	 * */
	$.jsonStr=function(date,name){
		var dateStr=JSON.stringify(date);
		var json="var _abc="+dateStr+";_abc."+name;
		try{
			return eval(json);
		}catch(e){
			return undefined;
		}
	}
})(jQuery);
