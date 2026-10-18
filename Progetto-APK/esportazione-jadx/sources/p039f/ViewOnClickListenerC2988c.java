package p039f;

import D1.C0152q;
import D1.Q;
import D1.S;
import Y.AbstractComponentCallbacksC0406s;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckedTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.leanback.widget.SearchBar;
import androidx.media3.ui.TrackSelectionView;
import androidx.preference.Preference;
import b7.A1;
import b7.AsyncTaskC0517g;
import b7.C0524i0;
import b7.C0530k0;
import b7.C0536m0;
import b7.C0550t0;
import b7.W0;
import b7.v1;
import com.google.protobuf.U2;
import e7.d;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p045f5.a;
import p079k.q;
import p083k3.j;
import p086l.C3022d;
import p086l.j1;
import p094m0.g0;
import p094m0.h0;
import p094m0.l0;
import p105n3.k;
import pe.hf.black20.CatchupActivity;
import pe.hf.black20.DeviceStatus;
import pe.hf.black20.LoginActivity;
import pe.hf.black20.MaintenanceActivity;
import pe.hf.black20.MovieInfoActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;
import pe.hf.black20.SeriesActivity;
import pe.hf.black20.SettingsMenuActivity;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.updatecontents.EZServerUpdateContents;
import pe.hf.black20.updatecontents.M3UUpdateContents;
import pe.hf.black20.util.Methods;
import z4.H;
import z4.q0;

