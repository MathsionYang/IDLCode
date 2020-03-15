Pro myinterface
  wxy      =     get_screen_size()
  drawx = wxy[0]*0.8
  drawy = wxy[1]*0.8
  ;创建界面
  title = '土地资源与水资源空间信息服务系统'
  ; 创建顶base
  wtop = widget_base(title=title, /row,mbar=menubar)
  ; 创建菜单栏
  wfilemenu = widget_button(menubar, value='文件', /menu,event_pro='')
  wyxclmenu = widget_button(menubar,value='影像预处理',/menu,event_pro='')
  wzsjsmenu = widget_button(menubar,value='指数计算',/menu,event_pro='')
  wgxxmenu  = widget_button(menubar,value='敏感信息分析',/menu,event_pro='')
  wdwflmenu = widget_button(menubar,value='地物分类',/menu,event_pro='')
  wxxtqmenu = widget_button(menubar,value='信息提取',/menu,event_pro='')
  wbhjcmenu = widget_button(menubar,value='变化检测',/menu,event_pro='')
  wtjfxmenu = widget_button(menubar,value='统计分析',/menu,event_pro='')
  batchxmenu = widget_button(menubar,value='批处理',/menu,event_pro='')
  airxmenu = widget_button(menubar,value='无人机',/menu,event_pro='')
  whelpmenu = widget_button(menubar,value='帮助',/menu,event_pro='')
  ;文件菜单子菜单
  wopenimg = widget_button(wfilemenu, value='打开图像文件', uvalue='openimg',uname = 'pop',event_pro='openfile_img')
  wopenshape =widget_button(wfilemenu, value='打开矢量文件', uvalue='openshape',event_pro='')
  wsave = widget_button(wfilemenu, value='保存为ENVI标准格式', uvalue='savenvi',/separator)
  wsave = widget_button(wfilemenu, value='保存为其他软件格式',/menu,/separator)
  wsave1 = widget_button(wsave, value='ERDAS IMAGINE', uvalue='save1')
  wsave2 = widget_button(wsave, value='ArcGIS地理数据库', uvalue='save2')
  wsave3 = widget_button(wsave, value='PCI', uvalue='save3')
  wsave4 = widget_button(wsave, value='TIFF/GeoTIFF', uvalue='save4')
  wsave5 = widget_button(wsave, value='HDF', uvalue='save5')
  wsave = widget_button(wfilemenu, value='保存为图像文件', uvalue='saveother2',/menu,/separator)
  wsave6 = widget_button(wsave, value='BMP', uvalue='save6')
  wsave7 = widget_button(wsave, value='JPEG', uvalue='save7')
  wsave8 = widget_button(wsave, value='PNG', uvalue='save8')
  wexit = widget_button(wfilemenu, value='退出', uvalue='exit',/separator)
  ;影像处理菜单子目录
  proces1 = widget_button(wyxclmenu,value=' 波段合并 ',uvalue='proces1',event_pro='')
  proces2 = widget_button(wyxclmenu,value=' 影像裁剪 ',uvalue='proces2',event_pro='')
  proces3 = widget_button(wyxclmenu,value=' 影像拼接 ',uvalue='proces3',event_pro='')
  proces4 = widget_button(wyxclmenu,value=' 数据拉伸 ', uvalue='proces4',/separator,event_pro='')
  proces5 = widget_button(wyxclmenu,value=' 几何配准 ',uvalue='proces5',event_pro='')
  proces6 = widget_button(wyxclmenu,value=' 辐射校正 ',uvalue='proces6',event_pro='')
  proces7 = widget_button(wyxclmenu,value='直方图匹配',uvalue='proces7',/separator)
  ;指数计算子菜单
  bandmath = widget_button(wzsjsmenu,value='  波段运算  ',uvalue='bandmath',event_pro='')
  NDSI = widget_button(wzsjsmenu,value='归一化积雪指数', uvalue='NDSI',/separator,event_pro='')
  NDWI = widget_button(wzsjsmenu,value='归一化水体指数',uvalue='NDWI',event_pro='')
  NDVI = widget_button(wzsjsmenu,value='归一化植被指数', uvalue='NDVI',/separator,event_pro='')
  EVI  = widget_button(wzsjsmenu,value='改进型植被指数',uvalue='EVI',event_pro='')
  ;敏感信息提取子菜单
  MGXX1 = widget_button(wgxxmenu,value=' 自适应滤波器 ',uname='zsyfilter',event_pro='')
  MGXX2 = widget_button(wgxxmenu,value='  卷积滤波器 ',/SEPARATOR, uname='jjfilter',event_pro='')
  MGXX3 = widget_button(wgxxmenu,value='傅里叶变换(FFT)',/SEPARATOR, uname='fftfilter',event_pro='')
  MGXX4 = widget_button(wgxxmenu,value=' 高通滤波器 ',/SEPARATOR, uname='highfilter',event_pro='')
  MGXX5 = widget_button(wgxxmenu,value=' 低通滤波器 ',/SEPARATOR, uname='lowfilter',event_pro='')
  ;地物分类子菜单
  wdwfl1 = widget_button(wdwflmenu,value=' 非监督分类 ',event_pro='')
  wdwfl2 = widget_button(wdwflmenu,value=' K-均值分类 ',uname='kclass',event_pro='')
  wdwfl3 = widget_button(wdwflmenu,value='ISO-data分类',uname='isoclass',event_pro='')
  wdwfl4 = widget_button(wdwflmenu,value='  监督分类 ',/separator,/menu)
  wjdfl1 = widget_button(wdwfl4,value=' 最大似然法 ',event_pro='')
  wjdfl2 = widget_button(wdwfl4,value=' 最小距离法 ',event_pro='')
  wjdfl3 = widget_button(wdwfl4,value=' 马氏距离法 ',event_pro='')
  wjdfl4 = widget_button(wdwfl4,value='光谱角制图法',event_pro='')
  wjdfl5 = widget_button(wdwfl4,value='支持向量机法',/SEPARATOR,event_pro='')
  ;信息提取子菜单
  pca = widget_button(wxxtqmenu,value=' 主成分分析法 ',uname='pca',event_pro='')
  ica = widget_button(wxxtqmenu,value='独立成分分析法',uname='ica',event_pro='')
  SVM = widget_button(wxxtqmenu,value=' 支持向量机法 ',/SEPARATOR,uname='svm',event_pro='')
  Sam = widget_button(wxxtqmenu,value='   光谱角法   ',/separator,event_pro='')
  Sss = widget_button(wxxtqmenu,value='光谱相似尺度法',/separator,event_pro='')
  bizi = widget_button(wxxtqmenu,value='    比值法    ',/SEPARATOR,event_pro='')
  menxh = widget_button(wxxtqmenu,value='  门限化法   ',event_pro='')
  ;变化检测子菜单
  djfx = widget_button(wbhjcmenu,value='  叠加分析  ',event_pro='')
  cshc = widget_button(wbhjcmenu,value='  彩色合成  ',event_pro='')
  asfx = widget_button(wbhjcmenu,value='   代数法   ',event_pro='')
  gpfx = widget_button(wbhjcmenu,value='光谱变化分析',/separator,event_pro='')
  ymfx = widget_button(wbhjcmenu,value='  掩膜分析  ',/separator,event_pro='')
  sjxl = widget_button(wbhjcmenu,value=' 时间序列分析 ',/separator,event_pro='')
  ;信息统计子菜单
  txls  = widget_button(wtjfxmenu,value=' 距离量算 ',event_pro='')
  zfttj = widget_button(wtjfxmenu,value='直方图统计',event_pro='')
  dytj  = widget_button(wtjfxmenu,value=' 单元统计 ',event_pro='')
  dytj  = widget_button(wtjfxmenu,value=' 多元统计 ',event_pro='')

  ;帮助子菜单
  bhwd = widget_button(whelpmenu,value='帮助文档',event_pro='')
  rjbb = widget_button(whelpmenu,value='软件版权',event_pro='')
  tcbz = widget_button(whelpmenu,value='  退出  ',/separator,event_pro='')

  ; 创建左控制面板(图像处理控制界面)
  ;  wtoolsbase = widget_base(wtop, /column, event_pro='')
  ;  wsmooth      = widget_button(wtoolsbase, value='Smooth', uvalue='smooth')
  ;  wusmask      = widget_button(wtoolsbase, value='Unsharp Mask', uvalue='umask')
  ;  wsobel       = widget_button(wtoolsbase, value='Sobel', uvalue='sobel')
  ;  wroberts     = widget_button(wtoolsbase, value='Roberts', uvalue='roberts')
  ;  wmedian      = widget_button(wtoolsbase, value='Median', uvalue='median')
  ;  wnegative = widget_button(wtoolsbase, value='Negative', uvalue='negative')
  ;  wahisteq     = widget_button(wtoolsbase, value='Adapt Hist Equal',     uvalue='ahisteq')
  ;  wmagicbar = widget_button(wtoolsbase, value='MagicBar(on)', uvalue='magicbar')
  ;  wthresh      = widget_slider(wtoolsbase, title='Threshold',min=-255, max=255, value=0, uvalue='thresh')
  ;  wscale       = widget_slider(wtoolsbase, title='Scale', min=0, max=255, value=0,uvalue='scale')
  ;  wbscale      = widget_button(wtoolsbase, value='Gray', uvalue='bscale')
  ;  wloadct      = widget_button(wtoolsbase, value='Load Color Table',     uvalue='loadct')
  ;  wrevert      = widget_button(wtoolsbase, value='Revert', uvalue='revert')
  ;  wtext        = widget_text(wtoolsbase,/ALL_EVENTS ,/editable,value='',uvalue='text')
  ;  wmessage     = widget_text(wtoolsbase,value='',uvalue='message')
  wdraw = widget_draw(wtop, uvalue= 'draw', xsize= drawx,ysize=drawy,/frame, /EXPOSE_EVENTS,$

    /WHEEL_EVENTS,/MOTION_EVENTS,/KEYBOARD_EVENTS,/button_events)
  ;计算偏移量, 把界面放在屏幕中间
  xy = widget_info(wtop,/geo)
  offsetxy = (wxy-[xy.SCR_XSIZE,xy.SCR_YSIZE])/2
  widget_control, wtop,xoffset=offsetxy[0],yoffset=offsetxy[1]
  ;绘制界面
  widget_control, wtop, /realize
  xmanager,'openfile',wtop,/no_block
End
PRO OPENFILE_IMG,event
  ;  tmp = DIALOG_MESSAGE('窗口中的事件响应，注意原始文本框',/infor)

  COMPILE_OPT IDL2
  e=envi(/headless);开启envi批处理模式
  fn=envi_pickfile(title='select a rs file');选取文件
  envi_open_file,fn,r_fid=fid;打开文件
  envi_file_query,fid,$
    fname=fname,$
    dims=dims,$
    ns=ns,$
    nl=nl,$
    nb=nb,$
    data_type=dt,$
    sensor_type=st;获取图像信息
  tm_data=make_Array(ns,nl,nb,type=dt);创建数组储存图像
  for i=0,nb-1 do begin
    tm_Data[*,*,i]=envi_get_data(fid=fid,dims=dims,pos=i)
  endfor;利用循环把图像的三个波段读到数组里面去
  ;  dm=dialog_message('Now I will show you the photo!',title='Cyrus tell you');舍友的提醒
  tvscl,tm_Data,true=3;将图像拉伸后显示



END
