package b7;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.R;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.k1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0531k1 extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f10337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f10338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HashMap f10339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SharedPreferences f10340e;

    public C0531k1(int i8, Activity activity, ArrayList arrayList) {
        this.f10336a = i8;
        if (i8 == 1) {
            this.f10339d = new HashMap();
            this.f10340e = null;
            this.f10337b = activity;
            this.f10338c = arrayList;
            return;
        }
        this.f10339d = new HashMap();
        this.f10337b = activity;
        this.f10338c = arrayList;
        SharedPreferences sharedPreferences = activity.getSharedPreferences("pe.hf.black20", 0);
        this.f10340e = sharedPreferences;
        if (sharedPreferences.contains("timeShiftHR")) {
            Integer.parseInt(this.f10340e.getString("timeShiftHR", null));
            Integer.parseInt(this.f10340e.getString("timeShiftMin", null));
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        switch (this.f10336a) {
            case 0:
                break;
        }
        return this.f10338c.size();
    }

    @Override // android.widget.Adapter
    public final /* bridge */ /* synthetic */ Object getItem(int i8) {
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i8) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i8, View view, ViewGroup viewGroup) {
        switch (this.f10336a) {
            case 0:
                View viewInflate = ((LayoutInflater) this.f10337b.getSystemService("layout_inflater")).inflate(R.layout.activity_recording_list_item, viewGroup, false);
                this.f10339d = (HashMap) this.f10338c.get(i8);
                TextView textView = (TextView) viewInflate.findViewById(R.id.txt_ep_title);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_ep_no);
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.txt_ep_season);
                ((TextView) viewInflate.findViewById(R.id.txt_watched)).setVisibility(8);
                String str = (String) this.f10339d.get("pr_status");
                if (str.equals("new")) {
                    textView2.setTextColor(Color.parseColor("#FFC300"));
                    str = "UPCOMING";
                } else if (((String) this.f10339d.get("pr_status")).equals("active") || ((String) this.f10339d.get("pr_status")).equals("notified")) {
                    textView2.setTextColor(Color.parseColor("#53E74C"));
                    str = "NOW";
                }
                if (!((String) this.f10339d.get("end_time")).equals(this.f10337b.getString(R.string.go_to_epg_view_and_long_press_to_add_program_reminder)) && Methods.I(Methods.H(), (String) this.f10339d.get("end_time")).equals("larger")) {
                    new c7.c(this.f10337b, 1).e0((String) this.f10339d.get("id"), "passed");
                    textView2.setTextColor(Color.parseColor("#C70039"));
                    str = "PASSED";
                }
                textView.setText(((String) this.f10339d.get("channel_name")) + " - " + ((String) this.f10339d.get("show_name")));
                textView2.setText(((String) this.f10339d.get("start_time")) + " - " + ((String) this.f10339d.get("end_time")) + " (" + str + ")");
                textView3.setText((CharSequence) this.f10339d.get("category_name"));
                return viewInflate;
            default:
                SharedPreferences sharedPreferences = this.f10337b.getSharedPreferences("pe.hf.black20", 0);
                if (sharedPreferences.contains("timeShiftHR")) {
                    Integer.parseInt(sharedPreferences.getString("timeShiftHR", null));
                    Integer.parseInt(sharedPreferences.getString("timeShiftMin", null));
                }
                View viewInflate2 = ((LayoutInflater) this.f10337b.getSystemService("layout_inflater")).inflate(R.layout.activity_epg_xmltv_item_ch, viewGroup, false);
                this.f10339d = (HashMap) this.f10338c.get(i8);
                TextView textView4 = (TextView) viewInflate2.findViewById(R.id.btn_ch_name);
                ImageView imageView = (ImageView) viewInflate2.findViewById(R.id.img_ch_logo);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(EPGActivityXMLTV.f29261n0, EPGActivityXMLTV.f29260m0);
                int i9 = EPGActivityXMLTV.f29263p0;
                layoutParams.width = i9;
                layoutParams.height = i9;
                layoutParams.gravity = 17;
                imageView.setLayoutParams(layoutParams);
                String str2 = (((String) this.f10339d.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET) || ((String) this.f10339d.get("stream_icon")).equals("null") || this.f10339d.get("stream_icon") == null) ? "0" : (String) this.f10339d.get("stream_icon");
                try {
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10337b).n(str2).b()).m(R.drawable.logo)).f(R.drawable.logo)).F(imageView);
                    } else {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10337b).n(str2).g()).m(R.drawable.logo)).f(R.drawable.logo)).F(imageView);
                    }
                } catch (Exception unused) {
                    Log.d("XCIPTV_TAG", "Picasso Crashed");
                }
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(EPGActivityXMLTV.f29261n0, EPGActivityXMLTV.f29260m0);
                int i10 = EPGActivityXMLTV.f29265r0;
                int i11 = EPGActivityXMLTV.f29263p0;
                layoutParams2.width = i10 - i11;
                layoutParams2.height = i11;
                int i12 = EPGActivityXMLTV.f29262o0;
                layoutParams2.setMargins(i12, i12, i12, i12);
                textView4.setLayoutParams(layoutParams2);
                if (z4.q0.q().a("ORT_isDemo", false)) {
                    textView4.setText("CHANNEL " + String.valueOf(i8));
                } else {
                    textView4.setText((CharSequence) this.f10339d.get("name"));
                }
                imageView.setFocusable(false);
                textView4.setFocusable(false);
                textView4.setClickable(false);
                return viewInflate2;
        }
    }
}