/* JADX INFO: renamed from: f.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC2988c implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25035G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f25036H;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ViewOnClickListenerC2988c(TrackSelectionView trackSelectionView) {
        this(trackSelectionView, 3);
        this.f25035G = 3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message messageObtain;
        Message message;
        Message message2;
        Message message3;
        Date date;
        int i8 = this.f25035G;
        String strReplaceAll = HttpUrl.FRAGMENT_ENCODE_SET;
        Object obj = this.f25036H;
        switch (i8) {
            case 0:
                C2995j c2995j = (C2995j) obj;
                if (view == c2995j.f25083j && (message3 = c2995j.f25085l) != null) {
                    messageObtain = Message.obtain(message3);
                } else if (view != c2995j.f25087n || (message2 = c2995j.f25089p) == null) {
                    messageObtain = (view != c2995j.f25091r || (message = c2995j.f25093t) == null) ? null : Message.obtain(message);
                } else {
                    messageObtain = Message.obtain(message2);
                }
                if (messageObtain != null) {
                    messageObtain.sendToTarget();
                }
                c2995j.f25072J.obtainMessage(1, c2995j.f25075b).sendToTarget();
                break;
            case 1:
                j1 j1Var = ((Toolbar) obj).f8930u0;
                q qVar = j1Var == null ? null : j1Var.f26271H;
                if (qVar != null) {
                    qVar.collapseActionView();
                }
                break;
            case 2:
                SearchBar searchBar = (SearchBar) obj;
                if (!searchBar.f9211e0) {
                    searchBar.a();
                } else {
                    searchBar.b();
                }
                break;
            case 3:
                TrackSelectionView trackSelectionView = (TrackSelectionView) obj;
                CheckedTextView checkedTextView = trackSelectionView.f9524I;
                HashMap map = trackSelectionView.f9528M;
                if (view == checkedTextView) {
                    trackSelectionView.f9533R = true;
                    map.clear();
                } else if (view == trackSelectionView.f9525J) {
                    trackSelectionView.f9533R = false;
                    map.clear();
                } else {
                    trackSelectionView.f9533R = false;
                    Object tag = view.getTag();
                    tag.getClass();
                    Q q7 = (Q) tag;
                    l0 l0Var = q7.f2114a;
                    g0 g0Var = l0Var.f26949b;
                    h0 h0Var = (h0) map.get(g0Var);
                    int i9 = q7.f2115b;
                    if (h0Var == null) {
                        if (!trackSelectionView.f9530O && !map.isEmpty()) {
                            map.clear();
                        }
                        map.put(g0Var, new h0(g0Var, H.x(Integer.valueOf(i9))));
                    } else {
                        ArrayList arrayList = new ArrayList(h0Var.f26869b);
                        boolean zIsChecked = ((CheckedTextView) view).isChecked();
                        boolean z7 = trackSelectionView.f9529N && l0Var.f26950c;
                        boolean z8 = z7 || (trackSelectionView.f9530O && trackSelectionView.f9527L.size() > 1);
                        if (zIsChecked && z8) {
                            arrayList.remove(Integer.valueOf(i9));
                            if (arrayList.isEmpty()) {
                                map.remove(g0Var);
                            } else {
                                map.put(g0Var, new h0(g0Var, arrayList));
                            }
                        } else if (!zIsChecked) {
                            if (z7) {
                                arrayList.add(Integer.valueOf(i9));
                                map.put(g0Var, new h0(g0Var, arrayList));
                            } else {
                                map.put(g0Var, new h0(g0Var, H.x(Integer.valueOf(i9))));
                            }
                        }
                    }
                }
                trackSelectionView.b();
                S s7 = trackSelectionView.f9535T;
                if (s7 != null) {
                    boolean isDisabled = trackSelectionView.getIsDisabled();
                    Map<g0, h0> overrides = trackSelectionView.getOverrides();
                    d.a aVar = (d.a) s7;
                    aVar.f24890F0 = isDisabled;
                    aVar.f24891G0 = overrides;
                }
                break;
            case 4:
                ((Preference) obj).f(view);
                break;
            case 5:
                k kVar = (k) obj;
                kVar.f27531c0 = 2;
                kVar.f27510H.finish();
                break;
            case 6:
                String string = view.getTag().toString();
                CatchupActivity catchupActivity = (CatchupActivity) obj;
                catchupActivity.f28315W = (String) catchupActivity.f28321c0.get(Integer.parseInt(string));
                if (string.equals("0")) {
                    catchupActivity.f28316X = catchupActivity.e();
                } else {
                    StringBuilder sb = new StringBuilder();
                    String str = (String) catchupActivity.f28321c0.get(Integer.parseInt(string));
                    SharedPreferences sharedPreferences = Methods.f29416a;
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
                    try {
                        date = simpleDateFormat.parse(str);
                    } catch (ParseException unused) {
                        date = null;
                    }
                    sb.append(simpleDateFormat2.format(date));
                    sb.append(" 00:00:00");
                    catchupActivity.f28316X = sb.toString();
                }
                new AsyncTaskC0517g(catchupActivity, (Object) null).execute(new Void[0]);
                break;
            case 7:
                new j((DeviceStatus) obj).execute(new Void[0]);
                break;
            case 8:
                LoginActivity loginActivity = (LoginActivity) obj;
                if (!Methods.Q(loginActivity.f28575L)) {
                    Methods.l(loginActivity.f28575L, loginActivity.getString(R.string.please_check_internet_connection));
                } else {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(loginActivity.f28571J.getString("btn_signup", null)));
                    if (intent.resolveActivity(loginActivity.getPackageManager()) != null) {
                        loginActivity.startActivity(intent);
                    }
                }
                break;
            case 9:
                MaintenanceActivity maintenanceActivity = (MaintenanceActivity) obj;
                maintenanceActivity.startActivity(new Intent(maintenanceActivity, (Class<?>) SplashActivity.class));
                maintenanceActivity.finish();
                break;
            case 10:
                MovieInfoActivity movieInfoActivity = (MovieInfoActivity) obj;
                Intent intent2 = new Intent(movieInfoActivity.f28624G, (Class<?>) PlayStreamEPGActivity.class);
                q0.q().g("ORT_WHICH_CAT", "VOD");
                intent2.putExtra("isTrailer", "no");
                intent2.putExtra("streamurl", movieInfoActivity.f28640W);
                intent2.putExtra("name", movieInfoActivity.f28638U);
                intent2.putExtra("stream_id", movieInfoActivity.f28639V);
                intent2.putExtra("category_list", movieInfoActivity.f28641X);
                intent2.putExtra("program_desc", movieInfoActivity.f28643Z);
                intent2.putExtra("position", movieInfoActivity.f28642Y);
                intent2.putExtra("movie_poster_from_list", movieInfoActivity.f28653j0);
                movieInfoActivity.f28624G.startActivity(intent2);
                movieInfoActivity.finish();
                break;
            case 11:
                String strK = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
                String strK2 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
                q0.q().g("ORT_WHICH_CAT", "TV");
                C0530k0 c0530k0 = (C0530k0) obj;
                q0.q().g("ORT_CAT_NAME", ((C0550t0) c0530k0.f10335N).l().getString(R.string.xc_favorites));
                int i10 = Integer.parseInt(view.getTag().toString());
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = c0530k0.f10335N;
                Intent intent3 = new Intent(((C0550t0) abstractComponentCallbacksC0406s).l(), (Class<?>) PlayStreamEPGActivity.class);
                if (((String) ((HashMap) ((C0550t0) abstractComponentCallbacksC0406s).f10470f1.get(i10)).get("direct_source")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(Encrypt.a(q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                    sb2.append("/live/");
                    sb2.append(strK);
                    StringBuilder sbO = U2.o(U2.n(sb2, MqttTopic.TOPIC_LEVEL_SEPARATOR, strK2, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                    sbO.append((String) ((HashMap) ((C0550t0) abstractComponentCallbacksC0406s).f10470f1.get(i10)).get("stream_id"));
                    sbO.append(".");
                    intent3.putExtra("streamurl", U2.h(((C0550t0) abstractComponentCallbacksC0406s).f10422C0, "streamFormat", null, sbO));
                } else {
                    intent3.putExtra("streamurl", (String) ((HashMap) ((C0550t0) abstractComponentCallbacksC0406s).f10470f1.get(i10)).get("direct_source"));
                }
                intent3.putExtra("name", (String) ((HashMap) ((C0550t0) abstractComponentCallbacksC0406s).f10470f1.get(i10)).get("name"));
                intent3.putExtra("stream_id", (String) ((HashMap) ((C0550t0) abstractComponentCallbacksC0406s).f10470f1.get(i10)).get("stream_id"));
                intent3.putExtra("position", String.valueOf(i10));
                ((C0550t0) abstractComponentCallbacksC0406s).l().startActivity(intent3);
                break;
            case 12:
                C0550t0.U(((C0536m0) obj).f10352L, "cont", Integer.parseInt(view.getTag().toString()));
                break;
            case 13:
                C0550t0.U(((C0536m0) obj).f10352L, "fav", Integer.parseInt(view.getTag().toString()));
                break;
            case 14:
                C0550t0.U(((C0536m0) obj).f10352L, "new", Integer.parseInt(view.getTag().toString()));
                break;
            case 15:
                C0550t0.V(((C0524i0) obj).f10316L, "cont", Integer.parseInt(view.getTag().toString()));
                break;
            case 16:
                C0550t0.V(((C0524i0) obj).f10316L, "fav", Integer.parseInt(view.getTag().toString()));
                break;
            case 17:
                C0550t0.V(((C0524i0) obj).f10316L, "new", Integer.parseInt(view.getTag().toString()));
                break;
            case 18:
                if (!ORPlayerMainActivity.f28774F0) {
                    ((ORPlayerMainActivity) obj).y();
                } else {
                    ((ORPlayerMainActivity) obj).x();
                }
                break;
            case 19:
                if (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - hideMediaControlview------called-----.");
                    PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) obj;
                    playStreamEPGActivity.f28896Z0 = false;
                    Handler handler = new Handler(Looper.getMainLooper());
                    playStreamEPGActivity.f28882S0 = handler;
                    W0 w7 = new W0(playStreamEPGActivity, 4);
                    playStreamEPGActivity.f28890W0 = w7;
                    handler.postDelayed(w7, 10000L);
                    Runnable runnable = playStreamEPGActivity.f28837C1;
                    if (runnable != null) {
                        playStreamEPGActivity.f28970z1.removeCallbacks(runnable);
                        playStreamEPGActivity.f28970z1.removeCallbacksAndMessages(null);
                    }
                    Handler handler2 = new Handler(Looper.getMainLooper());
                    playStreamEPGActivity.f28970z1 = handler2;
                    int i11 = 8;
                    a aVar2 = new a(this, i11);
                    playStreamEPGActivity.f28837C1 = aVar2;
                    handler2.postDelayed(aVar2, 100L);
                    playStreamEPGActivity.S();
                    playStreamEPGActivity.f28921j0 = "1";
                    playStreamEPGActivity.f28945r0.setVisibility(0);
                    playStreamEPGActivity.f28957v0.animate().translationX(0.0f).alpha(1.0f).setDuration(600L).setListener(new C3022d(this, i11));
                } else {
                    PlayStreamEPGActivity playStreamEPGActivity2 = (PlayStreamEPGActivity) obj;
                    if (playStreamEPGActivity2.f28923j2.equals("no")) {
                        playStreamEPGActivity2.u();
                    }
                    playStreamEPGActivity2.W();
                    playStreamEPGActivity2.V();
                    playStreamEPGActivity2.finish();
                }
                break;
            case 20:
                String strK3 = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
                String strK4 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
                q0.q().g("ORT_WHICH_CAT", "TV");
                q0.q().g("ORT_CAT_NAME", "RECENT SEARCH");
                int i12 = Integer.parseInt(view.getTag().toString());
                C0530k0 c0530k1 = (C0530k0) obj;
                Intent intent4 = new Intent(((A1) c0530k1.f10335N).l(), (Class<?>) PlayStreamEPGActivity.class);
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = c0530k1.f10335N;
                if (((String) ((HashMap) ((A1) abstractComponentCallbacksC0406s2).f9953M0.get(i12)).get("direct_source")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(Encrypt.a(q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                    sb3.append("/live/");
                    sb3.append(strK3);
                    StringBuilder sbO2 = U2.o(U2.n(sb3, MqttTopic.TOPIC_LEVEL_SEPARATOR, strK4, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                    sbO2.append((String) ((HashMap) ((A1) abstractComponentCallbacksC0406s2).f9953M0.get(i12)).get("stream_id"));
                    sbO2.append(".");
                    intent4.putExtra("streamurl", U2.h(((A1) abstractComponentCallbacksC0406s2).f9943C0, "streamFormat", null, sbO2));
                } else {
                    intent4.putExtra("streamurl", (String) ((HashMap) ((A1) abstractComponentCallbacksC0406s2).f9953M0.get(i12)).get("direct_source"));
                }
                intent4.putExtra("name", (String) ((HashMap) ((A1) abstractComponentCallbacksC0406s2).f9953M0.get(i12)).get("name"));
                intent4.putExtra("stream_id", (String) ((HashMap) ((A1) abstractComponentCallbacksC0406s2).f9953M0.get(i12)).get("stream_id"));
                intent4.putExtra("position", String.valueOf(i12));
                ((A1) abstractComponentCallbacksC0406s2).l().startActivity(intent4);
                break;
            case 21:
                int i13 = Integer.parseInt(view.getTag().toString());
                A1 a8 = (A1) ((C0152q) obj).f2206M;
                String str2 = (String) ((HashMap) a8.f9955O0.get(i13)).get("name");
                String str3 = (String) ((HashMap) a8.f9955O0.get(i13)).get("genre");
                String str4 = (String) ((HashMap) a8.f9955O0.get(i13)).get("rating");
                String str5 = (String) ((HashMap) a8.f9955O0.get(i13)).get("cover");
                String str6 = (String) ((HashMap) a8.f9955O0.get(i13)).get("releaseDate");
                String str7 = (String) ((HashMap) a8.f9955O0.get(i13)).get("series_id");
                String str8 = (String) ((HashMap) a8.f9955O0.get(i13)).get("episode_run_time");
                q0.q().g("ORT_WHICH_CAT", "SERIES");
                Intent intent5 = new Intent(a8.l(), (Class<?>) SeriesActivity.class);
                intent5.putExtra("name", str2);
                intent5.putExtra("cover", str5);
                intent5.putExtra("series_id", str7);
                intent5.putExtra("episode_run_time", str8);
                intent5.putExtra("program_desc", a8.l().getString(R.string.xc_rating) + ": " + str4 + "  " + a8.l().getString(R.string.xc_genre) + ": " + str3 + " " + a8.l().getString(R.string.xc_date) + ": " + str6);
                a8.l().startActivity(intent5);
                break;
            case 22:
                int i14 = Integer.parseInt(view.getTag().toString());
                A1 a9 = ((v1) obj).f10512L;
                a9.f9964X0 = (String) ((HashMap) a9.f9954N0.get(i14)).get("stream_id");
                String strK5 = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
                String strK6 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
                String str9 = (String) ((HashMap) a9.f9954N0.get(i14)).get("name");
                String str10 = (String) ((HashMap) a9.f9954N0.get(i14)).get("stream_icon");
                a9.f9964X0 = (String) ((HashMap) a9.f9954N0.get(i14)).get("stream_id");
                String str11 = (String) ((HashMap) a9.f9954N0.get(i14)).get("direct_source");
                String str12 = (String) ((HashMap) a9.f9954N0.get(i14)).get("container_extension");
                String str13 = (!U2.z("ORT_VOD_PORTAL", "no", "no") ? q0.q().c("ORT_VOD_PORTAL", "no") : U2.k("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)) + "/movie/" + strK5 + MqttTopic.TOPIC_LEVEL_SEPARATOR + strK6 + MqttTopic.TOPIC_LEVEL_SEPARATOR;
                q0.q().g("ORT_WHICH_CAT", "VOD");
                Intent intent6 = new Intent(a9.l(), (Class<?>) MovieInfoActivity.class);
                intent6.putExtra("name", str9);
                intent6.putExtra("stream_id", a9.f9964X0);
                intent6.putExtra("stream_icon", str10);
                if (str11.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    intent6.putExtra("streamurl", U2.n(U2.o(str13), a9.f9964X0, ".", str12));
                } else {
                    intent6.putExtra("streamurl", str11);
                }
                if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
                    if (!str10.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                        strReplaceAll = str10.replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll("http://:", Encrypt.a(q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                    }
                    intent6.putExtra("poster", strReplaceAll);
                }
                intent6.putExtra("position", String.valueOf(i14));
                a9.l().startActivity(intent6);
                break;
            case 23:
                SettingsMenuActivity settingsMenuActivity = (SettingsMenuActivity) obj;
                settingsMenuActivity.sendBroadcast(new Intent(ORPlayerMainActivity.FINISH_ALERT));
                settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) UsersHistoryActivity.class));
                settingsMenuActivity.finish();
                break;
            case 24:
                EPGActivityXMLTV.f29268u0 = ((Button) view).getText().toString();
                EPGActivityXMLTV.f29269v0 = view.getTag().toString();
                q0.q().g("ORT_CAT_NAME", EPGActivityXMLTV.f29268u0);
                EPGActivityXMLTV ePGActivityXMLTV = (EPGActivityXMLTV) obj;
                if (!EPGActivityXMLTV.f29268u0.equals(ePGActivityXMLTV.f29274G.getString(R.string.xc_favorites))) {
                    EPGActivityXMLTV.a(ePGActivityXMLTV);
                } else {
                    if (!ePGActivityXMLTV.f29282O.v0(q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_live").equals("yes")) {
                        Methods.l(ePGActivityXMLTV.f29274G, "Favorites not found!");
                    } else {
                        EPGActivityXMLTV.a(ePGActivityXMLTV);
                    }
                }
                break;
            case 25:
                ((EZServerUpdateContents) obj).finish();
                break;
            default:
                ((M3UUpdateContents) obj).finish();
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC2988c(Object obj, int i8) {
        this.f25035G = i8;
        this.f25036H = obj;
    }
}
