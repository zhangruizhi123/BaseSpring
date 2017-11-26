/*******************************************************************************
 * 公共的接口用于生成表格
 * 
 * 
 */
;
(function($) {
	$.fn.table = function(dt) {
		// 先清空表格
		$(this).empty();
		var dd = {
			type : 'post',
			dataType : 'json',
			async : false,
			param : {
				rows : 2,
				page : 1
			},
			title : '',/* 表名 */
			url : '',/* 要加载的数据 */
			data : [],/* 直接填写的数据，当不为空时优先加载该数据 */
			column : [],/* 要显示哪些列 */
		};
		// 对报表数据进行初始化
		$.extend(true, dd, dt);

		// 这里引入一些数据其他的数据
		var _panel = '<div class="panel panel-danger">'
				+ '<div class="panel-heading">'
				+ '<div class="panel-title">用户管理</div>'
				+ '</div>'
				+ '<div class="panel-body">'
				+ '<div class="tables"></div>'
				+ '</div>'
				+ '<div class="panel-footer">'
				+ '<div class="row">'
				+ '<div class="col-md-3 hidden-xs" style="text-align:center;">'
				+ '<select class="page form-control" style="margin: 20px 0;">'
				+ '<option value="2">2</option>'
				+ '<option value="3">3</option>'
				+ '<option value="20">20</option>'
				+ '<option value="30">30</option>'
				+ '<option value="50">50</option>'
				+ '<option value="100">100</option>'
				+ '</select>'
				+ '</div>'
				+ '<div class="col-md-6 " style="text-align:center;">'
				+ '<ul class="pagination pagination-sm pageCtr">'
				+ '<li><a  href="#">&laquo;</a></li>'
				+ '<li class="disabled active"><a>1</a></li>'
				+ '<li><a href="#">2</a></li>'
				+ '<li><a href="#">3</a></li>'
				+ '<li class="active"><a>4</a></li>'
				+ '<li><a href="#">5</a></li>'
				+ '<li><a>6</a></li>'
				+ '<li><a>&raquo;</a></li>'
				+ '</ul>'
				+ '</div>'
				+ '<div class="col-md-3 hidden-xs" style="text-align:center;">'
				+ '<span style="margin: 20px 0;display:inline-block;">当前第&nbsp;<span class="current"></span>&nbsp;页&nbsp;&nbsp;&nbsp;</span>'
				+ '<span style="margin: 20px 0;display:inline-block;">共&nbsp;<span class="total"></span>&nbsp;条记录</span>'
				+ '</div>' + '</div>'
				+ '<input type="hidden" class="index" value="1">' + '</div>'
				+ '</div>';
		var _$panel = $(_panel);
		
		_$panel.find(".panel-title").text(dd.title);
		
		//设置当前页是哪一页
		dd.param.page = _$panel.find(".index").val();
		//当分页大小改变时
		_$panel.find(".page").change(function() {
			dd.param.rows=$(this).val();
			_$panel.find(".index").val("1");
			reload(dd);
		});
		// 同步加载数据
		function loadData(dd) {
			// 当没有数据是
			$.ajax({
				url : dd.url,
				data : dd.param,
				type : dd.type,
				dataType : dd.dataType,
				async : dd.async,
				success : function(json) {
					dd.data = json.obj;
					_$panel.find(".total").html(""+json.total);
					var index=_$panel.find(".index").val();
					_$panel.find(".current").html(""+index);
					_$panel.find(".pageCtr").empty().append(getPage(json));
				}
			});
			
			//
			return dd;
		}

		// 构造一个表格对象
		function tableStr(dd) {
			// 表格对象
			var $table = $("<table class='table table-bordered table-hover'></table>");
			// 表头对象
			var $tabHead = $("<thead></thead>");
			// 解析表头对象
			var $th = $("<tr></tr>");
			for (var i = 0; i < dd.column.length; i++) {
				var item = dd.column[i];
				var td = "";
				if (item.visible == "hide") {
					td = "<td style='display:none'>" + item.name + "</td>";
				} else {
					td = "<td>" + item.name + "</td>";
				}
				$th.append($(td));
			}
			$tabHead.append($th);
			var $tBody = $("<tbody></tbody>");

			// 解析表的数据
			for (var j = 0; j < dd.data.length; j++) {
				var bdTR = "<tr>";
				var item = dd.data[j];
				// 获取数据
				for (var k = 0; k < dd.column.length; k++) {
					var colItem = dd.column[k];
					var key = colItem.field;
					// 该属性可以连级操作,如field="abc.def"
					var text = $.jsonStr(item, key);
					var align = "left";
					if (colItem.align != undefined && colItem.align != "") {
						align = colItem.align;
					}
					// 对报表中的回调函数进行处理
					if (colItem.rander != undefined) {
						if (typeof colItem.rander === "function") {
							text = colItem.rander(text, item);
						}
					}
					if (colItem.visible == "hide") {
						bdTR += "<td style='display:none;text-align:" + align
								+ ";'>" + text + "</td>";
					} else {

						bdTR += "<td style='text-align:" + align + ";'>" + text
								+ "</td>";
					}

				}
				bdTR += "</tr>";
				var $bdTR = $(bdTR);
				// 当鼠标点击时添加选中效果
				$bdTR.click(function() {
					var cls = $(this).attr("class");
					if (cls == undefined) {
						$(this).addClass("success");
					} else {
						// 取消选
						var clss = cls.split(" ");
						var isRemove = false;
						for (var i = 0; i < clss.length; i++) {
							if (clss[i].indexOf("success") == 0) {
								$(this).removeClass("success");
								isRemove = true;
								break;
							}
						}
						if (!isRemove) {
							$(this).addClass("success");
						}
					}
				})
				$tBody.append($bdTR);
			}
			$table.append($tabHead);
			$table.append($tBody);
			return $table;
		}
		function reload(dd) {
			var data = loadData(dd);
			var table = tableStr(data);
			_$panel.find(".tables").empty().append(table);
			resizeHeigt();
		}
		
		function getPage(data){
			//data中会返回查询的页
			//根据数据获取分页控件
			var _$li="";
			//当前页
			var index=_$panel.find(".index").val();
			//分页大小
			var page=parseInt(_$panel.find(".page").val());
			var total=parseInt(data.total);
			var totalPage=0;
			if(total%page==0){
				totalPage=parseInt(total/page);
			}else{
				totalPage=parseInt(total/page+1);
			}
			if(index==1){
				_$li+='<li class="disabled"><a  href="#">&laquo;</a></li>';
			}else{
				_$li+='<li type="pre"><a  href="#">&laquo;</a></li>';
			}
			var start=1,end=index+2;
			if((index-2)>0){
				start=index-2;
			}
			if(index+2>totalPage){
				end=totalPage;
			}
			for(var i=start;i<=end;i++){
				if(i==index){
					_$li+='<li class="active" type="li"><a href="#">'+i+'</a></li>';
				}else{
					_$li+='<li type="li"><a href="#">'+i+'</a></li>';
				}
			}
			//当是最后一页，下一页不可点击
			if(index==totalPage){
				_$li+='<li class="disabled"><a href="#">&raquo;</a></li>';
			}else{
				_$li+='<li type="next"><a  href="#">&raquo;</a></li>';
			}
			var $li=$(_$li);
			$li.click(function(){
				var disable=$(this).attr("class");
				if(disable!="disabled"){
					var l=$(this).attr("type");
					//设置下一页
					if(l=="pre"){
						index--;
					}else if(l=="li"){
						index=$(this).text();
					}else if(l=="next"){
						index++;
					}
					_$panel.find(".index").val(index);
					dd.param.page=index;
					reload(dd);
				}
			});
			//添加事件
			return $li;
		}
		var _data=loadData(dd);
		_$panel.find(".tables").append(tableStr(_data));
		$(this).append(_$panel);
		return $(this);
	}
	/**
	 * 根据字符串获取json对象的连级属性
	 */
	$.jsonStr = function(date, name) {
		var dateStr = JSON.stringify(date);
		var json = "var _ab_c=" + dateStr + ";_ab_c." + name;
		try {
			return eval(json);
		} catch (e) {
			return undefined;
		}
	}

	// 根据给定数据加载表单中的数据
	$.fn.loadForm = function(data) {
		// 遍历每个键值对
		var $that = $(this);
		$.each(data, function(key, value) {
			// 遍历表单
			var $controller = $that.find("[name=" + key + "]");
			if ($controller.attr("type") == "radio") {
				for (var i = 0; i < $controller.length; i++) {
					var v = $($controller[i]).val();
					if (v == value) {
						$($controller[i]).attr("checked", "checked");
						break;
					}
				}
			} else {
				$controller.val(value);
			}
		});
	}
})(jQuery);
