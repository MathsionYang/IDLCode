Pro myinterface
  wxy      =     get_screen_size()
  drawx = wxy[0]*0.8
  drawy = wxy[1]*0.8
  ;��������
  title = '������Դ��ˮ��Դ�ռ���Ϣ����ϵͳ'
  ; ������base
  wtop = widget_base(title=title, /row,mbar=menubar)
  ; �����˵���
  wfilemenu = widget_button(menubar, value='�ļ�', /menu,event_pro='')
  wyxclmenu = widget_button(menubar,value='Ӱ��Ԥ����',/menu,event_pro='')
  wzsjsmenu = widget_button(menubar,value='ָ������',/menu,event_pro='')
  wgxxmenu  = widget_button(menubar,value='������Ϣ����',/menu,event_pro='')
  wdwflmenu = widget_button(menubar,value='�������',/menu,event_pro='')
  wxxtqmenu = widget_button(menubar,value='��Ϣ��ȡ',/menu,event_pro='')
  wbhjcmenu = widget_button(menubar,value='�仯���',/menu,event_pro='')
  wtjfxmenu = widget_button(menubar,value='ͳ�Ʒ���',/menu,event_pro='')
  batchxmenu = widget_button(menubar,value='������',/menu,event_pro='')
  airxmenu = widget_button(menubar,value='���˻�',/menu,event_pro='')
  whelpmenu = widget_button(menubar,value='����',/menu,event_pro='')
  ;�ļ��˵��Ӳ˵�
  wopenimg = widget_button(wfilemenu, value='��ͼ���ļ�', uvalue='openimg',uname = 'pop',event_pro='openfile_img')
  wopenshape =widget_button(wfilemenu, value='��ʸ���ļ�', uvalue='openshape',event_pro='')
  wsave = widget_button(wfilemenu, value='����ΪENVI��׼��ʽ', uvalue='savenvi',/separator)
  wsave = widget_button(wfilemenu, value='����Ϊ���������ʽ',/menu,/separator)
  wsave1 = widget_button(wsave, value='ERDAS IMAGINE', uvalue='save1')
  wsave2 = widget_button(wsave, value='ArcGIS�������ݿ�', uvalue='save2')
  wsave3 = widget_button(wsave, value='PCI', uvalue='save3')
  wsave4 = widget_button(wsave, value='TIFF/GeoTIFF', uvalue='save4')
  wsave5 = widget_button(wsave, value='HDF', uvalue='save5')
  wsave = widget_button(wfilemenu, value='����Ϊͼ���ļ�', uvalue='saveother2',/menu,/separator)
  wsave6 = widget_button(wsave, value='BMP', uvalue='save6')
  wsave7 = widget_button(wsave, value='JPEG', uvalue='save7')
  wsave8 = widget_button(wsave, value='PNG', uvalue='save8')
  wexit = widget_button(wfilemenu, value='�˳�', uvalue='exit',/separator)
  ;Ӱ����˵���Ŀ¼
  proces1 = widget_button(wyxclmenu,value=' ���κϲ� ',uvalue='proces1',event_pro='')
  proces2 = widget_button(wyxclmenu,value=' Ӱ��ü� ',uvalue='proces2',event_pro='')
  proces3 = widget_button(wyxclmenu,value=' Ӱ��ƴ�� ',uvalue='proces3',event_pro='')
  proces4 = widget_button(wyxclmenu,value=' �������� ', uvalue='proces4',/separator,event_pro='')
  proces5 = widget_button(wyxclmenu,value=' ������׼ ',uvalue='proces5',event_pro='')
  proces6 = widget_button(wyxclmenu,value=' ����У�� ',uvalue='proces6',event_pro='')
  proces7 = widget_button(wyxclmenu,value='ֱ��ͼƥ��',uvalue='proces7',/separator)
  ;ָ�������Ӳ˵�
  bandmath = widget_button(wzsjsmenu,value='  ��������  ',uvalue='bandmath',event_pro='')
  NDSI = widget_button(wzsjsmenu,value='��һ����ѩָ��', uvalue='NDSI',/separator,event_pro='')
  NDWI = widget_button(wzsjsmenu,value='��һ��ˮ��ָ��',uvalue='NDWI',event_pro='')
  NDVI = widget_button(wzsjsmenu,value='��һ��ֲ��ָ��', uvalue='NDVI',/separator,event_pro='')
  EVI  = widget_button(wzsjsmenu,value='�Ľ���ֲ��ָ��',uvalue='EVI',event_pro='')
  ;������Ϣ��ȡ�Ӳ˵�
  MGXX1 = widget_button(wgxxmenu,value=' ����Ӧ�˲��� ',uname='zsyfilter',event_pro='')
  MGXX2 = widget_button(wgxxmenu,value='  ����˲��� ',/SEPARATOR, uname='jjfilter',event_pro='')
  MGXX3 = widget_button(wgxxmenu,value='����Ҷ�任(FFT)',/SEPARATOR, uname='fftfilter',event_pro='')
  MGXX4 = widget_button(wgxxmenu,value=' ��ͨ�˲��� ',/SEPARATOR, uname='highfilter',event_pro='')
  MGXX5 = widget_button(wgxxmenu,value=' ��ͨ�˲��� ',/SEPARATOR, uname='lowfilter',event_pro='')
  ;��������Ӳ˵�
  wdwfl1 = widget_button(wdwflmenu,value=' �Ǽල���� ',event_pro='')
  wdwfl2 = widget_button(wdwflmenu,value=' K-��ֵ���� ',uname='kclass',event_pro='')
  wdwfl3 = widget_button(wdwflmenu,value='ISO-data����',uname='isoclass',event_pro='')
  wdwfl4 = widget_button(wdwflmenu,value='  �ල���� ',/separator,/menu)
  wjdfl1 = widget_button(wdwfl4,value=' �����Ȼ�� ',event_pro='')
  wjdfl2 = widget_button(wdwfl4,value=' ��С���뷨 ',event_pro='')
  wjdfl3 = widget_button(wdwfl4,value=' ���Ͼ��뷨 ',event_pro='')
  wjdfl4 = widget_button(wdwfl4,value='���׽���ͼ��',event_pro='')
  wjdfl5 = widget_button(wdwfl4,value='֧����������',/SEPARATOR,event_pro='')
  ;��Ϣ��ȡ�Ӳ˵�
  pca = widget_button(wxxtqmenu,value=' ���ɷַ����� ',uname='pca',event_pro='')
  ica = widget_button(wxxtqmenu,value='�����ɷַ�����',uname='ica',event_pro='')
  SVM = widget_button(wxxtqmenu,value=' ֧���������� ',/SEPARATOR,uname='svm',event_pro='')
  Sam = widget_button(wxxtqmenu,value='   ���׽Ƿ�   ',/separator,event_pro='')
  Sss = widget_button(wxxtqmenu,value='�������Ƴ߶ȷ�',/separator,event_pro='')
  bizi = widget_button(wxxtqmenu,value='    ��ֵ��    ',/SEPARATOR,event_pro='')
  menxh = widget_button(wxxtqmenu,value='  ���޻���   ',event_pro='')
  ;�仯����Ӳ˵�
  djfx = widget_button(wbhjcmenu,value='  ���ӷ���  ',event_pro='')
  cshc = widget_button(wbhjcmenu,value='  ��ɫ�ϳ�  ',event_pro='')
  asfx = widget_button(wbhjcmenu,value='   ������   ',event_pro='')
  gpfx = widget_button(wbhjcmenu,value='���ױ仯����',/separator,event_pro='')
  ymfx = widget_button(wbhjcmenu,value='  ��Ĥ����  ',/separator,event_pro='')
  sjxl = widget_button(wbhjcmenu,value=' ʱ�����з��� ',/separator,event_pro='')
  ;��Ϣͳ���Ӳ˵�
  txls  = widget_button(wtjfxmenu,value=' �������� ',event_pro='')
  zfttj = widget_button(wtjfxmenu,value='ֱ��ͼͳ��',event_pro='')
  dytj  = widget_button(wtjfxmenu,value=' ��Ԫͳ�� ',event_pro='')
  dytj  = widget_button(wtjfxmenu,value=' ��Ԫͳ�� ',event_pro='')

  ;�����Ӳ˵�
  bhwd = widget_button(whelpmenu,value='�����ĵ�',event_pro='')
  rjbb = widget_button(whelpmenu,value='�����Ȩ',event_pro='')
  tcbz = widget_button(whelpmenu,value='  �˳�  ',/separator,event_pro='')

  ; ������������(ͼ������ƽ���)
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
  ;����ƫ����, �ѽ��������Ļ�м�
  xy = widget_info(wtop,/geo)
  offsetxy = (wxy-[xy.SCR_XSIZE,xy.SCR_YSIZE])/2
  widget_control, wtop,xoffset=offsetxy[0],yoffset=offsetxy[1]
  ;���ƽ���
  widget_control, wtop, /realize
  xmanager,'openfile',wtop,/no_block
End
PRO OPENFILE_IMG,event
  ;  tmp = DIALOG_MESSAGE('�����е��¼���Ӧ��ע��ԭʼ�ı���',/infor)

  COMPILE_OPT IDL2
  e=envi(/headless);����envi������ģʽ
  fn=envi_pickfile(title='select a rs file');ѡȡ�ļ�
  envi_open_file,fn,r_fid=fid;���ļ�
  envi_file_query,fid,$
    fname=fname,$
    dims=dims,$
    ns=ns,$
    nl=nl,$
    nb=nb,$
    data_type=dt,$
    sensor_type=st;��ȡͼ����Ϣ
  tm_data=make_Array(ns,nl,nb,type=dt);�������鴢��ͼ��
  for i=0,nb-1 do begin
    tm_Data[*,*,i]=envi_get_data(fid=fid,dims=dims,pos=i)
  endfor;����ѭ����ͼ����������ζ�����������ȥ
  ;  dm=dialog_message('Now I will show you the photo!',title='Cyrus tell you');���ѵ�����
  tvscl,tm_Data,true=3;��ͼ���������ʾ



END
