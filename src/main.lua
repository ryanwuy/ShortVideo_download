require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "com.jefflemon.video.R"
import "android.content.pm.*"
import "android.content.Context"
import "android.support.v4.content.ContextCompat"
import "android.support.v4.app.ActivityCompat"
import "android.graphics.drawable.BitmapDrawable"
import "android.support.v4.content.res.ResourcesCompat"

activity.setContentView(R.layout.activity_main)

--这个需要系统SDK19以上才能用
if Build.VERSION.SDK_INT >= 19 then
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
end

activity.ActionBar.hide()

splash_bg = activity.findViewById(R.id.splash_bg)

Num = math.random(1,19)
splash = {R.drawable.splash1,R.drawable.splash2,R.drawable.splash3,R.drawable.splash4,R.drawable.splash5,R.drawable.splash6,R.drawable.splash7,R.drawable.splash8,R.drawable.splash9,R.drawable.splash10,R.drawable.splash11,R.drawable.splash12,R.drawable.splash13,R.drawable.splash14,R.drawable.splash15,R.drawable.splash16,R.drawable.splash17,R.drawable.splash18,R.drawable.splash19}
drawable = ResourcesCompat.getDrawable(activity.getContext().getResources(),splash[Num], nil);
splash_bg.setImageDrawable(drawable)
 

permissions = {"android.permission.WRITE_EXTERNAL_STORAGE"}
if Build.VERSION.SDK_INT >= 23 then
  isPermission = ContextCompat.checkSelfPermission(activity,permissions[1])
  --print(isPermission.."\n"..PackageManager.PERMISSION_GRANTED)
  if(isPermission == -1) then
    ActivityCompat.requestPermissions(activity,permissions,333)
  end
end



  
task(3000,function()
  activity.newActivity("index",android.R.anim.fade_in,android.R.anim.fade_out)
  activity.finish()
end)


skip = activity.findViewById(R.id.skip)
skip.onClick = function()
  skip.setEnabled(false)
  activity.newActivity("index",android.R.anim.fade_in,android.R.anim.fade_out)
  activity.finish()
end

