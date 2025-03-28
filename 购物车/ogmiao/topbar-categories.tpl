<style>
/* 合并topbar.css并应用index.html的风格 */
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

.firstgroup_box,
.secondgroup_box {
  min-height: 30px;
  padding: 12px 15px;
  background-color: #fff;
  box-shadow: 0 4px 15px 1px rgba(240, 138, 93, 0.1);
  display: flex;
  align-items: center;
  border-radius: 10px;
  margin-bottom: 15px;
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.firstgroup_box.collapsed,
.secondgroup_box.collapsed {
  max-height: 50px;
}

.firstgroup_box .toggle-btn,
.secondgroup_box .toggle-btn {
  position: absolute;
  right: 15px;
  top: 12px;
  cursor: pointer;
  color: var(--primary);
  font-size: 18px;
  z-index: 10;
}

.firstgroup_box .firstgroup_box_prov,
.secondgroup_box .secondgroup_box_area {
  color: var(--primary);
  display: inline-block;
  min-width: 80px;
  font-weight: 600;
  font-size: 14px;
}

.firstgroup_box .firstgroup_box_group,
.secondgroup_box .secondgroup_box_group {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  gap: 5px;
}

.firstgroup_box .firstgroup_item,
.secondgroup_box .secondgroup_item,
.pro_box .pro_item {
  height: 32px;
  box-shadow: 0px 4px 15px 1px rgba(240, 138, 93, 0.06);
  border-radius: 6px;
  border: solid 1px #ced1e2;
  margin-right: 5px;
  float: left;
  margin-bottom: 5px;
  transition: all 0.3s ease;
}

.firstgroup_box .firstgroup_item.active,
.firstgroup_box .firstgroup_item:hover,
.secondgroup_box .secondgroup_item.active,
.secondgroup_box .secondgroup_item:hover,
.pro_box .pro_item.active,
.pro_box .pro_item:hover {
  background-color: var(--primary);
  border-color: var(--primary);
  box-shadow: 0 4px 15px 1px rgba(240, 138, 93, 0.2);
  border-radius: 6px;
  color: #fff;
  transform: translateY(-2px);
}

.firstgroup_box a,
.secondgroup_box a,
.pro_box a,
.firstgroup_box .firstgroup_item,
.secondgroup_box .secondgroup_item,
.pro_box .pro_item {
  color: var(--dark);
  min-width: 120px;
  padding: 0 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-size: 13px;
  text-decoration: none;
}

.firstgroup_box a:hover,
.secondgroup_box a:hover,
.pro_box a:hover,
.firstgroup_box .firstgroup_item:hover a,
.secondgroup_box .secondgroup_item:hover a,
.pro_box .pro_item:hover a {
  color: #fff;
  text-decoration: none;
}

/* 国旗图标样式 - 修正为3:2比例 */
.country-flag {
  width: 18px;
  height: 12px;
  margin-right: 6px;
  border-radius: 1px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
  object-fit: cover; /* 确保图片正确填充 */
}

.firstgroup_item:hover .country-flag,
.secondgroup_item:hover .country-flag,
.firstgroup_item.active .country-flag,
.secondgroup_item.active .country-flag {
  box-shadow: 0 2px 5px rgba(255, 255, 255, 0.2);
  transform: scale(1.1);
}

/* 响应式调整 */
@media (max-width: 768px) {
  .firstgroup_box,
  .secondgroup_box {
    padding: 12px 15px;
  }
  
  .firstgroup_box .firstgroup_box_prov,
  .secondgroup_box .secondgroup_box_area {
    min-width: 60px;
    font-size: 13px;
  }
}

@media (max-width: 576px) {
  .firstgroup_box,
  .secondgroup_box {
    flex-direction: column;
    align-items: flex-start;
  }
  
  .firstgroup_box .firstgroup_box_prov,
  .secondgroup_box .secondgroup_box_area {
    margin-bottom: 10px;
  }
  
  .firstgroup_item,
  .secondgroup_item {
    min-width: auto !important;
    width: calc(50% - 5px);
    padding: 0;
  }
  
  .firstgroup_box .firstgroup_box_group,
  .secondgroup_box .secondgroup_box_group {
    justify-content: space-between;
  }
}

/* 暗黑模式支持 */
.dark .firstgroup_box,
.dark .secondgroup_box {
  background-color: #1a1a1a;
  box-shadow: 0 4px 15px 1px rgba(0, 0, 0, 0.2);
}

.dark .firstgroup_box .firstgroup_box_prov,
.dark .secondgroup_box .secondgroup_box_area {
  color: var(--primary);
}

.dark .firstgroup_box a,
.dark .secondgroup_box a,
.dark .pro_box a,
.dark .firstgroup_box .firstgroup_item,
.dark .secondgroup_box .secondgroup_item,
.dark .pro_box .pro_item {
  color: #e0e0e0;
  border-color: #333;
}

.dark .firstgroup_box .firstgroup_item.active,
.dark .firstgroup_box .firstgroup_item:hover,
.dark .secondgroup_box .secondgroup_item.active,
.dark .secondgroup_box .secondgroup_item:hover,
.dark .pro_box .pro_item.active,
.dark .pro_box .pro_item:hover {
  background-color: var(--primary);
  border-color: var(--primary);
}

/* 添加平静如湖面的动画效果 */
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

/* 分类框动画 */
.firstgroup_box,
.secondgroup_box {
  transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
  position: relative;
  overflow: hidden;
}

.firstgroup_box::before,
.secondgroup_box::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, var(--primary-light), var(--primary), var(--primary-light));
  opacity: 0.7;
  transform: translateY(-100%);
  transition: transform 0.5s cubic-bezier(0.4, 0, 0.2, 1);
}

