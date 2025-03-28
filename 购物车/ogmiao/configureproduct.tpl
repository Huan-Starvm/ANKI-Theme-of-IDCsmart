<style>
/* 基础变量 - 与product.tpl和topbar-categories.tpl保持一致 */
:root {
  --primary: #f08a5d;
  --primary-dark: #e67e22;
  --primary-light: #fad7a0;
  --secondary: #f9b384;
  --accent: #ffbe76;
  --dark: #2d3436;
  --light: #ffffff;
  --gray: #636e72;
  --gray-light: #f8f8f8;
}

/* 表单元素基础样式 */
.form-control {
  border-radius: 8px;
  border: 1px solid rgba(240, 138, 93, 0.2);
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 2px 10px rgba(240, 138, 93, 0.05);
}

.form-control:focus {
  box-shadow: 0 0 0 4px rgba(240, 138, 93, 0.15);
  border-color: var(--primary);
}

/* 美化下拉菜单 */
select.form-control {
  appearance: none;
  -webkit-appearance: none;
  -moz-appearance: none;
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='%23f08a5d' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: right 10px center;
  background-size: 16px;
  padding-right: 30px;
  cursor: pointer;
  font-weight: 500;
}

select.form-control:hover {
  border-color: var(--primary);
  box-shadow: 0 2px 8px rgba(240, 138, 93, 0.15);
  transform: translateY(-1px);
}

select.form-control:focus {
  border-color: var(--primary);
  box-shadow: 0 0 0 3px rgba(240, 138, 93, 0.2);
  outline: none;
}

/* 美化下拉菜单选项 - 这只在某些浏览器中生效 */
select.form-control option {
  padding: 10px;
  background-color: #fff;
  color: var(--dark);
}

select.form-control option:hover,
select.form-control option:checked {
  background-color: var(--primary-light);
  color: var(--dark);
}

/* 特别处理操作系统下拉菜单 */
.configoption_os_group,
.configoption_os {
  font-weight: 500;
  color: var(--dark);
}

/* 暗黑模式下拉菜单 */
.dark select.form-control {
  background-color: #252525;
  border-color: #333;
  color: #e0e0e0;
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='%23f08a5d' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
}

.dark select.form-control option {
  background-color: #252525;
  color: #e0e0e0;
}

.dark select.form-control option:hover,
.dark select.form-control option:checked {
  background-color: #333;
  color: var(--primary);
}

.was-validated .custom-control-input:valid~.custom-control-label::before {
  background-color: #fff;
}

.bootstrap-select.is-valid .dropdown-toggle,
.was-validated .bootstrap-select select:valid+.dropdown-toggle {
  border-color: #ced4da !important;
}

.form-control.is-valid,
.was-validated .form-control:valid {
  display: block;
  width: 100%;
  padding: 0.47rem 0.75rem;
  font-size: 0.8125rem;
  font-weight: 400;
  line-height: 1.5;
  color: #495057;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
  background-image: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiP…45NSwyLjI2LDYsMi4xMyw2LDJWMS41QzYsMS4yMiw1Ljc4LDEsNS41LDF6Ii8+Cjwvc3ZnPgo=);
  background-position-y: 50%;
  background-position-x: calc(100% - 11px);
  background-repeat: no-repeat;
  padding-right: 24px;
}

/* 卡片样式 - 与product.tpl保持一致 */
.card {
  border: none;
  border-radius: 15px;
  overflow: hidden;
  transition: all 0.3s ease;
  margin-bottom: 20px;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
}

.card-body {
  padding: 15px;
}

.card-title {
  font-weight: 600;
  color: var(--dark);
}

/* 周期选择折扣标签 */
.cycle-select-discount {
  position: absolute;
  top: -10px;
  right: 0;
  display: inline-block;
  padding: 0px 5px;
  height: 15px;
  background: var(--primary);
  border-radius: 5px 5px 5px 0px;
  color: #ffffff;
  font-size: 12px;
  text-align: center;
  line-height: 15px;
  transition: all 0.3s ease;
}

/* 错误提示样式 */
.error-tip {
  color: #f46a6a;
  margin: 0;
  padding: 0;
  line-height: 36px;
  display: none;
}

/* 占位符颜色 */
input::-webkit-input-placeholder {
  color: #cacdd4 !important;
}

input:-moz-placeholder {
  color: #cacdd4 !important;
}

input::-moz-placeholder {
  color: #cacdd4 !important;
}

input:-ms-input-placeholder {
  color: #cacdd4 !important;
}

/* 自定义按钮样式 */
.btn-custom {
  min-width: 72px;
  height: 28px;
  border: #F0F0F0 1px solid;
  border-radius: 8px;
  line-height: 11px;
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  position: relative;
  overflow: hidden;
}

.btn-custom:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(240, 138, 93, 0.15);
}

.btn-custom::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, rgba(255,255,255,0), rgba(255,255,255,0.2), rgba(255,255,255,0));
  transform: translateX(-100%);
  transition: transform 0.6s ease;
}

