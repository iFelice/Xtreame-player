package b7;

import Z6.C0470b;
import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class G extends BaseAdapter {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f10002l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f10003m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f10004n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f10006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f10007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final N2.a f10008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f10009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f10010f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f10011g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f10012h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public HashMap f10013i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f10014j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f10015k;

    public G(int i8, ChannelListActivity channelListActivity, ArrayList arrayList) {
        this.f10005a = i8;
        if (i8 == 1) {
            this.f10008d = new N2.a(300, true);
            this.f10013i = new HashMap();
            this.f10014j = new ArrayList();
            this.f10015k = "default";
            this.f10006b = channelListActivity;
            this.f10012h = arrayList;
            return;
        }
        if (i8 != 2) {
            this.f10013i = new HashMap();
            this.f10014j = new ArrayList();
            this.f10015k = "default";
            this.f10008d = new N2.a(300, true);
            this.f10006b = channelListActivity;
            this.f10012h = arrayList;
            return;
        }
        this.f10013i = new HashMap();
        this.f10014j = new ArrayList();
        this.f10015k = "default";
        this.f10008d = new N2.a(300, true);
        this.f10006b = channelListActivity;
        this.f10012h = arrayList;
    }

    public static String d(String str) {
        String string = HttpUrl.FRAGMENT_ENCODE_SET;
        for (int i8 = 0; i8 < EPGActivityXMLTV.f29273z0.length(); i8++) {
            try {
                JSONObject jSONObject = EPGActivityXMLTV.f29273z0.getJSONObject(i8);
                jSONObject.getString("name");
                if (jSONObject.getString("name").equals(str)) {
                    string = jSONObject.getString("stream_id");
                    f10002l = jSONObject.getString("direct_source");
                    f10003m = String.valueOf(i8);
                    f10004n = jSONObject.getString("name");
                }
            } catch (JSONException unused) {
            }
        }
        return string;
    }

    public final void a(TextView textView, String str, FrameLayout frameLayout, int i8) {
        textView.setTypeface(F.n.b(this.f10006b, R.font.quicksand_regular));
        textView.setPadding(0, 0, 0, 0);
        textView.setGravity(17);
        textView.setLines(EPGActivityXMLTV.f29266s0);
        if (z4.q0.q().a("ORT_isDemo", false)) {
            textView.setText("Program " + String.valueOf(i8));
        } else {
            textView.setText(str);
        }
        if (U2.z("bg_epg_update", "yes", "yes")) {
            textView.setTag(((d7.g) ((List) this.f10009e).get(i8)).f24677a + "::" + ((String) this.f10013i.get("name")) + "::" + ((d7.g) ((List) this.f10009e).get(i8)).f24679c);
            frameLayout.addView(textView);
            textView.setTextSize(14.0f);
            return;
        }
        textView.setTag(((String) ((HashMap) this.f10014j.get(i8)).get("start")) + "::" + ((String) this.f10013i.get("name")) + "::" + ((String) ((HashMap) this.f10014j.get(i8)).get("channel")));
        frameLayout.addView(textView);
        textView.setTextSize(14.0f);
    }

    public final void b(String str) {
        View viewInflate = LayoutInflater.from(this.f10006b).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this.f10006b).create();
        ((TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(this.f10006b.getString(R.string.xc_ok));
        button.setOnClickListener(new d7.b(alertDialogCreate, 1));
        alertDialogCreate.show();
    }

    public final void c() {
        if (EPGActivityXMLTV.f29251B0 != null) {
            EPGActivityXMLTV.f29250A0.removeCallbacks(EPGActivityXMLTV.f29251B0);
            EPGActivityXMLTV.f29250A0.removeCallbacksAndMessages(null);
        }
        EPGActivityXMLTV.f29250A0 = new Handler();
        EPGActivityXMLTV.f29251B0 = new com.google.android.gms.internal.cast.X(this, 27);
        EPGActivityXMLTV.f29250A0.postDelayed(EPGActivityXMLTV.f29251B0, 500L);
    }

    public final void e(int i8, int i9, int i10, int i11, FrameLayout frameLayout) {
        int i12 = 0;
        SharedPreferences sharedPreferences = this.f10006b.getSharedPreferences("pe.hf.black20", 0);
        int i13 = 0;
        for (int i14 = 0; i14 < EPGActivityXMLTV.f29259l0; i14++) {
            TextView textView = new TextView(this.f10006b);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i11, i10);
            layoutParams.width = i8 - (i9 * 2);
            layoutParams.height = EPGActivityXMLTV.f29263p0;
            layoutParams.setMargins(i13 + i9, i9, i9, i9);
            textView.setLayoutParams(layoutParams);
            i13 += i8;
            textView.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list));
            textView.setTextSize(10.0f);
            textView.setTypeface(F.n.b(this.f10006b, R.font.quicksand_regular));
            textView.setPadding(10, 0, 0, 0);
            textView.setGravity(17);
            textView.setText(R.string.no_program_data);
            textView.setTag("0::" + ((String) this.f10013i.get("name")));
            frameLayout.addView(textView);
            textView.setFocusable(true);
            textView.setOnClickListener(new d7.c(this, sharedPreferences, i12));
            textView.setLongClickable(true);
            textView.setOnLongClickListener(new d7.d(this, i12));
            textView.setOnFocusChangeListener(new d7.e(this, i12));
        }
    }

    public final void f(TextView textView) {
        SharedPreferences sharedPreferences = this.f10006b.getSharedPreferences("pe.hf.black20", 0);
        int i8 = 1;
        textView.setFocusable(true);
        textView.setOnClickListener(new d7.c(this, sharedPreferences, i8));
        textView.setLongClickable(true);
        textView.setOnLongClickListener(new d7.d(this, i8));
        textView.setOnFocusChangeListener(new d7.e(this, i8));
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        switch (this.f10005a) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return this.f10012h.size();
    }

    @Override // android.widget.Adapter
    public final /* bridge */ /* synthetic */ Object getItem(int i8) {
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i8) {
        return 0L;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:75:0x03bf A[Catch: ParseException -> 0x03dc, TRY_LEAVE, TryCatch #6 {ParseException -> 0x03dc, blocks: (B:16:0x00bb, B:17:0x00c3, B:19:0x00c9, B:21:0x00dd, B:22:0x00e5, B:25:0x00f3, B:27:0x00fd, B:29:0x0111, B:36:0x0159, B:44:0x016e, B:46:0x0174, B:48:0x01a1, B:50:0x01af, B:52:0x01b4, B:54:0x01f0, B:56:0x0206, B:55:0x01fa, B:59:0x021d, B:71:0x039a, B:73:0x03b5, B:60:0x0268, B:62:0x02ad, B:64:0x02c1, B:66:0x02c6, B:69:0x0311, B:70:0x035c, B:40:0x0163, B:75:0x03bf), top: B:131:0x00bb }] */
    @Override // android.widget.Adapter
    public final View getView(int i8, View view, ViewGroup viewGroup) {
        Date date;
        String str;
        String str2;
        Date date2;
        Date date3;
        int i9;
        Integer numValueOf = Integer.valueOf(R.drawable.logo);
        switch (this.f10005a) {
            case 0:
                this.f10009e = new c7.d(this.f10006b);
                this.f10011g = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(this.f10006b, 0));
                View viewInflate = ((LayoutInflater) this.f10006b.getSystemService("layout_inflater")).inflate(R.layout.activity_vod_item, viewGroup, false);
                this.f10013i = (HashMap) this.f10012h.get(i8);
                TextView textView = (TextView) viewInflate.findViewById(R.id.txt_channel_name_list);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_ch);
                textView.setText((CharSequence) this.f10013i.get("name"));
                ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.img_fav);
                int i10 = ((int) (((double) CategoriesActivity.f28379K0) * 0.75d)) / 6;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams.width = i10;
                layoutParams.height = (int) (((double) i10) * 1.5d);
                imageView.setLayoutParams(layoutParams);
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) textView.getLayoutParams();
                layoutParams2.width = i10;
                textView.setLayoutParams(layoutParams2);
                textView.setText(((String) this.f10013i.get("name")).toUpperCase());
                if (((String) this.f10013i.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10006b).m(numValueOf).g()).H(G2.c.b(this.f10008d)).F(imageView);
                } else {
                    String strReplaceAll = ((String) this.f10013i.get("stream_icon")).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                    if (strReplaceAll.length() < 10) {
                        ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10006b).m(numValueOf).g()).H(G2.c.b(this.f10008d)).F(imageView);
                    } else {
                        try {
                            ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10006b).n(strReplaceAll).g()).H(G2.c.b(this.f10008d)).f(R.drawable.logo)).F(imageView);
                            break;
                        } catch (Exception unused) {
                        }
                    }
                }
                if (((c7.d) this.f10009e).d0((String) this.f10013i.get("stream_id"), ((h7.i) this.f10011g).f25478a, "_vod").equals("yes")) {
                    imageView2.setVisibility(0);
                } else {
                    imageView2.setVisibility(8);
                }
                ChannelListActivity.f28441w0.setOnItemClickListener(new C0514f(this, 4));
                return viewInflate;
            case 1:
                this.f10009e = new c7.d(this.f10006b);
                this.f10011g = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(this.f10006b, 0));
                View viewInflate2 = ((LayoutInflater) this.f10006b.getSystemService("layout_inflater")).inflate(R.layout.activity_channel_item_tv, viewGroup, false);
                this.f10013i = (HashMap) this.f10012h.get(i8);
                TextView textView2 = (TextView) viewInflate2.findViewById(R.id.txt_channel_name_list);
                ImageView imageView3 = (ImageView) viewInflate2.findViewById(R.id.img_ch);
                ImageView imageView4 = (ImageView) viewInflate2.findViewById(R.id.img_fav);
                int i11 = ((int) ((((double) ChannelListActivity.f28438t0) * 0.75d) * ((double) ChannelListActivity.f28439u0))) / 6;
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) imageView3.getLayoutParams();
                layoutParams3.width = i11;
                layoutParams3.height = i11;
                imageView3.setLayoutParams(layoutParams3);
                textView2.setText(((String) this.f10013i.get("name")).toUpperCase());
                if (((String) this.f10013i.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10006b).m(numValueOf).g()).H(G2.c.b(this.f10008d)).F(imageView3);
                } else {
                    try {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10006b).n(((String) this.f10013i.get("stream_icon")).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)))).g()).H(G2.c.b(this.f10008d)).f(R.drawable.logo)).F(imageView3);
                        break;
                    } catch (Exception unused2) {
                    }
                }
                if (((c7.d) this.f10009e).d0((String) this.f10013i.get("stream_id"), ((h7.i) this.f10011g).f25478a, "_live").equals("yes")) {
                    imageView4.setVisibility(0);
                } else {
                    imageView4.setVisibility(8);
                }
                ChannelListActivity.f28441w0.setOnItemClickListener(new C0514f(this, 5));
                return viewInflate2;
            case 2:
                this.f10009e = new c7.d(this.f10006b);
                this.f10011g = A0.O.x("ORT_PROFILE", "Default (XC)", new c7.a(this.f10006b, 0));
                View viewInflate3 = ((LayoutInflater) this.f10006b.getSystemService("layout_inflater")).inflate(R.layout.activity_vod_item, viewGroup, false);
                this.f10013i = (HashMap) this.f10012h.get(i8);
                TextView textView3 = (TextView) viewInflate3.findViewById(R.id.txt_channel_name_list);
                ImageView imageView5 = (ImageView) viewInflate3.findViewById(R.id.img_ch);
                ImageView imageView6 = (ImageView) viewInflate3.findViewById(R.id.img_fav);
                int i12 = ((int) (((double) CategoriesActivity.f28379K0) * 0.75d)) / 6;
                FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) imageView5.getLayoutParams();
                layoutParams4.width = i12;
                layoutParams4.height = (int) (((double) i12) * 1.5d);
                imageView5.setLayoutParams(layoutParams4);
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) textView3.getLayoutParams();
                layoutParams5.width = i12;
                textView3.setLayoutParams(layoutParams5);
                textView3.setText(((String) this.f10013i.get("name")).toUpperCase());
                if (((String) this.f10013i.get("cover")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10006b).m(numValueOf).g()).H(G2.c.b(this.f10008d)).F(imageView5);
                } else {
                    try {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(this.f10006b).n(((String) this.f10013i.get("cover")).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET)).g()).H(G2.c.b(this.f10008d)).f(R.drawable.logo)).F(imageView5);
                        break;
                    } catch (Exception unused3) {
                    }
                }
                if (((c7.d) this.f10009e).d0((String) this.f10013i.get("series_id"), ((h7.i) this.f10011g).f25478a, "_series").equals("yes")) {
                    imageView6.setVisibility(0);
                } else {
                    imageView6.setVisibility(8);
                }
                ChannelListActivity.f28441w0.setOnItemClickListener(new C0514f(this, 6));
                return viewInflate3;
            default:
                View viewInflate4 = ((LayoutInflater) this.f10006b.getSystemService("layout_inflater")).inflate(R.layout.activity_epg_xmltv_item_pr, viewGroup, false);
                this.f10013i = (HashMap) this.f10012h.get(i8);
                FrameLayout frameLayout = (FrameLayout) viewInflate4.findViewById(R.id.layout_epg_holder_cu);
                String strG = Methods.G();
                this.f10006b.getSharedPreferences("pe.hf.black20", 0);
                int i13 = EPGActivityXMLTV.f29259l0;
                String str3 = "yyyyMMddHHmmss";
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
                try {
                    date = simpleDateFormat.parse(Methods.F());
                    break;
                } catch (ParseException unused4) {
                    date = null;
                }
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                calendar.add(11, i13);
                simpleDateFormat.format(calendar.getTime());
                c();
                if (((String) this.f10013i.get("epg_channel_id")).equals(HttpUrl.FRAGMENT_ENCODE_SET) || ((String) this.f10013i.get("epg_channel_id")).equals("null") || this.f10013i.get("epg_channel_id") == null) {
                    e(EPGActivityXMLTV.f29265r0, EPGActivityXMLTV.f29262o0, EPGActivityXMLTV.f29260m0, EPGActivityXMLTV.f29261n0, frameLayout);
                } else {
                    ((List) this.f10009e).clear();
                    try {
                        for (d7.g gVar : (List) this.f10011g) {
                            if (gVar.f24679c.equals(this.f10013i.get("epg_channel_id"))) {
                                ((List) this.f10009e).add(gVar);
                            }
                        }
                        if (((List) this.f10009e).size() > 0) {
                            int i14 = 0;
                            int i15 = 0;
                            boolean z7 = false;
                            int i16 = 0;
                            while (i14 < ((List) this.f10009e).size()) {
                                if (this.f10015k.equals(((d7.g) ((List) this.f10009e).get(i14)).f24677a)) {
                                    str = strG;
                                    str2 = str3;
                                } else {
                                    this.f10015k = ((d7.g) ((List) this.f10009e).get(i14)).f24677a;
                                    c();
                                    String strC = Methods.c(((d7.g) ((List) this.f10009e).get(i14)).f24677a);
                                    String strC2 = Methods.c(((d7.g) ((List) this.f10009e).get(i14)).f24678b);
                                    String[] strArrSplit = strC2.split(" ");
                                    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str3);
                                    try {
                                        date2 = simpleDateFormat2.parse(strArrSplit[0]);
                                        try {
                                            date3 = simpleDateFormat2.parse(strG);
                                        } catch (ParseException unused5) {
                                            date3 = null;
                                        }
                                    } catch (ParseException unused6) {
                                        date2 = null;
                                    }
                                    if ((date2.after(date3) ? "larger" : date2.before(date3) ? "smaller" : "d1d2").equals("larger")) {
                                        int i17 = i15 + 1;
                                        Date dateB = ((C0470b) this.f10007c).b(strC);
                                        Date dateB2 = ((C0470b) this.f10007c).b(strC2);
                                        TextView textView4 = new TextView(this.f10006b);
                                        int iH = Methods.h(dateB, dateB2);
                                        String str4 = ((d7.g) ((List) this.f10009e).get(i14)).f24680d;
                                        if (z7) {
                                            str = strG;
                                            i9 = i17;
                                            String str5 = ((d7.g) ((List) this.f10009e).get(i14)).f24680d;
                                            if (iH > 60) {
                                                int i18 = iH % 60;
                                                int i19 = 0;
                                                while (i19 < iH) {
                                                    TextView textView5 = new TextView(this.f10006b);
                                                    String str6 = str3;
                                                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(EPGActivityXMLTV.f29261n0, EPGActivityXMLTV.f29260m0);
                                                    layoutParams6.width = EPGActivityXMLTV.f29265r0 - (EPGActivityXMLTV.f29262o0 * 2);
                                                    layoutParams6.height = EPGActivityXMLTV.f29263p0;
                                                    int i20 = EPGActivityXMLTV.f29262o0;
                                                    layoutParams6.setMargins(i16 + i20, i20, i20, i20);
                                                    textView5.setLayoutParams(layoutParams6);
                                                    i16 += EPGActivityXMLTV.f29265r0;
                                                    textView5.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list));
                                                    a(textView5, str5, frameLayout, i14);
                                                    textView5.setFocusable(true);
                                                    f(textView5);
                                                    i19 += 60;
                                                    str3 = str6;
                                                }
                                                str2 = str3;
                                                if (i18 > 0) {
                                                    TextView textView6 = new TextView(this.f10006b);
                                                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(EPGActivityXMLTV.f29261n0, EPGActivityXMLTV.f29260m0);
                                                    layoutParams7.width = ((EPGActivityXMLTV.f29265r0 * i18) / 60) - (EPGActivityXMLTV.f29262o0 * 2);
                                                    layoutParams7.height = EPGActivityXMLTV.f29263p0;
                                                    int i21 = EPGActivityXMLTV.f29262o0;
                                                    layoutParams7.setMargins(i16 + i21, i21, i21, i21);
                                                    textView6.setLayoutParams(layoutParams7);
                                                    i16 += (i18 * EPGActivityXMLTV.f29265r0) / 60;
                                                    textView6.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list));
                                                    a(textView6, str5, frameLayout, i14);
                                                    textView6.setFocusable(true);
                                                    f(textView6);
                                                }
                                            } else {
                                                str2 = str3;
                                                FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(EPGActivityXMLTV.f29261n0, EPGActivityXMLTV.f29260m0);
                                                layoutParams8.width = ((EPGActivityXMLTV.f29265r0 * iH) / 60) - (EPGActivityXMLTV.f29262o0 * 2);
                                                layoutParams8.height = EPGActivityXMLTV.f29263p0;
                                                int i22 = EPGActivityXMLTV.f29262o0;
                                                layoutParams8.setMargins(i16 + i22, i22, i22, i22);
                                                textView4.setLayoutParams(layoutParams8);
                                                i16 += (iH * EPGActivityXMLTV.f29265r0) / 60;
                                                textView4.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list));
                                                a(textView4, str5, frameLayout, i14);
                                            }
                                        } else {
                                            int iH2 = Methods.h(((C0470b) this.f10007c).b(strG), dateB2);
                                            if (iH2 > 60) {
                                                int i23 = iH2 % 60;
                                                int i24 = 0;
                                                while (i24 < iH2) {
                                                    TextView textView7 = new TextView(this.f10006b);
                                                    String str7 = strG;
                                                    int i25 = i17;
                                                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(EPGActivityXMLTV.f29261n0, EPGActivityXMLTV.f29260m0);
                                                    layoutParams9.width = EPGActivityXMLTV.f29265r0 - (EPGActivityXMLTV.f29262o0 * 2);
                                                    layoutParams9.height = EPGActivityXMLTV.f29263p0;
                                                    int i26 = EPGActivityXMLTV.f29262o0;
                                                    layoutParams9.setMargins(i16 + i26, i26, i26, i26);
                                                    textView7.setLayoutParams(layoutParams9);
                                                    i16 += EPGActivityXMLTV.f29265r0;
                                                    textView7.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list_first));
                                                    if (i24 == 0) {
                                                        textView7.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list_first));
                                                    } else {
                                                        textView7.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list));
                                                    }
                                                    a(textView7, str4, frameLayout, i14);
                                                    textView7.setFocusable(true);
                                                    f(textView7);
                                                    i24 += 60;
                                                    strG = str7;
                                                    i17 = i25;
                                                }
                                                str = strG;
                                                i9 = i17;
                                                if (i23 > 0) {
                                                    TextView textView8 = new TextView(this.f10006b);
                                                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(EPGActivityXMLTV.f29261n0, EPGActivityXMLTV.f29260m0);
                                                    layoutParams10.width = ((EPGActivityXMLTV.f29265r0 * i23) / 60) - (EPGActivityXMLTV.f29262o0 * 2);
                                                    layoutParams10.height = EPGActivityXMLTV.f29263p0;
                                                    int i27 = EPGActivityXMLTV.f29262o0;
                                                    layoutParams10.setMargins(i16 + i27, i27, i27, i27);
                                                    textView8.setLayoutParams(layoutParams10);
                                                    i16 += (i23 * EPGActivityXMLTV.f29265r0) / 60;
                                                    textView8.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list));
                                                    a(textView8, str4, frameLayout, i14);
                                                    textView8.setFocusable(true);
                                                    f(textView8);
                                                }
                                            } else {
                                                str = strG;
                                                i9 = i17;
                                                FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(EPGActivityXMLTV.f29261n0, EPGActivityXMLTV.f29260m0);
                                                layoutParams11.width = ((EPGActivityXMLTV.f29265r0 * iH2) / 60) - (EPGActivityXMLTV.f29262o0 * 2);
                                                layoutParams11.height = EPGActivityXMLTV.f29263p0;
                                                int i28 = EPGActivityXMLTV.f29262o0;
                                                layoutParams11.setMargins(i16 + i28, i28, i28, i28);
                                                textView4.setLayoutParams(layoutParams11);
                                                textView4.setBackground(this.f10006b.getDrawable(R.drawable.btn_epg_list_first));
                                                i16 += (iH2 * EPGActivityXMLTV.f29265r0) / 60;
                                                a(textView4, str4, frameLayout, i14);
                                            }
                                            str2 = str3;
                                            z7 = true;
                                        }
                                        textView4.setTextSize(14.0f);
                                        textView4.setTypeface(F.n.b(this.f10006b, R.font.quicksand_regular));
                                        f(textView4);
                                        i15 = i9;
                                    } else {
                                        str = strG;
                                        str2 = str3;
                                    }
                                }
                                i14++;
                                str3 = str2;
                                strG = str;
                                break;
                            }
                            if (i15 == 0) {
                                e(EPGActivityXMLTV.f29265r0, EPGActivityXMLTV.f29262o0, EPGActivityXMLTV.f29260m0, EPGActivityXMLTV.f29261n0, frameLayout);
                            }
                        } else {
                            e(EPGActivityXMLTV.f29265r0, EPGActivityXMLTV.f29262o0, EPGActivityXMLTV.f29260m0, EPGActivityXMLTV.f29261n0, frameLayout);
                        }
                        break;
                    } catch (ParseException unused7) {
                    }
                }
                return viewInflate4;
        }
    }

    public G(EPGActivityXMLTV ePGActivityXMLTV, ArrayList arrayList, List list) {
        this.f10005a = 3;
        this.f10013i = new HashMap();
        this.f10007c = C0470b.a("yyyyMMddHHmmss");
        this.f10009e = new ArrayList();
        this.f10015k = HttpUrl.FRAGMENT_ENCODE_SET;
        new ArrayList();
        this.f10008d = null;
        this.f10006b = ePGActivityXMLTV;
        this.f10012h = arrayList;
        this.f10011g = list;
        Log.d("XCIPTV_TAG", "Data length --- " + String.valueOf(arrayList.size()));
    }
}
