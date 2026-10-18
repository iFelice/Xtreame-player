package b7;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;
import pe.hf.black20.SeriesActivity;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0549t extends BaseAdapter {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f10413f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f10415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SharedPreferences f10416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f10417d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashMap f10418e;

    public C0549t(int i8, Context context, ArrayList arrayList) {
        this.f10414a = i8;
        if (i8 == 1) {
            this.f10418e = new HashMap();
            this.f10415b = context;
            this.f10417d = arrayList;
        } else if (i8 != 2) {
            this.f10418e = new HashMap();
            this.f10415b = context;
            this.f10417d = arrayList;
        } else {
            this.f10418e = new HashMap();
            this.f10415b = context;
            this.f10417d = arrayList;
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        switch (this.f10414a) {
            case 0:
                break;
            case 1:
                break;
        }
        return this.f10417d.size();
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
        int i9 = 0;
        switch (this.f10414a) {
            case 0:
                this.f10416c = this.f10415b.getSharedPreferences("pe.hf.black20", 0);
                View viewInflate = ((LayoutInflater) this.f10415b.getSystemService("layout_inflater")).inflate(R.layout.activity_cat_ch_item, viewGroup, false);
                this.f10418e = (HashMap) this.f10417d.get(i8);
                TextView textView = (TextView) viewInflate.findViewById(R.id.txt_cat_name_ch);
                textView.setText(((String) this.f10418e.get("category_name")).toUpperCase());
                if (this.f10416c.contains("show_cat_count") && this.f10416c.getString("show_cat_count", null).equals("yes")) {
                    if (U2.z("ORT_WHICH_CAT", "TV", "CATCHUP")) {
                        textView.setText(((String) this.f10418e.get("category_name")).toUpperCase());
                    } else {
                        while (i9 < ChannelListActivity.f28440v0.size()) {
                            if (((String) this.f10418e.get("category_id")).equals(((h7.b) ChannelListActivity.f28440v0.get(i9)).f25424a)) {
                                textView.setText(Html.fromHtml("<html><body>" + ((String) this.f10418e.get("category_name")).toUpperCase() + "<font color=#B6BFB9><small> (" + ((h7.b) ChannelListActivity.f28440v0.get(i9)).f25425b + ") </small></font></body><html>"));
                            }
                            i9++;
                        }
                    }
                }
                if (z4.q0.q().b("ORT_SELECTED_POS") == i8) {
                    textView.setTextColor(Color.parseColor("#FFC300"));
                } else {
                    textView.setTextColor(Color.parseColor("#ffffff"));
                }
                String str = CategoriesActivity.THEME;
                return viewInflate;
            case 1:
                View viewInflate2 = ((LayoutInflater) this.f10415b.getSystemService("layout_inflater")).inflate(R.layout.activity_episodes_list_item_n, viewGroup, false);
                this.f10418e = (HashMap) this.f10417d.get(i8);
                TextView textView2 = (TextView) viewInflate2.findViewById(R.id.txt_ep_title);
                TextView textView3 = (TextView) viewInflate2.findViewById(R.id.txt_ep_desc);
                TextView textView4 = (TextView) viewInflate2.findViewById(R.id.txt_ep_no);
                TextView textView5 = (TextView) viewInflate2.findViewById(R.id.txt_ep_season);
                TextView textView6 = (TextView) viewInflate2.findViewById(R.id.txt_watched);
                textView2.setText(((String) this.f10418e.get("title")).toUpperCase());
                if (this.f10418e.get("plot") == null || ((String) this.f10418e.get("plot")).equals(HttpUrl.FRAGMENT_ENCODE_SET) || ((String) this.f10418e.get("plot")).equals("null")) {
                    textView3.setVisibility(8);
                } else {
                    textView3.setText((CharSequence) this.f10418e.get("plot"));
                }
                if (((String) this.f10418e.get("episode_num")).length() == 0) {
                    textView4.setVisibility(8);
                } else {
                    textView4.setText(this.f10415b.getString(R.string.xc_episode_no) + ": " + ((String) this.f10418e.get("episode_num")));
                }
                textView5.setText(this.f10415b.getString(R.string.xc_season) + ": " + ((String) this.f10418e.get("season")));
                if (SeriesActivity.f29088y0.d0(SeriesActivity.f29080A0.f25478a + "-" + ((String) this.f10418e.get("id"))).equals("yes")) {
                    if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
                        textView6.setVisibility(0);
                        textView6.setText("Watched");
                        textView6.setBackground(this.f10415b.getDrawable(R.drawable.round_layout_with_shadow_light_green));
                    } else {
                        textView6.setVisibility(8);
                    }
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
                    c7.d dVar = SeriesActivity.f29089z0;
                    StringBuilder sb = new StringBuilder();
                    U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                    sb.append((String) this.f10418e.get("id"));
                    if (dVar.A0(sb.toString()) > 0) {
                        textView6.setVisibility(0);
                        textView6.setText("Continue Watching");
                        textView6.setBackground(this.f10415b.getDrawable(R.drawable.round_layout_with_shadow_light_red));
                    } else {
                        textView6.setVisibility(8);
                    }
                } else {
                    textView6.setVisibility(8);
                }
                SeriesActivity.f29081B0.setOnItemLongClickListener(new K(this, i9));
                SeriesActivity.f29081B0.setOnItemClickListener(new C0514f(this, 9));
                return viewInflate2;
            default:
                View viewInflate3 = ((LayoutInflater) this.f10415b.getSystemService("layout_inflater")).inflate(R.layout.activity_player_epg_list_item, viewGroup, false);
                this.f10418e = (HashMap) this.f10417d.get(i8);
                this.f10416c = this.f10415b.getSharedPreferences("pe.hf.black20", 0);
                TextView textView7 = (TextView) viewInflate3.findViewById(R.id.txt_epg_title);
                TextView textView8 = (TextView) viewInflate3.findViewById(R.id.txt_epg_time);
                TextView textView9 = (TextView) viewInflate3.findViewById(R.id.txt_epg_desc);
                textView7.setText((CharSequence) this.f10418e.get("title"));
                if (((String) this.f10418e.get("end")).equals(HttpUrl.FRAGMENT_ENCODE_SET) || ((String) this.f10418e.get("start")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    textView8.setText(((String) this.f10418e.get("start")) + " - " + ((String) this.f10418e.get("end")));
                } else if (U2.z("ORT_TIME_FORMAT", "12", "24")) {
                    textView8.setText(Methods.r(this.f10415b, (String) this.f10418e.get("start"), "yyyyMMddHHmmss") + " - " + Methods.r(this.f10415b, (String) this.f10418e.get("end"), "yyyyMMddHHmmss"));
                } else {
                    textView8.setText(Methods.q((String) this.f10418e.get("start")) + " - " + Methods.q((String) this.f10418e.get("end")));
                }
                textView9.setText((CharSequence) this.f10418e.get("description"));
                textView9.setSelected(true);
                return viewInflate3;
        }
    }
}
