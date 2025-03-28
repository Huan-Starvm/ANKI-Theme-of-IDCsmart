{include file="cart/ogmiao/topbar-categories"}

<div class="firstgroup_box mb-3" style="border-radius: 10px; background-color: #fff; box-shadow: 0 4px 15px 1px rgba(240, 138, 93, 0.1);">
 <div class="firstgroup_box_prov mr-2" style="color: var(--primary); font-weight: 600;">商品标语</div>
 <div class="firstgroup_box_group">
   {if $Get.keywords /}
     <p class="card-text mb-0">{$Lang.product}：{:count($Cart.products)}{$Lang.individual}</p>
   {else /}
     <p class="card-text mb-0" style="color: var(--primary); font-weight: 500;">{$Cart.product_groups_checked.headline}</p>
   {/if}
 </div>
</div>

<style>
/* 产品卡片样式 - 应用index.html风格 */
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

.card {
 border: none;
 border-radius: 15px;
 overflow: hidden;
 transition: all 0.3s ease;
 margin-bottom: 20px;
}

/* 卡片样式优化 */
.cartitem {
 background-color: #f5f7f9;
 border-radius: 15px;
 overflow: hidden;
 transition: all 0.3s ease;
 height: 100%;
 display: flex;
 flex-direction: column;
 box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
}

.cartitem .card-body {
 padding: 15px; /* 减小内边距 */
 flex: 1;
}

.cartitem h5 {
 font-size: 1.1rem; /* 稍微减小字体 */
 font-weight: 600;
 margin-bottom: 0.75rem;
 color: var(--dark);
}

.cartitem .card-text {
 color: var(--gray);
 font-size: 0.9rem; /* 减小字体 */
 margin-bottom: 0.75rem;
}

.cartitem:hover {
 transform: translateY(-10px);
 box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
}

.cartitem.active {
 background: #fff;
 transform: translateY(-10px);
 box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
}

.cartitem .card-footer {
 background-color: transparent;
 border-top: none;
 padding: 0;
 transition: all 0.3s ease;
}

.cartitem .card-footer a {
 color: var(--primary);
 display: inline-block;
 width: 100%;
 line-height: 45px;
 background: #fff;
 text-decoration: none;
 font-weight: 600;
 transition: all 0.3s ease;
 border-top: 1px solid rgba(0, 0, 0, 0.05);
}

.cartitem.active .card-footer {
 background-color: var(--primary) !important;
}

.cartitem.active .card-footer a {
 background-color: var(--primary) !important;
 color: #fff;
 z-index: 99;
}

