require "import"
import "android.os.*"
import "android.app.*"
import "android.widget.*"
import "android.view.*"
import "java.util.ArrayList";
import "android.view.LayoutInflater";
import "com.mythoi.viewpager.AwesomePagerAdapter"
import "com.jefflemon.video.R"
import "android.support.v7.view.*"
import "android.support.v4.app.Fragment"
import "android.support.v4.view.PagerAdapter"
import "android.graphics.drawable.ColorDrawable"

activity.setContentView(R.layout.index)

--界面初始化开始
--这个需要系统SDK21以上才能用，沉浸状态栏
if Build.VERSION.SDK_INT >= 21 then
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF404040);
end

activity.ActionBar.setBackgroundDrawable(ColorDrawable(0xFF404040))
activity.ActionBar.setElevation(0)

function onCreateOptionsMenu(menu)
  menu.add("帮助")
  menu.add("关于")
end
function onOptionsItemSelected(item)
  if(item.Title  == "帮助") then
    
  elseif(item.Title == "关于") then
  
  end
end

tabLayout = activity.findViewById(R.id.tabLayout)
viewPager = activity.findViewById(R.id.viewPager)

views = ArrayList()
tabTs = {"主页","设置"}

indexLay = LayoutInflater.from(activity).inflate(R.layout.index_index,nil)
settingsLay = LayoutInflater.from(activity).inflate(R.layout.index_settings,nil)

views.add(indexLay)
views.add(settingsLay)

viewPager.setAdapter(AwesomePagerAdapter(tabTs,views))
tabLayout.setupWithViewPager(viewPager)

--[[bt = indexLay.findViewById(R.id.indexBt)
bt.onClick = function()
  print("success!")
end]]
--界面初始化结束