package b7;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class M extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f10107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f10108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HashMap f10109d;

    public M(int i8, Context context, ArrayList arrayList) {
        this.f10106a = i8;
        if (i8 == 1) {
            this.f10109d = new HashMap();
            this.f10107b = context;
            this.f10108c = arrayList;
            return;
        }
        if (i8 == 2) {
            this.f10109d = new HashMap();
            this.f10107b = context;
            this.f10108c = arrayList;
        } else if (i8 == 3) {
            this.f10109d = new HashMap();
            this.f10107b = context;
            this.f10108c = arrayList;
        } else if (i8 != 4) {
            this.f10109d = new HashMap();
            this.f10107b = context;
            this.f10108c = arrayList;
        } else {
            this.f10109d = new HashMap();
            this.f10107b = context;
            this.f10108c = arrayList;
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        switch (this.f10106a) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
        }
        return this.f10108c.size();
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
        switch (this.f10106a) {
            case 0:
                View viewInflate = ((LayoutInflater) this.f10107b.getSystemService("layout_inflater")).inflate(R.layout.activity_fav_profile_item, viewGroup, false);
                this.f10109d = (HashMap) this.f10108c.get(i8);
                TextView textView = (TextView) viewInflate.findViewById(R.id.txt_cat_name_ch);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_check);
                if (((String) this.f10109d.get("isactive")).equals("yes")) {
                    imageView.setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                }
                textView.setText(((String) this.f10109d.get("name")).toUpperCase());
                return viewInflate;
            case 1:
                new pe.hf.black20.util.b((Activity) this.f10107b).a();
                h7.i iVarX = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(this.f10107b, 0));
                View viewInflate2 = ((LayoutInflater) this.f10107b.getSystemService("layout_inflater")).inflate(R.layout.activity_cat_parental_item, viewGroup, false);
                this.f10109d = (HashMap) this.f10108c.get(i8);
                TextView textView2 = (TextView) viewInflate2.findViewById(R.id.txt_cat_name_ch);
                ImageView imageView2 = (ImageView) viewInflate2.findViewById(R.id.img_lock);
                textView2.setText(((String) this.f10109d.get("category_name")).toUpperCase());
                if (new c7.b(this.f10107b, 1).N((String) this.f10109d.get("category_id"), "SERIES", iVarX.f25478a).equals("yes")) {
                    imageView2.setVisibility(0);
                } else {
                    imageView2.setVisibility(4);
                }
                return viewInflate2;
            case 2:
                h7.i iVarX2 = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(this.f10107b, 0));
                new pe.hf.black20.util.b((Activity) this.f10107b).a();
                View viewInflate3 = ((LayoutInflater) this.f10107b.getSystemService("layout_inflater")).inflate(R.layout.activity_cat_parental_item, viewGroup, false);
                this.f10109d = (HashMap) this.f10108c.get(i8);
                TextView textView3 = (TextView) viewInflate3.findViewById(R.id.txt_cat_name_ch);
                ImageView imageView3 = (ImageView) viewInflate3.findViewById(R.id.img_lock);
                textView3.setText(((String) this.f10109d.get("category_name")).toUpperCase());
                if (new c7.b(this.f10107b, 1).N((String) this.f10109d.get("category_id"), "TV", iVarX2.f25478a).equals("yes")) {
                    imageView3.setVisibility(0);
                } else {
                    imageView3.setVisibility(4);
                }
                return viewInflate3;
            case 3:
                new pe.hf.black20.util.b((Activity) this.f10107b).a();
                h7.i iVarX3 = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(this.f10107b, 0));
                View viewInflate4 = ((LayoutInflater) this.f10107b.getSystemService("layout_inflater")).inflate(R.layout.activity_cat_parental_item, viewGroup, false);
                this.f10109d = (HashMap) this.f10108c.get(i8);
                TextView textView4 = (TextView) viewInflate4.findViewById(R.id.txt_cat_name_ch);
                ImageView imageView4 = (ImageView) viewInflate4.findViewById(R.id.img_lock);
                textView4.setText(((String) this.f10109d.get("category_name")).toUpperCase());
                if (new c7.b(this.f10107b, 1).N((String) this.f10109d.get("category_id"), "VOD", iVarX3.f25478a).equals("yes")) {
                    imageView4.setVisibility(0);
                } else {
                    imageView4.setVisibility(4);
                }
                return viewInflate4;
            default:
                View viewInflate5 = ((LayoutInflater) this.f10107b.getSystemService("layout_inflater")).inflate(R.layout.activity_recording_list_item, viewGroup, false);
                this.f10109d = (HashMap) this.f10108c.get(i8);
                TextView textView5 = (TextView) viewInflate5.findViewById(R.id.txt_ep_title);
                TextView textView6 = (TextView) viewInflate5.findViewById(R.id.txt_ep_no);
                TextView textView7 = (TextView) viewInflate5.findViewById(R.id.txt_ep_season);
                TextView textView8 = (TextView) viewInflate5.findViewById(R.id.txt_watched);
                textView5.setText((CharSequence) this.f10109d.get("title"));
                if (((String) this.f10109d.get("length")).equals("0")) {
                    textView6.setText((CharSequence) this.f10109d.get("date"));
                } else {
                    textView6.setText(((String) this.f10109d.get("date")) + " ( " + ((String) this.f10109d.get("length")) + " Minutes)");
                }
                textView7.setText((String) this.f10109d.get("path"));
                if (((String) this.f10109d.get("status")).toLowerCase().equals("scheduled")) {
                    if (Methods.I(Methods.H(), (String) this.f10109d.get("date")).equals("larger")) {
                        textView8.setText("Passed/Failed");
                        textView8.setBackgroundColor(Color.parseColor("#FF5733"));
                    } else {
                        textView8.setText("Scheduled");
                        textView8.setBackgroundColor(Color.parseColor("#DEB600"));
                    }
                } else if (((String) this.f10109d.get("status")).toLowerCase().equals("recorded")) {
                    textView8.setText("Recorded");
                    textView8.setBackgroundColor(Color.parseColor("#08B52D"));
                } else if (((String) this.f10109d.get("status")).toLowerCase().equals("recording now")) {
                    textView8.setText("Recording Now");
                    textView8.setBackgroundColor(Color.parseColor("#C70039"));
                } else {
                    textView8.setVisibility(8);
                }
                return viewInflate5;
        }
    }
}
