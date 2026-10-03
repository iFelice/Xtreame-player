package b7;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0525i1 extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f10317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f10318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap f10319c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c7.d f10320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public h7.i f10321e;

    public C0525i1(Activity activity, ArrayList arrayList) {
        this.f10317a = activity;
        this.f10318b = arrayList;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f10318b.size();
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
        Context context = this.f10317a;
        this.f10320d = new c7.d(context);
        this.f10321e = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(context, 0));
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.activity_player_ch_item, viewGroup, false);
        this.f10319c = (HashMap) this.f10318b.get(i8);
        TextView textView = (TextView) viewInflate.findViewById(R.id.txt_cat_name_ch);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_fav);
        new c7.a(context, 0);
        if (this.f10320d.d0((String) this.f10319c.get("stream_id"), this.f10321e.f25478a, "_live").equals("yes")) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        textView.setText((CharSequence) this.f10319c.get("name"));
        textView.setTextColor(context.getResources().getColorStateList(R.color.btn_epg_focused_text));
        return viewInflate;
    }
}