.btn-custom:hover::after {
  transform: translateX(100%);
}

.btn-custom-group .active {
  background-color: var(--primary);
  color: #fff;
  box-shadow: 0 4px 8px rgba(240, 138, 93, 0.25);
}

/* 重写进度条 */
input[type='range'] {
  background: #F1F3F8;
  outline: none;
  -webkit-appearance: none;
  height: 4px;
  border-radius: 3px;
  background: var(--primary) !important;
  transition: all 0.3s ease;
}

input[type="range"]::-webkit-slider-thumb {
  -webkit-appearance: none;
  width: 10px;
  height: 23px;
  background-color: #fff;
  cursor: pointer;
  border: 4px solid var(--primary);
  border-top-width: 5px;
  border-bottom-width: 5px;
  border-radius: 2px;
  transition: all 0.3s ease;
}

input[type="range"]::-webkit-slider-thumb:hover {
  transform: scale(1.1);
}

input[type="range"]::-moz-range-thumb {
  -webkit-appearance: none;
  width: 2px;
  height: 15px;
  background-color: #fff;
  cursor: pointer;
  border: 4px solid var(--primary);
  border-top-width: 5px;
  border-bottom-width: 5px;
  border-radius: 2px;
  transition: all 0.3s ease;
}

input[type="range"]::-moz-range-thumb:hover {
  transform: scale(1.1);
}

.range_none {
  position: absolute;
  height: 3px;
  display: block;
  background: #DEDEDE;
  cursor: not-allowed
}

/* 表单布局 */
.form-check {
  margin-left: 20px;
}

.justify-content-start {
  flex-wrap: wrap;
}

/* 配置项样式 */
.configureproduct {
  margin-bottom: 15px;
  transition: all 0.3s ease;
}

.configureproduct label {
  font-weight: 500;
  color: var(--dark);
}

/* 按钮组样式 */
.btn-group-toggle .btn {
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  position: relative;
  overflow: hidden;
}

.btn-group-toggle .btn::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, rgba(255,255,255,0), rgba(255,255,255,0.2), rgba(255,255,255,0));
  transform: translateX(-100%);
  transition: transform 0.6s ease;
}

.btn-group-toggle .btn:hover::after {
  transform: translateX(100%);
}

.btn-group-toggle .btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(240, 138, 93, 0.15);
}

.btn-group-toggle .btn.active {
  background-color: var(--primary);
  border-color: var(--primary);
  box-shadow: 0 4px 8px rgba(240, 138, 93, 0.25);
}

/* 自定义复选框样式 */
.custom-control-input:checked ~ .custom-control-label::before {
  background-color: var(--primary);
  border-color: var(--primary);
}

.custom-control-label::before {
  transition: all 0.3s ease;
}

.custom-control-input:focus ~ .custom-control-label::before {
  box-shadow: 0 0 0 0.2rem rgba(240, 138, 93, 0.25);
}

/* 动画效果 */
@keyframes gentle-float {
  0%, 100% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-5px);
  }
}

@keyframes gentle-wave {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}

@keyframes ripple-effect {
  to {
    transform: scale(2.5);
    opacity: 0;
  }
}

/* 响应式调整 */
@media (max-width: 992px) {
  .footer {
    z-index: 1;
    display: none !important;
  }
  
  .card-body {
    padding: 12px;
  }
  
  .form-group {
    margin-bottom: 12px;
  }
}

@media (max-width: 768px) {
  .form-control {
    font-size: 0.9rem;
  }
  
  .btn-custom {
    min-width: 65px;
    height: 26px;
  }
  
  select.form-control {
    background-size: 14px;
    padding-right: 25px;
  }
}

@media (max-width: 576px) {
  .card-body {
    padding: 10px;
  }
  
  .form-group {
    margin-bottom: 10px;
  }
  
  .form-control {
    font-size: 0.85rem;
  }
  
  .btn-custom {
    min-width: 60px;
    height: 24px;
    font-size: 0.85rem;
  }
  
  .col-form-label {
    font-size: 0.9rem;
  }
  
  select.form-control {
    background-size: 12px;
    padding-right: 22px;
  }
}