.cartitem .card-footer a:hover {
 background-color: var(--primary) !important;
 color: #fff;
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

/* 价格样式优化 */
.price-container {
 margin-top: 1rem;
 display: flex;
 flex-direction: column;
}

.price-original {
 text-decoration: line-through;
 color: #999;
 font-size: 0.9rem;
 margin-top: 2px;
}

.price-current {
 color: var(--primary);
 font-size: 1.3rem;
 font-weight: 700;
}

.price-trial {
 color: #e64a19;
 font-size: 0.9rem;
 margin-top: 2px;
}

/* 售罄标签 */
.sold-out-tag {
 position: absolute;
 top: -40px;
 right: 20px;
 width: 60px;
 transform: rotate(15deg);
 transition: all 0.3s ease;
}

.cartitem:hover {
 transform: translateY(-10px);
 box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
}

.cartitem:hover .sold-out-tag {
 transform: rotate(0deg);
}

/* 替换为更美观的售罄标签 */
.sold-out-ribbon {
 position: absolute;
 top: 0;
 right: 0;
 width: 120px;
 height: 120px;
 overflow: hidden;
 z-index: 10;
}

.sold-out-ribbon::before,
.sold-out-ribbon::after {
 position: absolute;
 z-index: -1;
 content: '';
 display: block;
 border: 5px solid var(--primary-dark);
 border-top-color: transparent;
 border-right-color: transparent;
}

.sold-out-ribbon::before {
 top: 0;
 left: 0;
}

.sold-out-ribbon::after {
 bottom: 0;
 right: 0;
}

.sold-out-ribbon span {
 position: absolute;
 top: 30px;
 right: -25px;
 transform: rotate(45deg);
 width: 150px;
 padding: 8px 0;
 background-color: var(--primary);
 box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
 color: #fff;
 text-align: center;
 font-size: 14px;
 font-weight: 600;
 text-transform: uppercase;
 letter-spacing: 0.5px;
 transition: all 0.3s ease;
}

.cartitem:hover .sold-out-ribbon span {
 box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
 background-color: var(--primary-dark);
}

/* 分页样式 */
.pagination {
 display: flex;
 justify-content: center;
 margin-top: 2rem;
}

.pagination .page-item .page-link {
 color: var(--primary);
 border-radius: 5px;
 margin: 0 3px;
 border: none;
 box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
}

.pagination .page-item.active .page-link {
 background-color: var(--primary);
 border-color: var(--primary);
 color: white;
}

.pagination .page-item .page-link:hover {
 background-color: rgba(240, 138, 93, 0.1);
}

/* 暗黑模式支持 */
.dark .card,
.dark .cartitem {
 background-color: #1a1a1a;
 box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.dark .cartitem:hover,
.dark .cartitem.active {
 box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
}

.dark .cartitem h5 {
 color: #e0e0e0;
}

.dark .cartitem .card-text {
 color: #aaaaaa;
}

.dark .cartitem .card-footer a {
 background-color: #1a1a1a;
 color: var(--primary);
 border-top: 1px solid rgba(255, 255, 255, 0.05);
}

.dark .price-original {
 color: #777;
}

.dark .pagination .page-item .page-link {
 background-color: #1a1a1a;
 color: var(--primary);
 box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

.dark .pagination .page-item .page-link:hover {
 background-color: #252525;
}

/* 添加动画效果 */
@keyframes fadeIn {
 from {
   opacity: 0;
   transform: translateY(20px);
 }
 to {
   opacity: 1;
   transform: translateY(0);
 }
}

/* 暗黑模式支持 */
.dark .sold-out-ribbon::before,
.dark .sold-out-ribbon::after {
 border-color: #c06a3d;
 border-top-color: transparent;
 border-right-color: transparent;
}

.dark .sold-out-ribbon span {
 background-color: #d07a4d;
 box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
}

.dark .cartitem:hover .sold-out-ribbon span {
 background-color: #c06a3d;
 box-shadow: 0 5px 15px rgba(0, 0, 0, 0.4);
}

/* 商品标语样式 */
.dark .firstgroup_box {
 background-color: #1a1a1a;
 box-shadow: 0 4px 15px 1px rgba(0, 0, 0, 0.2);
}

.dark .firstgroup_box .card-text {
 color: #e0e0e0;
}

/* 搜索框样式 */
.search-box {
 position: relative;
 width: 100%;
 margin-bottom: 15px;
 transition: all 0.3s ease;
}

.search-box input {
 border-radius: 30px;
 padding: 10px 15px 10px 45px;
 border: 1px solid rgba(240, 138, 93, 0.2);
 transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
 background-color: rgba(240, 138, 93, 0.03);
 font-size: 0.9rem;
 box-shadow: 0 2px 10px rgba(240, 138, 93, 0.05);
 width: 100%;
}

.search-box::before {
 content: '\e908';
 font-family: 'iconfont';
 position: absolute;
 left: 18px;
 top: 50%;
 transform: translateY(-50%);
 color: var(--primary);
 font-size: 16px;
 z-index: 1;
 transition: all 0.3s ease;
}

.search-box input:focus {
 box-shadow: 0 0 0 4px rgba(240, 138, 93, 0.15);
 border-color: var(--primary);
 background-color: #fff;
 padding-left: 50px;
}

.search-box:hover::before {
 transform: translateY(-50%) scale(1.1);
}

/* 暗黑模式下的搜索框 */
.dark .search-box input {
 background-color: rgba(30, 30, 30, 0.8);
 border-color: #333;
 color: #e0e0e0;
}

.dark .search-box input:focus {
 box-shadow: 0 0 0 4px rgba(240, 138, 93, 0.2);
 border-color: var(--primary);
 background-color: #252525;
}

/* 产品描述处理 - 改进版 */
.product-description {
 position: relative;
 overflow: hidden;
 transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
 margin-bottom: 0;
 max-height: 0;
 width: 100%;
}

.product-description.collapsed {
 opacity: 0;
 margin: 0;
 padding: 0;
 max-height: 0;
}

.product-description.expanded {
 opacity: 1;
 margin-top: 10px;
 margin-bottom: 10px;
 max-height: none; /* 移除高度限制，完全展开 */
}

/* 重新设计展开/收起按钮 */
.toggle-description {
 display: inline-flex;
 align-items: center;
 justify-content: center;
 margin-top: 8px;
 padding: 4px 12px;
 background-color: #fff;
 color: var(--primary);
 border-radius: 20px;
 font-size: 12px;
 font-weight: 500;
 cursor: pointer;
 transition: all 0.3s ease;
 text-align: center;
 box-shadow: 0 2px 6px rgba(240, 138, 93, 0.15);
 border: 1px solid rgba(240, 138, 93, 0.2);
}

.toggle-description:hover {
 background-color: var(--primary);
 color: #fff;
 box-shadow: 0 3px 8px rgba(240, 138, 93, 0.25);
 border-color: var(--primary);
 transform: translateY(-1px);
}

.toggle-description i {
 margin-left: 5px;
 font-size: 10px;
 transition: all 0.3s ease;
}

.toggle-description[data-action="collapse"] i {
 transform: rotate(180deg);
}

.dark .toggle-description {
 background-color: #252525;
 color: var(--primary);
 border-color: rgba(240, 138, 93, 0.3);
 box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
}

.dark .toggle-description:hover {
 background-color: var(--primary);
 color: #fff;
 box-shadow: 0 3px 8px rgba(0, 0, 0, 0.3);
}

/* 库存显示优化 */
.stock-indicator {
 display: flex;
 align-items: center;
 margin-top: 10px;
 font-size: 0.85rem;
}

.stock-indicator .stock-badge {
 display: inline-flex;
 align-items: center;
 padding: 3px 10px;
 border-radius: 20px;
 margin-right: 8px;
 font-size: 0.75rem;
 font-weight: 600;
 box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
}

.stock-indicator .stock-badge:before {
 content: "";
 display: inline-block;
 width: 8px;
 height: 8px;
 border-radius: 50%;
 margin-right: 5px;
}

.stock-indicator .in-stock {
 background-color: rgba(46, 204, 113, 0.1);
 color: #2ecc71;
 border: 1px solid rgba(46, 204, 113, 0.2);
}

.stock-indicator .in-stock:before {
 background-color: #2ecc71;
}

.stock-indicator .low-stock {
 background-color: rgba(243, 156, 18, 0.1);
 color: #f39c12;
 border: 1px solid rgba(243, 156, 18, 0.2);
}

.stock-indicator .low-stock:before {
 background-color: #f39c12;
}

.stock-indicator .out-of-stock {
 background-color: rgba(231, 76, 60, 0.1);
 color: #e74c3c;
 border: 1px solid rgba(231, 76, 60, 0.2);
}

.stock-indicator .out-of-stock:before {
 background-color: #e74c3c;
}

.stock-indicator .stock-count {
 font-size: 0.8rem;
 color: var(--gray);
}

/* 暗黑模式下的库存指示器 */
.dark .stock-indicator .in-stock {
 background-color: rgba(46, 204, 113, 0.1);
 color: #2ecc71;
 border-color: rgba(46, 204, 113, 0.3);
}

.dark .stock-indicator .low-stock {
 background-color: rgba(243, 156, 18, 0.1);
 color: #f39c12;
 border-color: rgba(243, 156, 18, 0.3);
}

.dark .stock-indicator .out-of-stock {
 background-color: rgba(231, 76, 60, 0.1);
 color: #e74c3c;
 border-color: rgba(231, 76, 60, 0.3);
}

.dark .stock-indicator .stock-count {
 color: #aaa;
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

@keyframes ripple {
 0% {
   box-shadow: 0 0 0 0 rgba(240, 138, 93, 0.3);
   transform: scale(1);
 }
 70% {
   box-shadow: 0 0 0 10px rgba(240, 138, 93, 0);
   transform: scale(1.03);
 }
 100% {
   box-shadow: 0 0 0 0 rgba(240, 138, 93, 0);
   transform: scale(1);
 }
}

@keyframes soft-pulse {
 0%, 100% {
   opacity: 1;
 }
 50% {
   opacity: 0.8;
 }
}

/* 产品卡片动画 */
.cartitem {
 transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
}

.cartitem:hover {
 transform: translateY(-8px) scale(1.02);
 box-shadow: 0 15px 35px rgba(240, 138, 93, 0.15);
}

/* 售罄标签动画 */
.sold-out-ribbon span {
 transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
}

.cartitem:hover .sold-out-ribbon span {
 transform: rotate(45deg) scale(1.05);
 box-shadow: 0 5px 15px rgba(0, 0, 0, 0.25);
}

/* 库存指示器动画 */
.stock-indicator .stock-badge {
 transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.stock-indicator .stock-badge:hover {
 transform: translateY(-2px);
 box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.stock-indicator .in-stock:hover {
 background-color: rgba(46, 204, 113, 0.15);
}

.stock-indicator .low-stock:hover {
 background-color: rgba(243, 156, 18, 0.15);
}

.stock-indicator .out-of-stock:hover {
 background-color: rgba(231, 76, 60, 0.15);
}

/* 展开/收起按钮动画 */
.toggle-description {
 transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
 position: relative;
 overflow: hidden;
}

.toggle-description::after {
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

.toggle-description:hover::after {
 transform: translateX(100%);
}

.toggle-description i {
 transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.toggle-description:hover i {
 transform: translateY(-2px);
}

/* 价格动画 */
.price-current {
 transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.cartitem:hover .price-current {
 transform: scale(1.05);
 text-shadow: 0 2px 5px rgba(240, 138, 93, 0.2);
}

/* 购买按钮动画 */
.cartitem .card-footer a {
 transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
 position: relative;
 overflow: hidden;
}

.cartitem .card-footer a::after {
 content: '';
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 background: linear-gradient(90deg, rgba(255,255,255,0), rgba(255,255,255,0.2), rgba(255,255,255,0));
 transform: translateX(-100%);
 transition: transform 0.8s ease;
}

.cartitem:hover .card-footer a::after {
 transform: translateX(100%);
}

/* 分页动画 */
.pagination .page-item .page-link {
 transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.pagination .page-item .page-link:hover {
 transform: translateY(-2px);
 box-shadow: 0 4px 8px rgba(240, 138, 93, 0.15);
}

/* 产品项动画 */
.product-item {
 animation: fadeIn 0.6s cubic-bezier(0.4, 0, 0.2, 1) forwards;
 opacity: 0;
}

.products-container .product-item:nth-child(3n+1) {
 animation-delay: 0.1s;
}

.products-container .product-item:nth-child(3n+2) {
 animation-delay: 0.2s;
}

.products-container .product-item:nth-child(3n+3) {
 animation-delay: 0.3s;
}

/* 暗黑模式动画调整 */
.dark .cartitem:hover {
 box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
}

.dark .toggle-description::after {
 background: linear-gradient(90deg, rgba(40,40,40,0), rgba(40,40,40,0.2), rgba(40,40,40,0));
}

.dark .cartitem .card-footer a::after {
 background: linear-gradient(90deg, rgba(40,40,40,0), rgba(40,40,40,0.2), rgba(40,40,40,0));
}

/* 瀑布流布局样式 */
.products-container {
 position: relative;
 margin: 0 -8px;
 min-height: 200px;
}

.product-item {
 padding: 0 8px;
 margin-bottom: 16px;
 position: absolute;
 width: 25%;
 transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
}

/* 响应式布局 */
@media (min-width: 1200px) {
 .product-item {
   width: 25%;
 }
}

@media (min-width: 992px) and (max-width: 1199px) {
 .product-item {
   width: 33.33%;
 }
}

@media (min-width: 768px) and (max-width: 991px) {
 .product-item {
   width: 33.33%;
 }
 
 .cartitem .card-body {
   padding: 12px;
 }
 
 .cartitem h5 {
   font-size: 1rem;
 }
 
 .price-current {
   font-size: 1.1rem;
 }
}

@media (min-width: 576px) and (max-width: 767px) {
 .product-item {
   width: 50%;
 }
 
 .cartitem .card-body {
   padding: 10px;
 }
 
 .cartitem h5 {
   font-size: 0.95rem;
   margin-bottom: 0.5rem;
 }
 
 .stock-indicator {
   margin-top: 6px;
 }
 
 .stock-indicator .stock-badge {
   padding: 2px 8px;
   font-size: 0.7rem;
 }
 
 .price-current {
   font-size: 1rem;
 }
 
 .cartitem .card-footer a {
   line-height: 40px;
   font-size: 0.9rem;
 }
}

/* 移动设备特殊布局 */
@media (max-width: 575px) {
 .product-item {
   width: 100%;
   position: relative !important;
   top: auto !important;
   left: auto !important;
   margin-bottom: 12px;
 }
 
 .cartitem {
   flex-direction: column;
   border-radius: 10px;
 }
 
 .cartitem .card-body {
   padding: 10px;
   display: block;
 }
 
 .cartitem h5 {
   width: 100%;
   font-size: 0.95rem;
   margin-bottom: 8px;
 }
 
 .product-description-container {
   width: 100%;
   padding-right: 0;
   margin-bottom: 8px;
 }
 
 .price-container {
   width: 100%;
   margin-top: 8px;
   text-align: left;
   display: flex;
   align-items: center;
   justify-content: space-between;
 }
 
 .price-current {
   font-size: 1rem;
 }
 
 .stock-indicator {
   margin-top: 5px;
   width: 100%;
 }
 
 .cartitem .card-footer {
   width: 100%;
   min-width: auto;
   display: block;
   border-left: none;
   border-top: 1px solid rgba(0, 0, 0, 0.05);
 }
 
 .cartitem .card-footer a {
   line-height: 40px;
   height: auto;
   display: block;
   font-size: 0.9rem;
   padding: 0;
   text-align: center;
 }
 
 /* 移动设备上的售罄标签 */
 .sold-out-ribbon {
   width: 80px;
   height: 80px;
 }
 
 .sold-out-ribbon span {
   top: 15px;
   right: -20px;
   width: 100px;
   padding: 5px 0;
   font-size: 10px;
 }
 
 /* 移动设备上的展开/收起按钮 */
 .toggle-description {
   padding: 2px 8px;
   font-size: 10px;
   margin-top: 5px;
 }
 
 .toggle-description i {
   font-size: 8px;
 }
 
 /* 移动设备上的搜索框 */
 .search-box {
   margin-bottom: 10px;
 }
 
 .search-box input {
   padding: 8px 15px 8px 40px;
   font-size: 0.85rem;
 }
 
 .search-box::before {
   left: 15px;
   font-size: 14px;
 }
 
 /* 移动设备上的产品描述 */
 .product-description.expanded {
   max-height: none; /* 移动设备上也移除高度限制 */
 }
 
 /* 确保产品描述文本在移动设备上可读 */
 .product-description {
   font-size: 0.85rem;
   line-height: 1.4;
 }
}

/* 超小屏幕设备特殊优化 */
@media (max-width: 375px) {
 .cartitem .card-body {
   padding: 8px;
 }
 
 .cartitem h5 {
   font-size: 0.9rem;
 }
 
 .price-current {
   font-size: 0.95rem;
 }
}
</style>

<link rel="stylesheet" href="/themes/cart/ogmiao/assets/fonts/iconfont.css?v={$Ver}">

<!-- 搜索框 -->
<div class="search-box">
 <input type="text" id="product-search" class="form-control" placeholder="搜索产品..." />
</div>

<!-- 瀑布流产品列表 -->
<div class="card">
 <div class="card-body p-3">
   <div class="products-container">
     {foreach $Cart.products as $list}
     <div class="product-item" data-id="{$list.id}">
       <div class="card cartitem h-100">
         <div class="card-body">
           <h5 class="product-name">{$list.name}</h5>
           <div class="product-description-container">
             <div class="product-description collapsed">
               {$list.description}
             </div>
             <button class="toggle-description" data-action="expand">
               查看详情 <i class="iconfont icon-arrow-down"></i>
             </button>
           </div>
           
           <div class="stock-indicator">
             {if $list.qty > 10}
               <span class="stock-badge in-stock">库存充足</span> <span class="stock-count">{$list.qty}件</span>
             {elseif $list.qty > 0}
               <span class="stock-badge low-stock">库存紧张</span> <span class="stock-count">仅剩{$list.qty}件</span>
             {else}
               <span class="stock-badge out-of-stock">已售罄</span>
             {/if}
           </div>

           <div class="price-container mt-auto">
             {if $list.sale_price>0}
               <div class="d-flex align-items-center justify-content-end">
                 <div class="text-right price-current">{$Cart.currency.prefix} {$list.sale_price} {$Cart.currency.suffix}</div>
                 {if $list.cycle_discount}
                   <div class="discount-badge ml-2">
                     {$list.cycle_discount}{$Lang.fracture}
                   </div>
                 {/if}
               </div>
               {if $list.ontrial==1}
                 <div class="text-right price-trial">
                   <small>{$Cart.currency.prefix} {$list.ontrial_setup_fee+$list.ontrial_price} / {$Lang.on_trial} {$list.ontrial_cycle} {$list.ontrial_cycle_type == 'day' ? $Lang.day : $Lang.hour}</small>
                 </div>
               {/if}                  
               <div class="text-right price-original"><small>({$Lang.original_price}：{$Cart.currency.prefix} {$list.product_price} / {$list.billingcycle_zh})</small></div>
             {else}
               <div class="text-right price-current">{$Cart.currency.prefix} {$list.product_price} {$Cart.currency.suffix} / {$list.billingcycle_zh}</div>
               {if $list.ontrial==1}
                 <div class="text-right price-trial">
                   <small>{$Cart.currency.prefix} {$list.ontrial_setup_fee+$list.ontrial_price} / {$Lang.on_trial} {$list.ontrial_cycle} {$list.ontrial_cycle_type == 'day' ? $Lang.day : $Lang.hour}</small>
                 </div>
               {/if}
             {/if}
           </div>

           {if $list.stock_control==1 && $list.qty<1} 
           <div class="sold-out-ribbon">
             <span>已售空</span>
           </div>
           {/if}
         </div>
         <div class="card-footer text-center p-0" style="box-shadow: 0px 4px 20px 2px rgba(240, 138, 93, 0.08);">
           {if $list.stock_control==1 && $list.qty<1} 
           <a href="javascript:void(0)" style="cursor: not-allowed">{$Lang.buy_now}</a>
           {else}
           <a href="/cart?action=configureproduct&pid={$list.id}{if $Get.site}&site={$Get.site}{/if}">{$Lang.buy_now}</a>
           {/if}
         </div>
       </div>
     </div>
     {/foreach}
   </div>

   <div class="table-footer mt-4 d-flex justify-content-center">
     <ul class="pagination pagination-sm">
       {$Pages}
     </ul>
   </div>
 </div>
</div>

<script>
$(function () {
 // 卡片悬停效果
 $('.cartitem').on('mouseover', function () {
   $(this).addClass('active');
 });
 
 $('.cartitem').on('mouseleave', function () {
   $(this).removeClass('active');
 });
 
 // 瀑布流布局函数
 function initMasonry() {
   const container = $('.products-container');
   const items = container.find('.product-item');
   const containerWidth = container.width();
   
   // 确定列数
   let columns;
   if ($(window).width() > 1200) {
     columns = 4;
   } else if ($(window).width() > 992) {
     columns = 3;
   } else if ($(window).width() > 768) {
     columns = 3;
   } else if ($(window).width() > 576) {
     columns = 2;
   } else {
     // 在移动设备上不使用瀑布流
     items.css({
       'position': 'relative',
       'top': 'auto',
       'left': 'auto'
     });
     return;
   }
   
   // 初始化列高度数组
   const columnHeights = Array(columns).fill(0);
   const columnWidth = containerWidth / columns;
   
   // 定位每个项目
   items.each(function() {
     const item = $(this);
     
     // 找到最短的列
     const shortestColumn = columnHeights.indexOf(Math.min(...columnHeights));
     
     // 设置项目位置
     item.css({
       'position': 'absolute',
       'top': columnHeights[shortestColumn] + 'px',
       'left': (shortestColumn * columnWidth) + 'px',
       'width': columnWidth + 'px'
     });
     
     // 更新列高度
     columnHeights[shortestColumn] += item.outerHeight(true);
   });
   
   // 设置容器高度
   container.css('height', Math.max(...columnHeights) + 'px');
 }
 
 // 产品搜索功能
 $('#product-search').on('input', function() {
   const searchTerm = $(this).val().toLowerCase();
   
   $('.product-item').each(function() {
     const productName = $(this).find('.product-name').text().toLowerCase();
     const productDesc = $(this).find('.product-description').text().toLowerCase();
     
     if (productName.includes(searchTerm) || productDesc.includes(searchTerm)) {
       $(this).show();
     } else {
       $(this).hide();
     }
   });
   
   // 重新计算瀑布流布局
   setTimeout(initMasonry, 300);
 });
 
 /* 产品描述展开/收起功能 - 改进动画版 */
 $(document).on('click', '.toggle-description', function() {
   const btn = $(this);
   const description = btn.siblings('.product-description');
   const action = btn.data('action');
   
   if (action === 'expand') {
     description.removeClass('collapsed').addClass('expanded');
     btn.data('action', 'collapse');
     btn.html('收起详情 <i class="iconfont icon-arrow-up"></i>');
   } else {
     description.removeClass('expanded').addClass('collapsed');
     btn.data('action', 'expand');
     btn.html('查看详情 <i class="iconfont icon-arrow-down"></i>');
   }
   
   // 延迟重新计算瀑布流布局
   setTimeout(initMasonry, 500); // 等待动画完成
 });

 // 确保每个产品描述都有展开/收起按钮
 $('.product-description').each(function() {
   const description = $(this);
   description.addClass('collapsed');
 });
 
 // 确保每个产品描述都有展开/收起按钮
 $('.product-description').each(function() {
   const description = $(this);
   const container = description.parent();
   
   // 检查是否已经有按钮
   if (container.find('.toggle-description').length === 0) {
     // 检查描述是否足够长，需要展开按钮
     if (description.height() > 60 || description.text().length > 120) {
       description.addClass('collapsed');
       container.append('<button class="toggle-description" data-action="expand">查看详情 <i class="iconfont icon-arrow-down"></i></button>');
     }
   }
 });
 
 // 检查是否支持暗黑模式
 function checkDarkMode() {
   if (localStorage.getItem("darkMode") === "true") {
     $('body').addClass('dark');
   }
 }
 
 // 初始检查暗黑模式
 checkDarkMode();
 
 // 监听暗黑模式变化
 const observer = new MutationObserver(function(mutations) {
   mutations.forEach(function(mutation) {
     if (mutation.attributeName === 'class') {
       if (document.body.classList.contains('dark')) {
         // 暗黑模式下的特殊处理
         $('.cartitem').css('background-color', '#1a1a1a');
       } else {
         // ���复亮色模式
         $('.cartitem').css('background-color', '#f5f7f9');
       }
     }
   });
 });
 
 observer.observe(document.body, { attributes: true });

 // 添加波纹效果到按钮
 $('.toggle-description, .cartitem .card-footer a').on('mousedown', function(e) {
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
     .toggle-description, .cartitem .card-footer a {
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
   `)
   .appendTo('head');
 
 // 为搜索框添加焦点动画
 $('#product-search').on('focus', function() {
   $(this).parent().addClass('focused');
 }).on('blur', function() {
   $(this).parent().removeClass('focused');
 });
 
 // 为搜索框父元素添加样式
 $('<style>')
   .prop('type', 'text/css')
   .html(`
     .search-box.focused {
       transform: scale(1.02);
     }
     .search-box.focused::before {
       color: var(--primary-dark);
     }
   `)
   .appendTo('head');
   
 // 监听窗口大小变化，重新计算瀑布流布局
 $(window).on('resize', function() {
   initMasonry();
 });
 
 // 初始化瀑布流
 // 等待图片加载完成后初始化瀑布流
 $(window).on('load', function() {
   initMasonry();
 });
 
 // 如果图片加载太慢，也尝试初始化
 setTimeout(initMasonry, 500);
 
 // 移动设备特殊处理
 if ($(window).width() <= 575) {
   // 移动设备上的特殊布局调整
   $('.cartitem').each(function() {
     const $this = $(this);
     const $footer = $this.find('.card-footer');
     const $body = $this.find('.card-body');
     
     // 调整卡片布局为垂直方向
     $this.css('flex-direction', 'column');
     
     // 调整页脚样式
     $footer.css({
       'width': '100%',
       'min-width': 'auto',
       'display': 'block',
       'border-left': 'none',
       'border-top': '1px solid rgba(0, 0, 0, 0.05)'
     });
     
     // 调整页脚链接样式
     $footer.find('a').css({
       'line-height': '40px',
       'height': 'auto',
       'display': 'block',
       'text-align': 'center'
     });
     
     // 调整价格容器样式
     $body.find('.price-container').css({
       'width': '100%',
       'margin-top': '8px',
       'text-align': 'left',
       'display': 'flex',
       'align-items': 'center',
       'justify-content': 'space-between'
     });
     
     // 调整产品描述容器样式
     $body.find('.product-description-container').css({
       'width': '100%',
       'padding-right': '0',
       'margin-bottom': '8px'
     });
   });
 }

 // 根据分类标题中的标记自动展开/折叠产品描述
function checkCategoryTitleForDescriptionState() {
  // 获取当前分类标题
  let shouldExpand = false;
  
  // 检查活动的分类项是否包含展开标记
  $('.secondgroup_item.active a').each(function() {
    const originalTitle = $(this).attr('data-original-title') || $(this).text();
    
    if (originalTitle.indexOf('*yes') !== -1) {
      shouldExpand = true;
    }
  });
  
  // 如果没有在二级分类中找到标记，检查一级分类
  if (!shouldExpand) {
    $('.firstgroup_item.active a').each(function() {
      const originalTitle = $(this).attr('data-original-title') || $(this).text();
      
      if (originalTitle.indexOf('*yes') !== -1) {
        shouldExpand = true;
      }
    });
  }
  
  // 根据标记设置所有产品描述的初始状态
  if (shouldExpand) {
    console.log('自动展开所有产品描述');
    // 自动展开所有产品描述
    $('.product-description').each(function() {
      const description = $(this);
      const toggleBtn = description.siblings('.toggle-description');
      
      description.removeClass('collapsed').addClass('expanded');
      if (toggleBtn.length > 0) {
        toggleBtn.data('action', 'collapse');
        toggleBtn.html('收起详情 <i class="iconfont icon-arrow-up"></i>');
      }
    });
    
    // 重新计算瀑布流布局
    setTimeout(initMasonry, 500);
  }
}

// 页面加载完成后检查分类标题
$(document).ready(function() {
  // 延迟执行，确保所有元素都已加载
  setTimeout(checkCategoryTitleForDescriptionState, 300);
});
});
</script>

