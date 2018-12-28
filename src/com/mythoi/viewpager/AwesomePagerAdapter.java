package com.mythoi.viewpager;
import java.lang.ClassLoader;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import java.lang.Object;
import java.lang.Override;
import android.view.View;
import java.util.ArrayList;
import android.support.v4.view.PagerAdapter;

public class AwesomePagerAdapter extends PagerAdapter{

  ArrayList<String> tabTitleList;
  ArrayList<View> mListViews;
  public AwesomePagerAdapter(ArrayList<String> titleList, ArrayList<View> views)
  {
    tabTitleList=titleList;
    mListViews=views;
  }

  @Override
  public int getCount() {
    return mListViews.size();
  }

  @Override
  public Object instantiateItem(View collection, int position) {

    ((ViewPager) collection).addView(mListViews.get(position),0);

    return mListViews.get(position);
  }


  @Override
  public void destroyItem(View collection, int position, Object view) {
    ((ViewPager) collection).removeView(mListViews.get(position));
  } 

  @Override
  public boolean isViewFromObject(View view, Object object) {
    return view==(object);
  }


  @Override
  public void finishUpdate(View arg0) {}


  @Override
  public void restoreState(Parcelable arg0, ClassLoader arg1) {}

  @Override
  public Parcelable saveState() {
    return null;
  }

  @Override
  public void startUpdate(View arg0) {}
  
  @Override
  public CharSequence getPageTitle(int position) {
    return tabTitleList.get(position);
  }

}
