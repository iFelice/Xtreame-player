package b7;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.R;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.encryption.Encrypt;

/* JADX INFO: loaded from: classes2.dex */
public final class z1 extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f10535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f10536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HashMap f10537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f10538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f10539f;

    public z1(A1 a8, Context context, ArrayList arrayList) {
        this.f10534a = 0;
        this.f10539f = a8;
        this.f10537d = new HashMap();
        this.f10538e = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f10535b = context;
        this.f10536c = arrayList;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        switch (this.f10534a) {
            case 0:
                break;
        }
        return this.f10536c.size();
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
        switch (this.f10534a) {
            case 0:
                View viewInflate = ((LayoutInflater) this.f10535b.getSystemService("layout_inflater")).inflate(R.layout.fragment_search_program_list_item, viewGroup, false);
                this.f10537d = (HashMap) this.f10536c.get(i8);
                TextView textView = (TextView) viewInflate.findViewById(R.id.txt_channel_name);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_epg_title);
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.txt_epg_time);
                TextView textView4 = (TextView) viewInflate.findViewById(R.id.txt_epg_desc);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_channel_logo);
                textView.setText(((String) this.f10537d.get("name")).toUpperCase());
                textView2.setText((CharSequence) this.f10537d.get("title"));
                textView3.setText((CharSequence) this.f10537d.get("pr_time"));
                textView4.setText((CharSequence) this.f10537d.get("description"));
                boolean zEquals = ((String) this.f10537d.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET);
                Object obj = this.f10539f;
                if (zEquals) {
                    ((com.bumptech.glide.l) com.bumptech.glide.b.d(((A1) obj).l()).m(Integer.valueOf(R.drawable.logo)).g()).F(imageView);
                } else {
                    String str = (String) this.f10537d.get("stream_icon");
                    this.f10538e = str;
                    String strReplaceAll = str.replaceAll(" ", "%20");
                    this.f10538e = strReplaceAll;
                    String strReplaceAll2 = strReplaceAll.replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET);
                    this.f10538e = strReplaceAll2;
                    this.f10538e = strReplaceAll2.replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(((A1) obj).l()).n((String) this.f10538e).l(6, 6)).b()).F(imageView);
                    } else {
                        try {
                            ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(((A1) obj).l()).n((String) this.f10538e).g()).f(R.drawable.logo)).F(imageView);
                            break;
                        } catch (Exception unused) {
                        }
                    }
                }
                return viewInflate;
            default:
                this.f10538e = this.f10535b.getSharedPreferences("pe.hf.black20", 0);
                View viewInflate2 = ((LayoutInflater) this.f10535b.getSystemService("layout_inflater")).inflate(R.layout.activity_usermanager_item, viewGroup, false);
                this.f10537d = (HashMap) this.f10536c.get(i8);
                TextView textView5 = (TextView) viewInflate2.findViewById(R.id.txt_name);
                TextView textView6 = (TextView) viewInflate2.findViewById(R.id.txt_url);
                if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").equals(this.f10537d.get("name"))) {
                    if (((String) this.f10537d.get("name")).contains("PANEL 1")) {
                        textView5.setText(((SharedPreferences) this.f10538e).getString("portal_name", null) + " (In Use)");
                    } else if (((String) this.f10537d.get("name")).contains("PANEL 2")) {
                        textView5.setText(((SharedPreferences) this.f10538e).getString("portal2_name", null) + " (In Use)");
                    } else if (((String) this.f10537d.get("name")).contains("PANEL 3")) {
                        textView5.setText(((SharedPreferences) this.f10538e).getString("portal3_name", null) + " (In Use)");
                    } else if (((String) this.f10537d.get("name")).contains("PANEL 4")) {
                        textView5.setText(((SharedPreferences) this.f10538e).getString("portal4_name", null) + " (In Use)");
                    } else if (((String) this.f10537d.get("name")).contains("PANEL 5")) {
                        textView5.setText(((SharedPreferences) this.f10538e).getString("portal5_name", null) + " (In Use)");
                    } else {
                        textView5.setText(((String) this.f10537d.get("name")) + " (In Use)");
                    }
                    textView5.setTextColor(-16711936);
                } else if (((String) this.f10537d.get("name")).contains("PANEL 1")) {
                    textView5.setText(((SharedPreferences) this.f10538e).getString("portal_name", null));
                } else if (((String) this.f10537d.get("name")).contains("PANEL 2")) {
                    textView5.setText(((SharedPreferences) this.f10538e).getString("portal2_name", null));
                } else if (((String) this.f10537d.get("name")).contains("PANEL 3")) {
                    textView5.setText(((SharedPreferences) this.f10538e).getString("portal3_name", null));
                } else if (((String) this.f10537d.get("name")).contains("PANEL 4")) {
                    textView5.setText(((SharedPreferences) this.f10538e).getString("portal4_name", null));
                } else if (((String) this.f10537d.get("name")).contains("PANEL 5")) {
                    textView5.setText(((SharedPreferences) this.f10538e).getString("portal5_name", null));
                } else {
                    textView5.setText((CharSequence) this.f10537d.get("name"));
                }
                if (!((String) this.f10537d.get("username")).equals("not_setup") && this.f10537d.get("username") != null) {
                    textView6.setText(this.f10535b.getString(R.string.xc_username) + ": " + Encrypt.a((String) this.f10537d.get("username")));
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
                    textView6.setText(this.f10535b.getString(R.string.xc_username) + ": m3u");
                } else {
                    textView6.setText("Account not ready");
                }
                UsersHistoryActivity.f29223Z.setOnItemClickListener(new C0514f(this, 18));
                return viewInflate2;
        }
    }

    public z1(UsersHistoryActivity usersHistoryActivity, UsersHistoryActivity usersHistoryActivity2, ArrayList arrayList) {
        this.f10534a = 1;
        this.f10539f = usersHistoryActivity;
        this.f10537d = new HashMap();
        this.f10535b = usersHistoryActivity2;
        this.f10536c = arrayList;
    }
}