/* 暗黑模式支持 */
.dark .card {
  background-color: #1a1a1a;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.dark .card-title,
.dark .col-form-label {
  color: #e0e0e0;
}

.dark .form-control {
  background-color: #252525;
  border-color: #333;
  color: #e0e0e0;
}

.dark .form-control:focus {
  box-shadow: 0 0 0 4px rgba(240, 138, 93, 0.2);
  border-color: var(--primary);
}

.dark .btn-custom {
  background-color: #252525;
  border-color: #333;
  color: #e0e0e0;
}

.dark .btn-custom-group .active {
  background-color: var(--primary);
  color: #fff;
}

.dark .btn-group-toggle .btn {
  background-color: #252525;
  border-color: #333;
  color: #e0e0e0;
}

.dark .btn-group-toggle .btn.active {
  background-color: var(--primary);
  color: #fff;
}

.dark .custom-control-label::before {
  background-color: #252525;
  border-color: #333;
}

.dark .custom-control-input:checked ~ .custom-control-label::before {
  background-color: var(--primary);
  border-color: var(--primary);
}

.dark .range_none {
  background: #333;
}

.dark input[type='range'] {
  background: #333 !important;
}

.dark input[type="range"]::-webkit-slider-thumb {
  border-color: var(--primary);
}

.dark input[type="range"]::-moz-range-thumb {
  border-color: var(--primary);
}

.dark .btn-custom::after,
.dark .btn-group-toggle .btn::after {
  background: linear-gradient(90deg, rgba(40,40,40,0), rgba(40,40,40,0.2), rgba(40,40,40,0));
}

/* 在样式部分添加以下代码，控制密码查看按钮的颜色 */
.bx-show-alt {
  color: var(--primary) !important;
  transition: all 0.3s ease;
}

.bx-show-alt:hover {
  color: var(--primary-dark) !important;
  transform: scale(1.1);
}

.fas.fa-dice {
  color: var(--primary);
  transition: all 0.3s ease;
}

.fas.fa-dice:hover {
  color: var(--primary-dark);
  transform: scale(1.1) rotate(15deg);
}

/* 在CSS样式部分添加以下规则，覆盖帮助图标的颜色 */
.bxs-help-circle.pointer.text-primary {
  color: var(--primary) !important;
  transition: all 0.3s ease;
}

.bxs-help-circle.pointer.text-primary:hover {
  color: var(--primary-dark) !important;
  transform: scale(1.1);
}

/* 拉动条和输入框布局优化 */
.configoption_range {
  height: 4px;
  border-radius: 3px;
  background: var(--primary) !important;
  transition: all 0.3s ease;
}

.configoption_range_val {
  text-align: center;
  font-weight: 500;
  transition: all 0.3s ease;
  border-radius: 6px;
}

.configoption_range_val:focus {
  box-shadow: 0 0 0 3px rgba(240, 138, 93, 0.2);
  border-color: var(--primary);
}

/* 暗黑模式下的输入框 */
.dark .configoption_range_val {
  background-color: #252525;
  border-color: #333;
  color: #e0e0e0;
}

.dark .configoption_range_val:focus {
  background-color: #2a2a2a;
}
</style>
{if isset($Get.i)}
<form id="addCartForm" method="post" class="needs-validation configoption_form" novalidate
	action="?action=configureproduct&pid={$CartConfig.product.id}&pos[]={$Think.get.i}">
	<input type="hidden" name="i" value="{$Think.get.i}" />
	{else/}
	<form id="addCartForm" method="post" class="needs-validation configoption_form" novalidate
		action="?action=configureproduct&pid={$CartConfig.product.id}{if $Get.site}&site={$Get.site}{/if}">
		{/if}
		<div class="row">
			<div class="col-xl-8">
				<div class="card border-bottom mb-0">
					<div class="card-body">
						{if $ErrorMsg}
						<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert">
								&times;
							</a>
							<strong>{$ErrorMsg}</strong>
						</div>
						{/if}
						<div class="d-flex justify-content-between align-items-center">
							<h4 class="card-title ">{$CartConfig.product.name}</h4>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-body">



						<input type="hidden" name="pid" value="{$CartConfig.product.id}" />
						<input type="hidden" name="currencyid" value="{$CartConfig.dafault_currencyid}" />
						<input name="qty" type="hidden" value="1" />
						{if(isset($addParam.promocode))}
						<input type="hidden" name="promocode" value="{$addParam.promocode}" />
						{/if}
						{if(isset($addParam.aff))}
						<input type="hidden" name="aff" value="{$addParam.aff}" />
						{/if}
						{if(isset($addParam.sale))}
						<input type="hidden" name="sale" value="{$addParam.sale}" />
						{/if}
						<!--产品配置项-->
						{foreach $CartConfig.option as $option}
						{if $option.option_type==1}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-3">
								<select id="config{$option.id}" name="configoption[{$option.id}]" class="form-control selectpicker"
									data-style="btn-default">
									{foreach $option.sub as $sub}
									<option id="sub{$sub.id}" {if $CartConfig.config_options[$option.id]==$sub.id} selected="" {elseif
										$getUrlConfig.config_options[$option.id]==$sub.id && !$CartConfig.config_options} selected="" {/if}
										value="{$sub.id}">{$sub.option_name}</option>
									{/foreach}
								</select>
							</div>
						</div>

						{elseif $option.option_type==20 /}

						<div class="form-group row configureproduct lingAge-{$option.id}">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-10">
								<div class="btn-group btn-group-toggle mt-2 mt-xl-0" data-toggle="buttons">
									{foreach $option.sub as $sub_key=>$sub_val}
									<label class="btn btn-primary btn-sm {if $CartConfig.config_options[$option.id]==$sub_val.id}active {elseif
									(($option.checkSubId==$sub_val.id) && !$CartConfig.config_options) /} active {elseif
									$getUrlConfig.config_options[$option.id]==$sub_val.id && !$CartConfig.config_options} active
									{/if}">
											<input id="config{$option.id}_{$sub_val.id}" type="radio" data-optionid="{$option.id}"
												data-subid="{$sub_val.id}" name="configoption[{$option.id}]" value="{$sub_val.id}"
												class="form-check-input" {if $CartConfig.config_options[$option.id]==$sub_val.id}checked="" {elseif
												(($option.checkSubId==$sub_val.id) && !$CartConfig.config_options) /} checked="" {elseif
												$getUrlConfig.config_options[$option.id]==$sub_val.id && !$CartConfig.config_options} checked=""
												{/if}> {$sub_val.option_name}
										</label>
									{/foreach}
								</div>
							</div>
						</div>
						<div class="lingAge-{$option.id}-son">
							{if (isset($option.son) && $option.son)}
							{foreach $option.son as $son_k1 => $son_v1}
							<div class="form-group row configureproduct">
								<label for="example-search-input" class="col-md-2 col-form-label">{$son_v1.option_name}
									{if $son_v1.notes}
									<span data-toggle="tooltip" data-placement="right" title="{$son_v1.notes}">
										<i class="bx bxs-help-circle pointer text-primary"></i>
									</span>
									{/if}
								</label>
								<div class="col-md-10">
									<div class="btn-group btn-group-toggle mt-2 mt-xl-0" data-toggle="buttons">
										{foreach $son_v1.sub as $sub_key=>$sub_val}
											<label class="btn btn-primary btn-sm {if $CartConfig.config_options[$son_v1.id]==$sub_val.id}active
										{elseif (($son_v1.checkSubId==$sub_val.id) && !$CartConfig.config_options) /} active {elseif
										$getUrlConfig.config_options[$son_v1.id]==$sub_val.id && !$CartConfig.config_options} active
										{/if}">
												<input id="config{$son_v1.id}_{$sub_val.id}" type="radio" data-optionid="{$option.id}"
													data-subid="{$sub_val.id}" name="configoption[{$son_v1.id}]" value="{$sub_val.id}"
													class="form-check-input" {if $CartConfig.config_options[$son_v1.id]==$sub_val.id}checked=""
													{elseif (($son_v1.checkSubId==$sub_val.id) && !$CartConfig.config_options) /} checked="" {elseif
													$getUrlConfig.config_options[$son_v1.id]==$sub_val.id && !$CartConfig.config_options} checked=""
													{/if}> {$sub_val.option_name}
											</label>
										{/foreach}
									</div>
								</div>
							</div>
							{/foreach}
							{/if}
						</div>

						{elseif $option.option_type==2 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-10 d-flex justify-content-start" style="padding-top: calc(0.47rem + 1px);">
								{foreach $option.sub as $sub_key=>$sub_val}
								<div class="form-check mr-4">
									<input id="config{$option.id}_{$sub_val.id}" type="radio" name="configoption[{$option.id}]"
										value="{$sub_val.id}" class="form-check-input" {if
										$CartConfig.config_options[$option.id]==$sub_val.id}checked="" {elseif $sub_key==0 &&
										!$CartConfig.config_options /} checked="" {elseif
										$getUrlConfig.config_options[$option.id]==$sub_val.id && !$CartConfig.config_options} checked=""
										{/if}> <label class="form-check-label"
										for="config{$option.id}_{$sub_val.id}">{$sub_val.option_name}</label>
								</div>
								{/foreach}
							</div>
						</div>
						{elseif $option.option_type==3 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-10">
								{foreach $option.sub as $sub_key=>$sub_val}
								<div class="custom-control custom-checkbox mb-3">
									<input id="config{$option.id}_{$sub_val.id}" type="checkbox" name="configoption[{$option.id}]"
										class="custom-control-input" {if $CartConfig.config_options[$option.id]==$sub_val.id} checked=""
										{elseif $getUrlConfig.config_options[$option.id]==$sub_val.id && !$CartConfig.config_options}
										checked="" {/if} value="{$sub_val.id}">
									<label class="custom-control-label"
										for="config{$option.id}_{$sub_val.id}">{$sub_val.option_name}</label>
								</div>
								{/foreach}
							</div>
						</div>
						{elseif $option.option_type==4 || $option.option_type==7 || $option.option_type==9 ||
						$option.option_type==11 || $option.option_type==14 || $option.option_type==15 || $option.option_type==16 ||
						$option.option_type==17 || $option.option_type==18 || $option.option_type==19 /}
						<div class="form-group row configureproduct">
							<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
								{if $option.notes}
								<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
									<i class="bx bxs-help-circle pointer text-primary"></i>
								</span>
								{/if}
							</label>
							<div class="col-md-10 d-flex align-items-center" style="padding:0px;position: relative;">
  <div class="d-flex align-items-center" style="width: 70%; margin-right: 15px;">
    <input type="range" min="{$option.qty_minimum}" max="{$option.qty_maximum}"
      qty_stage="{$option.qty_stage == 0 ? 1 : $option.qty_stage}" {if
      $CartConfig.config_options[$option.id]}value="{$CartConfig.config_options[$option.id]}" {elseif
      $getUrlConfig.config_options[$option.id] && !$CartConfig.config_options}
      value="{$getUrlConfig.config_options[$option.id]}" {else /}value="{$option.qty_minimum}" {/if}
      data-sub='{:json_encode($option.sub)}' class="form-control-range configoption_range float-left mr-2"
      style="width: 100%;" onclick="rangeChange(this)">
  </div>
  <div class="d-flex align-items-center">
    <input id="config{$option.id}" data-type="number"
      class="mr-2 form-control form-control-sm configoption_range_val" style="width: 80px;"
      name="configoption[{$option.id}]" onblur="numberKeyup(this)" type="text" min="{$option.qty_minimum}"
      max="{$option.qty_maximum}" qty_stage="{$option.qty_stage == 0 ? 1 : $option.qty_stage}" {if
      $CartConfig.config_options[$option.id]}value="{$CartConfig.config_options[$option.id]}" {elseif
      $getUrlConfig.config_options[$option.id] && !$CartConfig.config_options}
      value="{$getUrlConfig.config_options[$option.id]}" {else /}value="{$option.qty_minimum}" {/if}>
    <span>{$option.unit}</span>
  </div>
</div>
							</div>
							{elseif $option.option_type==6 || $option.option_type==8 || $option.option_type==10 ||
							$option.option_type==13 /}
							<div class="form-group row configureproduct">
								<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
									{if $option.notes}
									<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
										<i class="bx bxs-help-circle pointer text-primary"></i>
									</span>
									{/if}
								</label>
								<div class="col-md-10">
									<div class="btn-group btn-group-toggle mt-2 mt-xl-0" data-toggle="buttons">
										{foreach $option.sub as $sub_key=>$sub_val}
										<label class="btn btn-primary btn-sm ">
											<input id="config{$option.id}_{$sub_val.id}" type="radio" {if
												$CartConfig.config_options[$option.id]==$sub_val.id}checked="" {elseif $sub_key==0 &&
												!$CartConfig.config_options /} checked="" {elseif
												$getUrlConfig.config_options[$option.id]==$sub_val.id && !$CartConfig.config_options} checked=""
												{/if} name="configoption[{$option.id}]" value="{$sub_val.id}"> {$sub_val.option_name}
										</label>
										{/foreach}
									</div>
								</div>
							</div>
							<!--操作系统-->
							{elseif $option.option_type==5 /}
							<div class="form-group row configureproduct">
								<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
									{if $option.notes}
									<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
										<i class="bx bxs-help-circle pointer text-primary"></i>
									</span>
									{/if}
								</label>
								{if $option.sub.os }
								<div class="col-md-3">
									<select id="config{$option.id}" name="configoption[{$option.id}]"
										class="form-control configoption_os">
										{foreach $option.sub.os.child as $sub}
										<option id="sub{$sub.id}" value="{$sub.id}" {if
											$CartConfig.config_options[$option.id]==$sub.id}selected="" {elseif
											$getUrlConfig.config_options[$option.id]==$sub.id && !$CartConfig.config_options} selected=""
											{/if}>{$sub.version} </option> {/foreach} </select> </div> {else/} <div class="col-md-2">
											<select class="form-control configoption_os_group" 
												onchange="osGroupChange(this)">
												{foreach $option.sub as $sub_key=>$sub_val}
												{assign name="os_selected" value="" /}
												{foreach $sub_val.child as $child_key=>$child_val}
												{if $child_val.id==$CartConfig.config_options[$option.id]}
												{assign name="os_selected" value="$sub_key" /}
												{/if}
												{/foreach}
												{if strtolower($sub_key)=="windows"}
												{assign name="os_svg" value="1" /}
												{elseif strtolower($sub_key)=="centos"/}
												{assign name="os_svg" value="2" /}
												{elseif strtolower($sub_key)=="ubuntu"/}
												{assign name="os_svg" value="3" /}
												{elseif strtolower($sub_key)=="debian"/}
												{assign name="os_svg" value="4" /}
												{elseif strtolower($sub_key)=="esxi"/}
												{assign name="os_svg" value="5" /}
												{elseif strtolower($sub_key)=="xenserver"/}
												{assign name="os_svg" value="6" /}
												{elseif strtolower($sub_key)=="freebsd"/}
												{assign name="os_svg" value="7" /}
												{elseif strtolower($sub_key)=="fedora"/}
												{assign name="os_svg" value="8" /}
												{else/}
												{assign name="os_svg" value="9" /}
												{/if}
												<option
													{if $os_selected}selected="" {elseif $getUrlConfig.config_options[$option.id]==$child_val.id
													&& !$CartConfig.config_options} selected="" {/if} data-os='{:json_encode($sub_val.child)}'
													value="{$sub_key}">
													{$sub_key}</option>
												{/foreach}
											</select>
								</div>
								<div class="col-md-3">
									<select id="config{$option.id}" name="configoption[{$option.id}]"
										class="form-control configoption_os" {if
										$CartConfig.config_options[$option.id]} data-os-selected="{$CartConfig.config_options[$option.id]}"
										{elseif $getUrlConfig.config_options[$option.id] && !$CartConfig.config_options}
										data-os-selected="{$getUrlConfig.config_options[$option.id]}" {/if}>

									</select>
								</div>
								{/if}

							</div>

							<!--数据中心-->
							{elseif $option.option_type==12 /}
							<div class="form-group row configureproduct">
								<label for="example-search-input" class="col-md-2 col-form-label">{$option.option_name}
									{if $option.notes}
									<span data-toggle="tooltip" data-placement="right" title="{$option.notes}">
										<i class="bx bxs-help-circle pointer text-primary"></i>
									</span>
									{/if}

								</label>
								<div class="col-md-10">

									{if $option.sub.0.area.0.area_zh}

									<select id="config{$option.id}" name="configoption[{$option.id}]"
										class="form-control col-md-3">
										{foreach $option.sub as $sub_key=>$sub_val}
										{foreach $sub_val.area as $area}
										<option id="sub{$area.id}"
											value="{$area.id}" {if $CartConfig.config_options[$option.id]==$area.id}selected="" {elseif
											$getUrlConfig.config_options[$option.id]==$area.id && !$CartConfig.config_options} selected=""
											{/if}> {$sub_val.option_name}{$area.area_zh}</option> {/foreach} {/foreach} </select> {else/} <div
											class=" btn-group-toggle mt-2 mt-xl-0" data-toggle="buttons">
											{foreach $option.sub as $sub_key=>$sub_val}
											<label class="btn btn-primary mr-2">
												<input id="config{$option.id}_{$sub_val.area.0.id}" type="radio" {if
													$CartConfig.config_options[$option.id]==$sub_val.area.0.id}checked="" {elseif $sub_key==0 &&
													!$CartConfig.config_options /} checked="" {elseif
													$getUrlConfig.config_options[$option.id]==$sub_val.area.0.id && !$CartConfig.config_options}
													checked="" {/if} name="configoption[{$option.id}]" value="{$sub_val.area.0.id}">
												{if $sub_val.country_code}
												<img class='mr-1' src='/upload/common/country/{$sub_val.country_code}.png' height='20' />
												{/if}
												{$sub_val.option_name?:$Lang.defaults}
											</label>
											{/foreach}
								</div>
								{/if}

							</div>
						</div>
						{/if}



						{/foreach}
						<!--自定义字段-->
						{foreach $CartConfig.custom_fields as $custom_fields}
						{if $custom_fields.fieldtype=="dropdown"}
						<div class="form-group row">
							<label for="example-search-input" class="col-md-2 col-form-label">{$custom_fields.fieldname}</label>
							<div class="col-md-3">
								<select id="customfield[{$custom_fields.id}]" name="customfield[{$custom_fields.id}]"
									class="form-control" {if $custom_fields.required}required{/if}>
									{foreach $custom_fields.dropdown_option as $dropdown_option} <option value="{$dropdown_option}" {if
									$CartConfig.custom_fields_value[$custom_fields.id]==$dropdown_option}selected="" {/if}>
									{$dropdown_option}</option> {/foreach} </select> </div> </div> {elseif
									$custom_fields.fieldtype=="tickbox" /} <div class="form-group row">
									<label for="example-search-input" class="col-md-2 col-form-label">{$custom_fields.fieldname}</label>
									<div class="col-md-10">
										<div class="custom-control custom-checkbox mb-3">
											<input name="customfield[{$custom_fields.id}]" {if
												$CartConfig.custom_fields_value[$custom_fields.id]==1}checked="" {/if} type="checkbox"
												class="custom-control-input" id="customfields{$custom_fields.id}">
											<label class="custom-control-label"
												for="customfields{$custom_fields.id}">{$custom_fields.description}</label>
										</div>
									</div>
							</div>
							{elseif $custom_fields.fieldtype=="textarea" /}
							<div class="form-group row">
								<label for="example-search-input" class="col-md-2 col-form-label">{$custom_fields.fieldname}</label>
								<div class="col-md-3">
									<textarea id="customfield[{$custom_fields.id}]" name="customfield[{$custom_fields.id}]"
										class="form-control getTextareaVal"
										data-object="{$custom_fields.required}||{$custom_fields.regexpr}" rows="2"
										placeholder="{$custom_fields.description}" {if
										$custom_fields.required}required{/if}>{$CartConfig.custom_fields_value[$custom_fields.id]}
										</textarea> </div> </div> {else/} <div class="form-group row">
							<label for="example-search-input" class="col-md-2 col-form-label">{$custom_fields.fieldname}</label>
							<div class="col-md-3">
								<input class="form-control getVal" data-object="{$custom_fields.required}||{$custom_fields.regexpr}" id="customfield[{$custom_fields.id}]" name="customfield[{$custom_fields.id}]"
									value="{$CartConfig.custom_fields_value[$custom_fields.id]}" type="{$custom_fields.fieldtype}"
									placeholder="{$custom_fields.description}" {if $custom_fields.required}required{/if} />
							</div>
						</div>
						{/if}
						{/foreach}
						<div class="form-group row">
							<label for="example-search-input" class="col-md-2 col-form-label">{$Lang.cycles}</label>
							<div class="col-md-10">
								<div class="btn-group btn-group-toggle cycle mt-2 mt-xl-0 btn-custom-group" data-toggle="buttons">
									{foreach $CartConfig.product.cycle as $cycle_key=>$cycle}
									<label class="btn btn-custom">
										<input type="radio" name="billingcycle" value="{$cycle.billingcycle}" {if
											$CartConfig.billingcyle==$cycle.billingcycle}checked="" {elseif $cycle.is_checked==1 &&
											!$CartConfig.billingcyle && !$addParam.billingcycle /} checked="" {elseif $addParam.billingcycle==$cycle.billingcycle &&
										!$CartConfig.billingcyle /} checked="" {/if}>{$cycle.billingcycle_zh}
										{if $cycle.cycle_discount}
										<span class="cycle-select-discount">{$cycle.cycle_discount}{$Lang.fracture}</span>
										{/if}
									</label>
									{/foreach}
								</div>
							</div>
						</div>

						<div class="form-group row" {if $CartConfig.product.host.show==0} style="display:none" {/if}>
							<label for="example-search-input" class="col-md-2 col-form-label">{$Lang.host_name}</label>
							<div class="col-md-3">
								<input class="form-control" type="text" disabled="disabled" {if
									$CartConfig.host}value="{$CartConfig.host}" {else /}value="{$CartConfig.product.host.host}"
									{/if} />
								<input class="form-control" name="host" type="hidden" {if
									$CartConfig.host}value="{$CartConfig.host}" {else /}value="{$CartConfig.product.host.host}"
									{/if} />
							</div>
						</div>
						<div class="form-group row" {if $CartConfig.product.password.show==0} style="display:none" {/if}>
							<label for="example-search-input" class="col-md-2 col-form-label">{$Lang.host_password}</label>
							<div class="col-8 col-md-3">
								<input
								class="form-control getPassword"
								id="password"
								name="password"
								{if $CartConfig.password}
									value="{$CartConfig.password}"
								{else/}
									 value="{$CartConfig.product.password.password}"
								{/if}
								/>
							</div>
							<!-- 把原来的文本颜色类替换掉 -->
							<div class="d-inline-flex align-items-center">
								<span class="bx bx-show-alt pointer fs-20" onclick="showPwd()"></span>
							</div>
							<div class="col-1 col-md-1 fs-18 d-flex align-items-center">

								<i class="fas fa-dice create_random_pass pointer" onclick="randomPwd()"></i>
							</div>
							<label id="password-error-tip" class="control-label error-tip" for="password"></label>
						</div>



					</div>
				</div>
			</div>
			<div class="col-xl-4">

				<div class="card">
					<div class="card-body">
						<h4 class="card-title fs-16">{$Lang.order_summary}：</h4>

						<div class="table-responsive configoption_total fs-14">

						</div>
					</div>
				</div>
				<!-- end card -->
			</div>
		</div>
	</form>
	<!-- select -->
	<link rel="stylesheet"
		href="/themes/cart/ogmiao/assets/js/bootstrap-select/css/bootstrap-select.min.css?v={$Ver}">
	<script src="/themes/cart/ogmiao/assets/js/bootstrap-select/js/bootstrap-select.min.js?v={$Ver}"></script>
	<!-- slider -->
	<link rel="stylesheet"
		href="/themes/cart/ogmiao/assets/js/ion-rangeslider/css/ion.rangeSlider.min.css?v={$Ver}">
	<script src="/themes/cart/ogmiao/assets/js/ion-rangeslider/js/ion.rangeSlider.min.js?v={$Ver}"></script>
	<script>
		// 密码重置
		var pwdRule = {
			len_num: '{$CartConfig.product.password.rule.len_num}',
			num: '{$CartConfig.product.password.rule.num}',
			upper: '{$CartConfig.product.password.rule.upper}',
			lower: '{$CartConfig.product.password.rule.lower}',
			special: '{$CartConfig.product.password.rule.special}'
		}
		var links = {:json_encode($CartConfig.links)};
		var order_frm_tpl = '{$order_frm_tpl}';
		var tpl_type = '{$tpl_type}';

		$(document).ready(function(){
			let dom=$('.dropdown-menu .inner .show')
			for(let item of dom){
				item.style.maxHeight="300px"
			}
			
			// 添加波纹效果到按钮
			$('.btn-custom, .btn-primary').on('mousedown', function(e) {
				const $this = $(this);
				
				// 如果已经有波纹元素，则移除
				$this.find('.ripple').remove();
				
				// 创建波纹元素
				const $ripple = $('<span class="ripple"></span>');
				$this.append($ripple);
				
				// 设置波纹位置
				const x = e.pageX - $this.offset().left;
				const y = e.pageY - $this.offset().top;
				
				$ripple.css({
					top: y + 'px',
					left: x + 'px'
				});
				
				// 300ms后移除波纹元素
				setTimeout(function() {
					$ripple.remove();
				}, 300);
			});
			
			// 添加CSS样式用于波纹效果
			$('<style>')
				.prop('type', 'text/css')
				.html(`
					.btn-custom, .btn-primary {
						position: relative;
						overflow: hidden;
					}
					.ripple {
						position: absolute;
						background: rgba(255, 255, 255, 0.3);
						border-radius: 50%;
						transform: scale(0);
						animation: ripple-effect 0.6s linear;
						pointer-events: none;
					}
					.dark .ripple {
						background: rgba(255, 255, 255, 0.15);
					}
				`)
				.appendTo('head');
				
			// 为表单元素添加入场动画
			$('.form-group').css({
				'opacity': '0',
				'transform': 'translateY(20px)'
			}).each(function(index) {
				const $this = $(this);
				setTimeout(function() {
					$this.css({
						'transition': 'all 0.6s cubic-bezier(0.4, 0, 0.2, 1)',
						'opacity': '1',
						'transform': 'translateY(0)'
					});
				}, 50 * index);
			});
			
			// 检查是否支持暗黑模式
			function checkDarkMode() {
				if (localStorage.getItem("darkMode") === "true") {
					$('body').addClass('dark');
				}
			}
			
			// 初始检查暗黑模式
			checkDarkMode();
		});

		$(function(){
			$("#addCartForm").on('blur',".getVal",function(e){
				let arr=e.target.dataset.object.split('||')
				let reg=''
				if(arr[1]!='') reg=new RegExp(arr[1])
				if(arr[0]==1){
					if(e.target.value==''){
						e.target.classList.add("is-invalid");
					}else if(reg!='' && reg.test(e.target.value)==false){
						e.target.classList.add("is-invalid");
					}else{
						e.target.classList.remove("is-invalid");
					}
				}
			})
		})

		$(function(){
			$("#addCartForm").on('blur',".getTextareaVal",function(e){

				let arr=e.target.dataset.object.split('||')
				let reg=''
				if(arr[1]!='') reg=new RegExp(arr[1])
				if(arr[0]==1){
					if(e.target.value==''){
						e.target.classList.add("is-invalid");
					}else if(reg!='' && reg.test(e.target.value)==false){
						e.target.classList.add("is-invalid");
					}else{
						e.target.classList.remove("is-invalid");
					}
				}
			})
		})

		function randomPwd () {
			verConfigGPsd()
		}

	// 获取主机密码校验规则
	var passwordRules =  {:json_encode($CartConfig.product.password.rule)};
	var showPassword = {:json_encode($CartConfig.product.password.show)};

	$(document).on('blur', '.getPassword', function(){
		verConfigGPsd()
	})

	function verConfigGPsd() {
		setTimeout(function(){
			let result = checkingPwd1($(".getPassword").val(), passwordRules.num, passwordRules.upper, passwordRules.lower, passwordRules.special)
			if(result.flag) {
				$('#password-error-tip').css('display','none');
				$('.getPassword').removeClass("is-invalid");
			}else{
				$("#password-error-tip").html(result.msg);
				$(".getPassword").addClass("is-invalid");
				$('#password-error-tip').css('display','block');
			}
		},10)
	}
	</script>
	<script src="/themes/cart/ogmiao/assets/js/configureproduct.js?v={$Ver}"></script>
	<!-- 滑块禁用区域 -->
	<script>
		$('.configoption_range').each(function(){
			let sub = $(this).data('sub');
			let max = parseFloat($(this).attr('max'));
			let min = parseFloat($(this).attr('min'));
			let inputWidth = parseFloat($(this).width());
			let oneWidth = inputWidth / (max - min)
			let keyArr = [];
			sub.map(item => {
				let itemMin = parseFloat(item.qty_minimum)
				let itemMax = parseFloat(item.qty_maximum)
				keyArr.push(itemMin)
				for(var i = itemMin; i<itemMax; i++) {
					keyArr.push(i)
				}
				keyArr.push(itemMax)
			})
			keyArr = Array.from(new Set(keyArr));
			for(var t = min; t<max; t++) {
				if(keyArr.indexOf(t) == -1) {
					$(this).after('<span class="range_none" title="'+t+'" style="width: '+oneWidth+'px; left: '+oneWidth*(t-min)+'px "></span>')
				}
			}
		})
	</script>
</existing_code>

