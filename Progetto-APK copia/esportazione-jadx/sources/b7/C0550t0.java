package b7;

import Y.AbstractComponentCallbacksC0406s;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.C1448i6;
import com.google.protobuf.U2;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.MovieInfoActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.ORPlayerSpeedyLinearLayoutManager;
import pe.hf.black20.R;
import pe.hf.black20.SeriesActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.t0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public class C0550t0 extends AbstractComponentCallbacksC0406s implements g7.c {

    /* JADX INFO: renamed from: V1, reason: collision with root package name */
    public static final /* synthetic */ int f10419V1 = 0;

    /* JADX INFO: renamed from: A1, reason: collision with root package name */
    public TextView f10420A1;

    /* JADX INFO: renamed from: B1, reason: collision with root package name */
    public TextView f10421B1;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public SharedPreferences f10422C0;

    /* JADX INFO: renamed from: C1, reason: collision with root package name */
    public TextView f10423C1;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public c7.a f10424D0;

    /* JADX INFO: renamed from: D1, reason: collision with root package name */
    public TextView f10425D1;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public c7.d f10426E0;

    /* JADX INFO: renamed from: E1, reason: collision with root package name */
    public TextView f10427E1;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public h7.i f10428F0;

    /* JADX INFO: renamed from: F1, reason: collision with root package name */
    public TextView f10429F1;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public int f10430G0;

    /* JADX INFO: renamed from: G1, reason: collision with root package name */
    public TextView f10431G1;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public int f10432H0;

    /* JADX INFO: renamed from: H1, reason: collision with root package name */
    public Handler f10433H1;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public int f10434I0;

    /* JADX INFO: renamed from: I1, reason: collision with root package name */
    public RunnableC0506c0 f10435I1;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public int f10436J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public int f10438K0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public TextView f10440L0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public TextView f10442M0;

    /* JADX INFO: renamed from: M1, reason: collision with root package name */
    public JSONObject f10443M1;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public ProgressBar f10444N0;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public ImageView f10446O0;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public RunnableC0506c0 f10450Q0;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public ImageButton f10454S0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public ImageButton f10456T0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public ImageButton f10458U0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public ImageButton f10460V0;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public ImageButton f10461W0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public ImageButton f10462X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public ImageButton f10463Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public ArrayList f10464Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public RecyclerView f10465a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public ORPlayerSpeedyLinearLayoutManager f10466b1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public FrameLayout f10468d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public LinearLayout f10469e1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public ImageView f10480p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public TextView f10481q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public TextView f10482r1;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public TextView f10483s1;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public TextView f10484t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public TextView f10485u1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public TextView f10486v1;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public TextView f10487w1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public FrameLayout f10488x1;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public FrameLayout f10489y1;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public FrameLayout f10490z1;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public Handler f10448P0 = new Handler();

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public String f10452R0 = "12";

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public ArrayList f10467c1 = new ArrayList();

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public ArrayList f10470f1 = new ArrayList();

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public ArrayList f10471g1 = new ArrayList(new ArrayList());

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public ArrayList f10472h1 = new ArrayList(new ArrayList());

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final ArrayList f10473i1 = new ArrayList();

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public ArrayList f10474j1 = new ArrayList();

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final ArrayList f10475k1 = new ArrayList();

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public ArrayList f10476l1 = new ArrayList();

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final ArrayList f10477m1 = new ArrayList();

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final ArrayList f10478n1 = new ArrayList();

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final ArrayList f10479o1 = new ArrayList();

    /* JADX INFO: renamed from: J1, reason: collision with root package name */
    public String f10437J1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: K1, reason: collision with root package name */
    public String f10439K1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: L1, reason: collision with root package name */
    public String f10441L1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: N1, reason: collision with root package name */
    public final N2.a f10445N1 = new N2.a(300, true);

    /* JADX INFO: renamed from: O1, reason: collision with root package name */
    public String f10447O1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: P1, reason: collision with root package name */
    public String f10449P1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: Q1, reason: collision with root package name */
    public String f10451Q1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: R1, reason: collision with root package name */
    public String f10453R1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: S1, reason: collision with root package name */
    public String f10455S1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: T1, reason: collision with root package name */
    public String f10457T1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: U1, reason: collision with root package name */
    public String f10459U1 = HttpUrl.FRAGMENT_ENCODE_SET;

    public static void S(C0550t0 c0550t0, String str, int i8) {
        String strX;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        c0550t0.a0();
        ORPlayerMainActivity.f28775G0 = false;
        if (str.equals("fav")) {
            ArrayList arrayList = c0550t0.f10475k1;
            str2 = (String) ((HashMap) arrayList.get(i8)).get("name");
            str8 = (String) ((HashMap) arrayList.get(i8)).get("genre");
            str7 = (String) ((HashMap) arrayList.get(i8)).get("plot");
            str6 = (String) ((HashMap) arrayList.get(i8)).get("cast");
            str5 = (String) ((HashMap) arrayList.get(i8)).get("rating");
            str4 = (String) ((HashMap) arrayList.get(i8)).get("backdrop_path");
            str3 = (String) ((HashMap) arrayList.get(i8)).get("cover");
            strX = (String) ((HashMap) arrayList.get(i8)).get("releaseDate");
        } else if (str.equals("new")) {
            str2 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("name");
            str8 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("genre");
            str7 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("plot");
            str6 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("cast");
            str5 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("rating");
            str4 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("backdrop_path");
            str3 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("cover");
            strX = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("releaseDate");
        } else if (str.equals("cont")) {
            ArrayList arrayList2 = c0550t0.f10478n1;
            str2 = (String) ((HashMap) arrayList2.get(i8)).get("name");
            str8 = (String) ((HashMap) arrayList2.get(i8)).get("genre");
            str7 = (String) ((HashMap) arrayList2.get(i8)).get("plot");
            str6 = (String) ((HashMap) arrayList2.get(i8)).get("cast");
            str5 = (String) ((HashMap) arrayList2.get(i8)).get("rating");
            str4 = (String) ((HashMap) arrayList2.get(i8)).get("backdrop_path");
            str3 = (String) ((HashMap) arrayList2.get(i8)).get("cover");
            strX = (String) ((HashMap) arrayList2.get(i8)).get("releaseDate");
        } else {
            strX = HttpUrl.FRAGMENT_ENCODE_SET;
            str2 = strX;
            str3 = str2;
            str4 = str3;
            str5 = str4;
            str6 = str5;
            str7 = str6;
            str8 = str7;
        }
        c0550t0.f10481q1.setText(str2);
        c0550t0.f10484t1.setText(str8);
        c0550t0.f10485u1.setText(str7);
        c0550t0.f10487w1.setText(str6);
        if (str5.length() > 0) {
            int i9 = Integer.parseInt(str5.substring(0, 1));
            String strA = HttpUrl.FRAGMENT_ENCODE_SET;
            for (int i10 = 0; i10 < i9; i10++) {
                strA = U2.A(strA, "⭐");
                c0550t0.f10482r1.setText(strA + " (" + str5 + ")");
            }
        }
        if (strX.length() > 8) {
            strX = Methods.x(strX);
        }
        c0550t0.f10483s1.setText(strX);
        if (!z4.q0.q().a("ORT_isDemo", false)) {
            if (str4.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n(str3).b()).F(c0550t0.f10480p1);
                return;
            } else {
                ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n(str4).b()).F(c0550t0.f10480p1);
                return;
            }
        }
        ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n(str4).l(12, 6)).g()).F(c0550t0.f10480p1);
        c0550t0.f10481q1.setText("2131951762" + String.valueOf(i8));
        c0550t0.f10484t1.setText(str8);
        c0550t0.f10485u1.setText(R.string.dummyDescription);
        c0550t0.f10487w1.setText(R.string.dummyName);
    }

    public static void T(C0550t0 c0550t0, String str, int i8) {
        String str2;
        String str3;
        c0550t0.a0();
        ORPlayerMainActivity.f28775G0 = false;
        if (str.equals("fav")) {
            ArrayList arrayList = c0550t0.f10473i1;
            str2 = (String) ((HashMap) arrayList.get(i8)).get("name");
            str3 = (String) ((HashMap) arrayList.get(i8)).get("stream_icon");
            c0550t0.f10437J1 = (String) ((HashMap) arrayList.get(i8)).get("stream_id");
            c0550t0.f10441L1 = (String) ((HashMap) arrayList.get(i8)).get("custom_sid");
        } else if (str.equals("new")) {
            str2 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("name");
            str3 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("stream_icon");
            c0550t0.f10437J1 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("stream_id");
            c0550t0.f10441L1 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("custom_sid");
        } else if (str.equals("cont")) {
            ArrayList arrayList2 = c0550t0.f10477m1;
            str2 = (String) ((HashMap) arrayList2.get(i8)).get("name");
            str3 = (String) ((HashMap) arrayList2.get(i8)).get("stream_icon");
            c0550t0.f10437J1 = (String) ((HashMap) arrayList2.get(i8)).get("stream_id");
            c0550t0.f10441L1 = (String) ((HashMap) arrayList2.get(i8)).get("custom_sid");
        } else {
            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
            str3 = str2;
        }
        if (z4.q0.q().a("ORT_isDemo", false)) {
            c0550t0.f10481q1.setText("2131951757" + String.valueOf(i8));
            c0550t0.f10484t1.setText(R.string.dummyGenre);
            c0550t0.f10485u1.setText(R.string.dummyDescription);
            c0550t0.f10487w1.setText(R.string.dummyName);
            c0550t0.f10486v1.setText(R.string.dummyName);
            c0550t0.f10483s1.setText(R.string.dummyLength);
            c0550t0.f10482r1.setText(R.string.dummyRating);
            ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n(str3).b()).l(11, 6)).F(c0550t0.f10480p1);
            return;
        }
        c0550t0.f10481q1.setText(str2);
        if (!str3.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
            ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n(str3).b()).H(G2.c.b(c0550t0.f10445N1)).F(c0550t0.f10480p1);
        }
        RunnableC0506c0 runnableC0506c0 = c0550t0.f10435I1;
        if (runnableC0506c0 != null) {
            c0550t0.f10433H1.removeCallbacks(runnableC0506c0);
            c0550t0.f10433H1.removeCallbacksAndMessages(null);
        }
        Handler handler = new Handler();
        c0550t0.f10433H1 = handler;
        RunnableC0506c0 runnableC0506c1 = new RunnableC0506c0(c0550t0, 2);
        c0550t0.f10435I1 = runnableC0506c1;
        handler.postDelayed(runnableC0506c1, 1000L);
    }

    public static void U(C0550t0 c0550t0, String str, int i8) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        c0550t0.getClass();
        if (str.equals("fav")) {
            ArrayList arrayList = c0550t0.f10475k1;
            str2 = (String) ((HashMap) arrayList.get(i8)).get("name");
            str8 = (String) ((HashMap) arrayList.get(i8)).get("genre");
            str6 = (String) ((HashMap) arrayList.get(i8)).get("rating");
            str5 = (String) ((HashMap) arrayList.get(i8)).get("cover");
            str4 = (String) ((HashMap) arrayList.get(i8)).get("releaseDate");
            str7 = (String) ((HashMap) arrayList.get(i8)).get("series_id");
            str3 = (String) ((HashMap) arrayList.get(i8)).get("episode_run_time");
        } else if (str.equals("new")) {
            str2 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("name");
            str8 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("genre");
            str6 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("rating");
            str5 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("cover");
            str4 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("releaseDate");
            str7 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("series_id");
            str3 = (String) ((HashMap) c0550t0.f10476l1.get(i8)).get("episode_run_time");
        } else if (str.equals("cont")) {
            ArrayList arrayList2 = c0550t0.f10478n1;
            str2 = (String) ((HashMap) arrayList2.get(i8)).get("name");
            str8 = (String) ((HashMap) arrayList2.get(i8)).get("genre");
            str6 = (String) ((HashMap) arrayList2.get(i8)).get("rating");
            str5 = (String) ((HashMap) arrayList2.get(i8)).get("cover");
            str4 = (String) ((HashMap) arrayList2.get(i8)).get("releaseDate");
            str7 = (String) ((HashMap) arrayList2.get(i8)).get("series_id");
            str3 = (String) ((HashMap) arrayList2.get(i8)).get("episode_run_time");
        } else {
            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
            str3 = HttpUrl.FRAGMENT_ENCODE_SET;
            str4 = str3;
            str5 = str4;
            str6 = str5;
            str7 = str6;
            str8 = str7;
        }
        z4.q0.q().g("ORT_WHICH_CAT", "SERIES");
        Intent intent = new Intent(c0550t0.l(), (Class<?>) SeriesActivity.class);
        intent.putExtra("name", str2);
        intent.putExtra("cover", str5);
        intent.putExtra("series_id", str7);
        intent.putExtra("episode_run_time", str3);
        intent.putExtra("program_desc", c0550t0.l().getString(R.string.xc_rating) + ": " + str6 + "  " + c0550t0.l().getString(R.string.xc_genre) + ": " + str8 + " " + c0550t0.l().getString(R.string.xc_date) + ": " + str4);
        c0550t0.l().startActivity(intent);
    }

    public static void V(C0550t0 c0550t0, String str, int i8) {
        String str2;
        String str3;
        String str4;
        String str5;
        c0550t0.getClass();
        Q5.a aVarQ = z4.q0.q();
        String strReplaceAll = HttpUrl.FRAGMENT_ENCODE_SET;
        String strA = Encrypt.a(aVarQ.c("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET));
        String strK = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
        if (str.equals("fav")) {
            ArrayList arrayList = c0550t0.f10473i1;
            str2 = (String) ((HashMap) arrayList.get(i8)).get("name");
            str5 = (String) ((HashMap) arrayList.get(i8)).get("stream_icon");
            c0550t0.f10437J1 = (String) ((HashMap) arrayList.get(i8)).get("stream_id");
            str4 = (String) ((HashMap) arrayList.get(i8)).get("direct_source");
            str3 = (String) ((HashMap) arrayList.get(i8)).get("container_extension");
            c0550t0.f10441L1 = (String) ((HashMap) arrayList.get(i8)).get("custom_sid");
        } else if (str.equals("new")) {
            str2 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("name");
            str5 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("stream_icon");
            c0550t0.f10437J1 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("stream_id");
            str4 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("direct_source");
            str3 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("container_extension");
            c0550t0.f10441L1 = (String) ((HashMap) c0550t0.f10474j1.get(i8)).get("custom_sid");
        } else if (str.equals("cont")) {
            ArrayList arrayList2 = c0550t0.f10477m1;
            str2 = (String) ((HashMap) arrayList2.get(i8)).get("name");
            str5 = (String) ((HashMap) arrayList2.get(i8)).get("stream_icon");
            c0550t0.f10437J1 = (String) ((HashMap) arrayList2.get(i8)).get("stream_id");
            str4 = (String) ((HashMap) arrayList2.get(i8)).get("direct_source");
            str3 = (String) ((HashMap) arrayList2.get(i8)).get("container_extension");
            c0550t0.f10441L1 = (String) ((HashMap) arrayList2.get(i8)).get("custom_sid");
        } else {
            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
            str3 = str2;
            str4 = str3;
            str5 = str4;
        }
        String str6 = (!U2.z("ORT_VOD_PORTAL", "no", "no") ? z4.q0.q().c("ORT_VOD_PORTAL", "no") : U2.k("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)) + "/movie/" + strA + MqttTopic.TOPIC_LEVEL_SEPARATOR + strK + MqttTopic.TOPIC_LEVEL_SEPARATOR;
        z4.q0.q().g("ORT_WHICH_CAT", "VOD");
        Intent intent = new Intent(c0550t0.l(), (Class<?>) MovieInfoActivity.class);
        intent.putExtra("name", str2);
        intent.putExtra("stream_id", c0550t0.f10437J1);
        intent.putExtra("stream_icon", str5);
        if (str4.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
            intent.putExtra("streamurl", U2.n(U2.o(str6), c0550t0.f10437J1, ".", str3));
        } else {
            intent.putExtra("streamurl", str4);
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            if (!str5.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                strReplaceAll = str5.replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
            }
            intent.putExtra("poster", strReplaceAll);
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            intent.putExtra("packageid", c0550t0.f10441L1);
        }
        intent.putExtra("position", String.valueOf(i8));
        c0550t0.l().startActivity(intent);
    }

    public static void W(C0550t0 c0550t0, boolean z7) {
        c0550t0.getClass();
        if (Methods.P() || Methods.T(c0550t0.l())) {
            ValueAnimator valueAnimatorOfInt = z7 ? ValueAnimator.ofInt(c0550t0.f10489y1.getMeasuredHeight(), (c0550t0.f10430G0 / 2) - (c0550t0.f10434I0 * 50)) : ValueAnimator.ofInt(c0550t0.f10489y1.getMeasuredHeight(), 0);
            valueAnimatorOfInt.addUpdateListener(new C0509d0(c0550t0, 1));
            valueAnimatorOfInt.setDuration(500L);
            valueAnimatorOfInt.start();
        }
    }

    public static void X(C0550t0 c0550t0, boolean z7) {
        c0550t0.getClass();
        if (Methods.P() || Methods.T(c0550t0.l())) {
            ValueAnimator valueAnimatorOfInt = z7 ? ValueAnimator.ofInt(c0550t0.f10488x1.getMeasuredHeight(), (c0550t0.f10430G0 / 2) - (c0550t0.f10434I0 * 40)) : ValueAnimator.ofInt(c0550t0.f10488x1.getMeasuredHeight(), 0);
            valueAnimatorOfInt.addUpdateListener(new C0509d0(c0550t0, 0));
            valueAnimatorOfInt.setDuration(500L);
            valueAnimatorOfInt.start();
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void B() {
        this.f7961k0 = true;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void D() {
        this.f7961k0 = true;
        z4.q0.q().e("ORT_isORPlayerHomeFragmentVisible", false);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void E() {
        this.f7961k0 = true;
        z4.q0.q().e("ORT_isORPlayerHomeFragmentVisible", true);
        if (this.f10422C0.contains("xciptv_profile")) {
            z4.q0.q().g("ORT_PROFILE", this.f10422C0.getString("xciptv_profile", null));
        }
        this.f10428F0 = A0.O.x("ORT_PROFILE", "Default (XC)", this.f10424D0);
        z4.q0.q().g("ORT_PROFILE_ID", this.f10428F0.f25478a);
        if (ORPlayerMainActivity.f28777I0) {
            ORPlayerMainActivity.f28777I0 = false;
            this.f10444N0.setVisibility(0);
            this.f10446O0.setVisibility(0);
            new Thread(new RunnableC0506c0(this, 0)).start();
        }
        if (this.f10422C0.contains("tvvodseries_dl_time") && U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes") && z4.q0.q().b("ORT_PROCESS_STATUS") == 0) {
            if (!this.f10422C0.contains("epg_dl_time")) {
                Log.d("XCIPTV_TAG", "ORPlayerHomeFragment - EPG Need to download");
                l7.g.b(l());
                return;
            }
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                String str = simpleDateFormat.format(new Date());
                Date date = simpleDateFormat.parse(str);
                Date date2 = simpleDateFormat.parse(this.f10422C0.getString("epg_dl_time", null));
                Log.d("XCIPTV_TAG", "------------hr--" + String.valueOf(Methods.j(date2, date)));
                if (Methods.j(date2, date) > 12) {
                    Log.d("XCIPTV_TAG", "ORPlayerHomeFragment - EPG Need to download");
                    SharedPreferences.Editor editorEdit = this.f10422C0.edit();
                    editorEdit.putString("epg_dl_time", str);
                    editorEdit.apply();
                    editorEdit.commit();
                    l7.g.b(l());
                } else {
                    Log.d("XCIPTV_TAG", "ORPlayerHomeFragment - Skipping EPG Download. EPG Downloaded Less than 12 hrs ago.");
                }
            } catch (ParseException unused) {
            }
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void H() {
        this.f7961k0 = true;
        z4.q0.q().e("ORT_isORPlayerHomeFragmentVisible", false);
    }

    public final void Y() {
        Log.d("XCIPTV_TAG", "------calling GetMovieInfoOTR--------------------" + this.f10437J1);
        JSONObject jSONObject = new JSONObject();
        String strC = !U2.z("ORT_VOD_PORTAL", "no", "no") ? z4.q0.q().c("ORT_VOD_PORTAL", "no") : Encrypt.a(this.f10428F0.f25482e);
        String strA = Encrypt.a(this.f10428F0.f25480c);
        String strA2 = Encrypt.a(this.f10428F0.f25481d);
        StringBuilder sbL = p000a.r.l(strC, "/panel_pro/api/client/content/");
        sbL.append(this.f10441L1);
        sbL.append("/vod/");
        sbL.append(this.f10437J1);
        try {
            new C1448i6(0, this, this, "otrresponse", sbL.toString(), jSONObject, strA, strA2);
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "ORPlayerHomeFragment - OTR Panel Client Devices - VolleyGETStringRequest Error");
        }
    }

    public final void Z() {
        this.f10420A1.setText("Loading Program Details from TV Guide...");
        this.f10421B1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10423C1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10425D1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10427E1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10429F1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public final void a0() {
        this.f10481q1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10484t1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10485u1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10487w1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10486v1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10483s1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10482r1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        this.f10480p1.setImageResource(0);
    }

    public final void b0(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            String string = jSONObject2.getJSONObject("vod").getString("background_url");
            jSONObject2.getJSONObject("vod").getString("preview_icon");
            jSONObject2.getJSONObject("vod").getString("trailer_url");
            JSONArray jSONArray = jSONObject2.getJSONObject("vod").getJSONArray("directors");
            JSONArray jSONArray2 = jSONObject2.getJSONObject("vod").getJSONArray("cast");
            JSONArray jSONArray3 = jSONObject2.getJSONObject("vod").getJSONArray("genres");
            int length = jSONArray2.length();
            String str = HttpUrl.FRAGMENT_ENCODE_SET;
            String string2 = HttpUrl.FRAGMENT_ENCODE_SET;
            if (length > 0) {
                for (int i8 = 0; i8 < jSONArray2.length(); i8++) {
                    string2 = i8 == 0 ? jSONArray2.getString(i8) : string2 + ", " + jSONArray2.getString(i8);
                }
            }
            int length2 = jSONArray3.length();
            String string3 = HttpUrl.FRAGMENT_ENCODE_SET;
            if (length2 > 0) {
                for (int i9 = 0; i9 < jSONArray3.length(); i9++) {
                    string3 = i9 == 0 ? jSONArray3.getString(i9) : string3 + ", " + jSONArray3.getString(i9);
                }
            }
            String string4 = jSONArray.length() > 0 ? jSONArray.getString(0) : HttpUrl.FRAGMENT_ENCODE_SET;
            this.f10481q1.setText(jSONObject2.getJSONObject("vod").getString("display_name"));
            this.f10485u1.setText(jSONObject2.getJSONObject("vod").getString("description"));
            this.f10487w1.setText(string2);
            this.f10486v1.setText(string4);
            this.f10484t1.setText(string3);
            String string5 = jSONObject2.getJSONObject("vod").getString("user_score");
            if (string5.length() > 0) {
                try {
                    int i10 = Integer.parseInt(string5.substring(0, 1));
                    for (int i11 = 0; i11 < i10; i11++) {
                        str = str + "⭐";
                        this.f10482r1.setText(str + " (" + jSONObject2.getJSONObject("vod").getString("user_score") + ")");
                    }
                } catch (Exception unused) {
                    this.f10482r1.setText(jSONObject2.getJSONObject("vod").getString("user_score"));
                }
            } else {
                this.f10482r1.setText(jSONObject2.getJSONObject("vod").getString("user_score"));
            }
            this.f10483s1.setText(Methods.w(jSONObject2.getJSONObject("vod").getString("prime_date")));
            try {
                ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(l()).n(string).b()).H(G2.c.b(this.f10445N1)).f(R.drawable.bg2)).m(R.drawable.bg2)).F(this.f10480p1);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "Picasso Crashed");
            }
        } catch (JSONException unused3) {
        }
    }

    public final void c0(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            if (jSONObject2.has("access_token")) {
                String string = jSONObject2.getString("refresh_token");
                String string2 = jSONObject2.getString("access_token");
                SharedPreferences.Editor editorEdit = this.f10422C0.edit();
                editorEdit.putString("otr_refresh_token", Encrypt.b(string));
                editorEdit.putString("otr_access_token", Encrypt.b(string2));
                editorEdit.apply();
                Y();
            }
        } catch (JSONException unused) {
        }
    }

    @Override // g7.c
    public final void e(int i8, String str, String str2) {
        str2.getClass();
        if (str2.equals("otrresponse")) {
            Log.d("XCIPTV_TAG", "ORPlayerHomeFragment -- onFailureJsonFastoGT renewToken");
            if (i8 == 401) {
                S3.e.m(l(), this, this);
            }
        }
    }

    @Override // g7.c
    public final void g(JSONObject jSONObject, String str) {
        str.getClass();
        if (str.equals("renewToken")) {
            try {
                c0(jSONObject);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "ORPlayerHomeFragment -- renew Token");
            }
        } else if (str.equals("otrresponse")) {
            try {
                b0(jSONObject);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "ORPlayerHomeFragment -- loginCheckOTR");
            }
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i8 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_orplayer_home, viewGroup, false);
        this.f10422C0 = l().getSharedPreferences("pe.hf.black20", 0);
        this.f10426E0 = new c7.d(l());
        this.f10424D0 = new c7.a(l(), 0);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            j().getDisplay().getRealMetrics(displayMetrics);
        } else {
            j().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            j().getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        this.f10430G0 = displayMetrics.heightPixels;
        this.f10432H0 = displayMetrics.widthPixels;
        this.f10434I0 = displayMetrics.densityDpi / 160;
        int i9 = 3;
        if (Methods.P() || Methods.T(l())) {
            int i10 = (this.f10432H0 / 8) - (this.f10434I0 * 10);
            this.f10438K0 = (int) (((double) i10) * 1.5d);
            this.f10436J0 = i10;
        } else {
            int i11 = (this.f10430G0 / 3) - (this.f10434I0 * 10);
            this.f10438K0 = (int) (((double) i11) * 1.5d);
            this.f10436J0 = i11;
        }
        this.f10440L0 = (TextView) viewInflate.findViewById(R.id.txt_date_ch);
        this.f10442M0 = (TextView) viewInflate.findViewById(R.id.txt_time_ch);
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        this.f10444N0 = progressBar;
        progressBar.setVisibility(8);
        this.f10446O0 = (ImageView) viewInflate.findViewById(R.id.loading_bg_tv);
        this.f10454S0 = (ImageButton) viewInflate.findViewById(R.id.btn_multi);
        this.f10456T0 = (ImageButton) viewInflate.findViewById(R.id.btn_noti_ct);
        this.f10458U0 = (ImageButton) viewInflate.findViewById(R.id.btn_records);
        this.f10460V0 = (ImageButton) viewInflate.findViewById(R.id.btn_update);
        this.f10461W0 = (ImageButton) viewInflate.findViewById(R.id.btn_pr);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_epg);
        this.f10462X0 = imageButton;
        imageButton.setVisibility(8);
        this.f10463Y0 = (ImageButton) viewInflate.findViewById(R.id.btn_gs);
        this.f10468d1 = (FrameLayout) viewInflate.findViewById(R.id.layout_recycler_holder);
        this.f10488x1 = (FrameLayout) viewInflate.findViewById(R.id.layout_info_holder);
        this.f10490z1 = (FrameLayout) viewInflate.findViewById(R.id.layout_backdrop_holder);
        this.f10481q1 = (TextView) viewInflate.findViewById(R.id.txt_title);
        this.f10482r1 = (TextView) viewInflate.findViewById(R.id.txt_rating);
        this.f10483s1 = (TextView) viewInflate.findViewById(R.id.txt_duration_lenght);
        this.f10484t1 = (TextView) viewInflate.findViewById(R.id.txt_genre);
        this.f10485u1 = (TextView) viewInflate.findViewById(R.id.txt_plot);
        this.f10486v1 = (TextView) viewInflate.findViewById(R.id.txt_director);
        this.f10487w1 = (TextView) viewInflate.findViewById(R.id.txt_cast);
        this.f10480p1 = (ImageView) viewInflate.findViewById(R.id.img_backdrop);
        this.f10489y1 = (FrameLayout) viewInflate.findViewById(R.id.layout_epg_holder);
        this.f10420A1 = (TextView) viewInflate.findViewById(R.id.txt_now_program);
        this.f10421B1 = (TextView) viewInflate.findViewById(R.id.txt_now_time);
        this.f10423C1 = (TextView) viewInflate.findViewById(R.id.txt_now_desc);
        this.f10425D1 = (TextView) viewInflate.findViewById(R.id.txt_next_program);
        this.f10427E1 = (TextView) viewInflate.findViewById(R.id.txt_next_time);
        this.f10429F1 = (TextView) viewInflate.findViewById(R.id.txt_next_desc);
        this.f10431G1 = (TextView) viewInflate.findViewById(R.id.txt_channel_name);
        this.f10469e1 = (LinearLayout) viewInflate.findViewById(R.id.layout_vod_sereis_info_holder);
        this.f10465a1 = (RecyclerView) viewInflate.findViewById(R.id.recyclerview_main);
        l();
        int i12 = 1;
        ORPlayerSpeedyLinearLayoutManager oRPlayerSpeedyLinearLayoutManager = new ORPlayerSpeedyLinearLayoutManager(1);
        this.f10466b1 = oRPlayerSpeedyLinearLayoutManager;
        oRPlayerSpeedyLinearLayoutManager.r1(false);
        this.f10465a1.setLayoutManager(this.f10466b1);
        this.f10465a1.setFocusable(false);
        this.f10465a1.setNestedScrollingEnabled(false);
        this.f10465a1.setClipToPadding(false);
        this.f10465a1.setClipChildren(false);
        int i13 = 2;
        int i14 = (this.f10430G0 / 2) - (this.f10434I0 * 40);
        if (Methods.T(l()) || Methods.P()) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f10490z1.getLayoutParams();
            layoutParams.height = i14;
            layoutParams.width = (int) (((double) i14) * 1.77d);
            this.f10490z1.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f10469e1.getLayoutParams();
            layoutParams2.width = (this.f10434I0 * 40) + (this.f10432H0 / 2);
            layoutParams2.height = i14;
            this.f10469e1.setLayoutParams(layoutParams2);
        } else {
            this.f10465a1.setPadding(0, this.f10434I0 * 10, 0, 0);
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            this.f10462X0.setVisibility(0);
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            this.f10462X0.setVisibility(8);
        }
        if (this.f10422C0.contains("time_format") && this.f10422C0.getString("time_format", null).equals("24")) {
            this.f10452R0 = "24";
        }
        this.f10454S0.setOnClickListener(new ViewOnClickListenerC0503b0(this, i13));
        this.f10454S0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0500a0(this, 3));
        this.f10456T0.setOnClickListener(new ViewOnClickListenerC0503b0(this, i9));
        this.f10456T0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0500a0(this, 4));
        this.f10458U0.setOnClickListener(new ViewOnClickListenerC0503b0(this, 4));
        this.f10458U0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0500a0(this, 5));
        this.f10460V0.setOnClickListener(new ViewOnClickListenerC0503b0(this, 5));
        this.f10460V0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0500a0(this, 6));
        this.f10461W0.setOnClickListener(new ViewOnClickListenerC0503b0(this, 6));
        this.f10461W0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0500a0(this, 0));
        this.f10462X0.setOnClickListener(new ViewOnClickListenerC0503b0(this, i8));
        this.f10462X0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0500a0(this, 1));
        this.f10463Y0.setOnClickListener(new ViewOnClickListenerC0503b0(this, i12));
        this.f10463Y0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0500a0(this, 2));
        Handler handler = new Handler();
        this.f10448P0 = handler;
        RunnableC0506c0 runnableC0506c0 = new RunnableC0506c0(this, i12);
        this.f10450Q0 = runnableC0506c0;
        handler.postDelayed(runnableC0506c0, 100L);
        if (this.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("1")) {
            if (this.f10422C0.getString("btn_epg", null).equals("No")) {
                this.f10462X0.setVisibility(8);
            }
            if (this.f10422C0.getString("ms", null).equals("no")) {
                this.f10454S0.setVisibility(8);
            }
        } else if (this.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("2")) {
            if (this.f10422C0.getString("btn_epg2", null).equals("No")) {
                this.f10462X0.setVisibility(8);
            }
            if (this.f10422C0.getString("ms", null).equals("no")) {
                this.f10454S0.setVisibility(8);
            }
        } else if (this.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("3")) {
            if (this.f10422C0.getString("btn_epg3", null).equals("No")) {
                this.f10462X0.setVisibility(8);
            }
            if (this.f10422C0.getString("ms", null).equals("no")) {
                this.f10454S0.setVisibility(8);
            }
        } else if (this.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("4")) {
            if (this.f10422C0.getString("btn_epg4", null).equals("No")) {
                this.f10462X0.setVisibility(8);
            }
            if (this.f10422C0.getString("ms", null).equals("no")) {
                this.f10454S0.setVisibility(8);
            }
        } else if (this.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("5")) {
            if (this.f10422C0.getString("btn_epg5", null).equals("No")) {
                this.f10462X0.setVisibility(8);
            }
            if (this.f10422C0.getString("ms", null).equals("No")) {
                this.f10454S0.setVisibility(8);
            }
        }
        if (Config.f29414b.equals("yes")) {
            this.f10462X0.setVisibility(0);
            this.f10454S0.setVisibility(0);
        }
        return viewInflate;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void z() {
        this.f7961k0 = true;
        z4.q0.q().e("ORT_isORPlayerHomeFragmentVisible", false);
        RunnableC0506c0 runnableC0506c0 = this.f10450Q0;
        if (runnableC0506c0 != null) {
            this.f10448P0.removeCallbacks(runnableC0506c0);
        }
        RunnableC0506c0 runnableC0506c1 = this.f10435I1;
        if (runnableC0506c1 != null) {
            this.f10433H1.removeCallbacks(runnableC0506c1);
            this.f10433H1.removeCallbacksAndMessages(null);
        }
    }
}
