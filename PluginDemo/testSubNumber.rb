require 'fiddle'
properties = { dialog_title: "SketchUp",
    preferences_key: "com.sketchup.www",
    scrollable: true,
    resizable: true,
    width: 600,
    height: 400,
    left: 100,
    top: 100,
    min_width: 50,
    min_height: 50,
    max_width: 1000,
    max_height: 1000,
    style: UI::HtmlDialog::STYLE_DIALOG }
dialog = UI::HtmlDialog.new(properties)
dialog.set_url("D:/subnumber/subNumber.html")
dialog.show
dialog.add_action_callback('sub'){ |_dlg, arg1, arg2|
    #UI.messagebox('参数1：' +arg1)
    #UI.messagebox('参数2：' + arg2)
    #result = Integer(arg1) + Integer(arg2)

    libm = Fiddle.dlopen('D:/subnumber/SubNumber.dll')
    func = Fiddle::Function.new(
        libm['SubNumber'],
        [Fiddle::TYPE_DOUBLE, Fiddle::TYPE_DOUBLE],
        Fiddle::TYPE_DOUBLE
    )
    result = func.call(arg1.to_f, arg2.to_f)
    #UI.messagebox(result)
    
    dialog.execute_script("sub2('#{result.to_s}')")
  }