.firstgroup_box:hover::before,
.secondgroup_box:hover::before {
  transform: translateY(0);
}

.firstgroup_box:hover,
.secondgroup_box:hover {
  box-shadow: 0 8px 25px rgba(240, 138, 93, 0.12);
  transform: translateY(-3px);
}

/* 分类项动画 */
.firstgroup_item,
.secondgroup_item {
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  position: relative;
  overflow: hidden;
}

.firstgroup_item::after,
.secondgroup_item::after {
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

.firstgroup_item:hover::after,
.secondgroup_item:hover::after {
  transform: translateX(100%);
}

.firstgroup_item a,
.secondgroup_item a {
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.firstgroup_item:hover,
.secondgroup_item:hover {
  transform: translateY(-3px);
  box-shadow: 0 5px 15px rgba(240, 138, 93, 0.15);
}

/* 折叠按钮动画 */
.toggle-btn {
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.toggle-btn:hover {
  transform: scale(1.1);
  color: var(--primary-dark);
}

.toggle-btn i {
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

/* 暗黑模式动画调整 */
.dark .firstgroup_box::before,
.dark .secondgroup_box::before {
  background: linear-gradient(90deg, var(--primary-dark), var(--primary), var(--primary-dark));
}

.dark .firstgroup_item::after,
.dark .secondgroup_item::after {
  background: linear-gradient(90deg, rgba(40,40,40,0), rgba(40,40,40,0.2), rgba(40,40,40,0));
}

.dark .firstgroup_box:hover,
.dark .secondgroup_box:hover {
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
}

.dark .firstgroup_item:hover,
.dark .secondgroup_item:hover {
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.25);
}

/* 移动设备优化 */
@media (max-width: 575px) {
  .firstgroup_box,
  .secondgroup_box {
    padding: 10px;
    margin-bottom: 10px;
  }
  
  .firstgroup_box .firstgroup_box_prov,
  .secondgroup_box .secondgroup_box_area {
    font-size: 12px;
    min-width: auto;
    margin-bottom: 8px;
  }
  
  .firstgroup_item,
  .secondgroup_item {
    height: 28px;
    margin-bottom: 4px;
    margin-right: 4px;
  }
  
  .firstgroup_box a,
  .secondgroup_box a {
    font-size: 12px;
    min-width: auto;
    padding: 0 8px;
  }
  
  .firstgroup_box .toggle-btn,
  .secondgroup_box .toggle-btn {
    right: 10px;
    top: 10px;
    font-size: 16px;
  }
  
  /* 移动设备上的分类项布局 */
  .firstgroup_box .firstgroup_box_group,
  .secondgroup_box .secondgroup_box_group {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 5px;
    width: 100%;
  }
  
  .firstgroup_item,
  .secondgroup_item {
    width: 100%;
    margin-right: 0;
  }
}

/* 折扣标签样式 */
.discount-badge {
  background-color: var(--primary);
  color: white;
  font-size: 0.75rem;
  font-weight: 700;
  padding: 2px 6px;
  border-radius: 4px;
  display: inline-block;
  animation: pulse 2s infinite;
}

@keyframes pulse {
  0% {
    box-shadow: 0 0 0 0 rgba(240, 138, 93, 0.4);
  }
  70% {
    box-shadow: 0 0 0 6px rgba(240, 138, 93, 0);
  }
  100% {
    box-shadow: 0 0 0 0 rgba(240, 138, 93, 0);
  }
}

/* 暗黑模式下的折扣标签 */
.dark .discount-badge {
  background-color: var(--primary-dark);
  box-shadow: 0 0 10px rgba(240, 138, 93, 0.3);
}
</style>

<div class="firstgroup_box mb-3">
  <div class="firstgroup_box_prov mr-2">{$Lang.select_ogmiao}</div>
  <div class="firstgroup_box_group">
    {foreach $Cart.product_groups as $index=>$first} 
    {if $first.id==$Think.get.fid || (!$Think.get.fid && $index==0)}
      <div class="firstgroup_item pointer active"><a class="text-white" href="/cart?fid={$first.id}{if $Get.site}&site={$Get.site}{/if}">{$first.name}</a></div>
      {assign name="cart_first_id" value="$first.id" /}  
      {assign name="cart_second" value="$first.second" /}  
    {else/}
      <div class="firstgroup_item pointer"><a href="/cart?fid={$first.id}{if $Get.site}&site={$Get.site}{/if}">{$first.name}</a></div>
    {/if}
    {/foreach}
  </div>
</div>

<div class="secondgroup_box mb-3">
  <div class="secondgroup_box_area mr-2">{$Lang.select_area}</div>
  <div class="secondgroup_box_group">
    {foreach $cart_second as $index=>$secondItem}
    {if $secondItem.id == $Think.get.gid || (!$Think.get.gid && $index==0)}
      <div class="secondgroup_item pointer active"><a class="text-white" href="/cart?fid={$cart_first_id}&gid={$secondItem.id}{if $Get.site}&site={$Get.site}{/if}">{$secondItem.name}</a></div>
      {assign name="cart_gid" value="$secondItem.id" /} 
    {else/}
      <div class="secondgroup_item pointer"><a href="/cart?fid={$cart_first_id}&gid={$secondItem.id}{if $Get.site}&site={$Get.site}{/if}">{$secondItem.name}</a></div>
    {/if}
    {/foreach}
  </div>
</div>

<script>
// 添加折叠/展开功能
$(function() {
  // 获取网站基础URL - 使用固定路径
  var webViewUrl = "/themes/cart/ogmiao";
  
  // 为分类框添加折叠按钮
  $('.firstgroup_box').append('<div class="toggle-btn"><i class="iconfont icon-arrow-down"></i></div>');
  $('.secondgroup_box').append('<div class="toggle-btn"><i class="iconfont icon-arrow-down"></i></div>');
  
  // 点击折叠按钮时切换状态
  $('.toggle-btn').on('click', function() {
    const parent = $(this).parent();
    parent.toggleClass('collapsed');
    
    // 切换图标
    const icon = $(this).find('i');
    if (parent.hasClass('collapsed')) {
      icon.removeClass('icon-arrow-down').addClass('icon-arrow-right');
    } else {
      icon.removeClass('icon-arrow-right').addClass('icon-arrow-down');
    }
  });

  // 添加波纹效果到分类项
  $('.firstgroup_item, .secondgroup_item').on('mousedown', function(e) {
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
      .firstgroup_item, .secondgroup_item {
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
      @keyframes ripple-effect {
        to {
          transform: scale(2.5);
          opacity: 0;
        }
      }
      .dark .ripple {
        background: rgba(255, 255, 255, 0.15);
      }
    `)
    .appendTo('head');
    
  // 为分类框添加入场动画
  $('.firstgroup_box, .secondgroup_box').css({
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
    }, 100 * index);
  });
  
  // 移动设备优化
  if ($(window).width() <= 575) {
    // 在移动设备上默认折叠第二组
    $('.secondgroup_box').addClass('collapsed');
    $('.secondgroup_box .toggle-btn i').removeClass('icon-arrow-down').addClass('icon-arrow-right');
    
    // 优化分类项布局
    $('.firstgroup_box_group, .secondgroup_box_group').css({
      'display': 'grid',
      'grid-template-columns': 'repeat(2, 1fr)',
      'gap': '5px'
    });
    
    $('.firstgroup_item, .secondgroup_item').css({
      'width': '100%',
      'margin-right': '0'
    });
  }
  
  // 处理分类标题中的国家代码和控制标记
  $('.firstgroup_item a, .secondgroup_item a').each(function() {
    const $this = $(this);
    const text = $this.text();
    
    // 存储完整的原始文本，包括标记，用于后续处理
    $this.attr('data-original-title', text);
    
    // 检查是否包含星号（*）
    if (text.indexOf('*') !== -1) {
      const parts = text.split('*');
      if (parts.length >= 2) {
        const countryCode = parts[0].trim();
        let title = parts[1].trim();
        
        // 移除标题中的控制标记
        if (title.endsWith('yes') || title.endsWith('no')) {
          // 如果标题以yes或no结尾，移除这些标记
          title = title.replace(/yes$|no$/, '').trim();
        }
        
        // 如果标题为空（只有控制标记），则使用原始国家代码作为标题
        if (title === '') {
          title = countryCode;
        }
        
        // 创建国旗图标 - 使用固定路径
        const $flag = $('<img>', {
          'src': webViewUrl + '/assets/img/flags/' + countryCode + '.png',
          'class': 'country-flag',
          'alt': countryCode,
          'onerror': 'this.style.display="none"'
        });
        
        // 清空原有内容并添加新内容
        $this.empty().append($flag).append(document.createTextNode(title));
      }
    }
  });
});
</script>

