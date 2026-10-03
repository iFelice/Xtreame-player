package b7;

import android.text.Html;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collection;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class W0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10245G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ PlayStreamEPGActivity f10246H;

    public /* synthetic */ W0(PlayStreamEPGActivity playStreamEPGActivity, int i8) {
        this.f10245G = i8;
        this.f10246H = playStreamEPGActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = null;
        int i8 = this.f10245G;
        PlayStreamEPGActivity playStreamEPGActivity = this.f10246H;
        switch (i8) {
            case 0:
                playStreamEPGActivity.f28905d2.setVisibility(8);
                playStreamEPGActivity.f28940p1.setVisibility(8);
                playStreamEPGActivity.f28857J0.setVisibility(8);
                playStreamEPGActivity.f28962w2 = false;
                break;
            case 1:
                playStreamEPGActivity.f28851H0.setVisibility(8);
                playStreamEPGActivity.f28854I0.setVisibility(8);
                break;
            case 2:
                String str = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.getClass();
                try {
                    new ArrayList();
                    PlayStreamEPGActivity playStreamEPGActivity2 = playStreamEPGActivity.f28906e0;
                    ArrayList arrayListU = z4.q0.u(playStreamEPGActivity2, false, "all", playStreamEPGActivity.f28903c2, "0");
                    if (playStreamEPGActivity.f28968y2.equals(playStreamEPGActivity2.getString(R.string.xc_favorites))) {
                        playStreamEPGActivity.f28855I1 = 0;
                        new AsyncTaskC0522h1(playStreamEPGActivity, obj).execute(new Void[0]);
                    } else if (playStreamEPGActivity.f28968y2.toLowerCase().toLowerCase().equals("recent search")) {
                        playStreamEPGActivity.f28855I1 = 1;
                        new AsyncTaskC0522h1(playStreamEPGActivity, obj).execute(new Void[0]);
                    } else {
                        JSONArray jSONArray = new JSONArray((Collection) arrayListU);
                        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i9);
                            if (jSONObject.getString("stream_id").equals(playStreamEPGActivity.f28924k0)) {
                                String string = jSONObject.getString("category_id");
                                for (int i10 = 0; i10 < playStreamEPGActivity.f28942q0.length(); i10++) {
                                    if (string.equals(playStreamEPGActivity.f28942q0.getJSONObject(i10).getString("category_id"))) {
                                        playStreamEPGActivity.f28855I1 = i10;
                                        new AsyncTaskC0522h1(playStreamEPGActivity, obj).execute(new Void[0]);
                                    }
                                }
                            }
                        }
                    }
                } catch (JSONException unused) {
                    return;
                }
                break;
            case 3:
                if (!playStreamEPGActivity.f28971z2) {
                    StringBuilder sb = new StringBuilder();
                    U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                    sb.append(playStreamEPGActivity.f28924k0);
                    playStreamEPGActivity.f28835B2 = sb.toString();
                    if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO") && playStreamEPGActivity.f28859J2.g()) {
                        playStreamEPGActivity.f28832A2 = (int) playStreamEPGActivity.f28859J2.A();
                    }
                    if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC")) {
                        playStreamEPGActivity.f28832A2 = (int) playStreamEPGActivity.f28911f2.getLength();
                    }
                    playStreamEPGActivity.f28946r1.setText(Methods.a(playStreamEPGActivity.f28832A2 / 1000));
                    if (playStreamEPGActivity.f28832A2 > 1000) {
                        playStreamEPGActivity.f28971z2 = true;
                    }
                }
                String strC = z4.q0.q().c("ORT_WHICH_PLAYER", "EXO");
                strC.getClass();
                if (strC.equals("EXO")) {
                    if (playStreamEPGActivity.f28859J2.g()) {
                        long jV = playStreamEPGActivity.f28859J2.v();
                        int i11 = playStreamEPGActivity.f28832A2;
                        if (jV < i11) {
                            int iV = (int) (playStreamEPGActivity.f28859J2.v() / 1000);
                            playStreamEPGActivity.f28961w1.setMax(i11 / 1000);
                            if (playStreamEPGActivity.f28961w1.isFocused()) {
                                playStreamEPGActivity.f28961w1.setKeyProgressIncrement(30);
                            } else {
                                playStreamEPGActivity.f28961w1.incrementProgressBy(1);
                                if (playStreamEPGActivity.f28896Z0) {
                                    playStreamEPGActivity.f28961w1.setProgress(iV);
                                }
                            }
                            playStreamEPGActivity.f28943q1.setText(Methods.a((int) (playStreamEPGActivity.f28859J2.v() / 1000)));
                            if (playStreamEPGActivity.f28859J2.v() > playStreamEPGActivity.f28832A2 - 16000 && U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                                playStreamEPGActivity.f28940p1.setVisibility(8);
                                playStreamEPGActivity.f28956u2.setVisibility(0);
                                playStreamEPGActivity.f28953t2.setFocusable(true);
                                playStreamEPGActivity.f28953t2.requestFocus();
                                playStreamEPGActivity.f28866M0.E(playStreamEPGActivity.f28835B2);
                                playStreamEPGActivity.f28959v2 = true;
                                String str2 = String.format("%02d", Integer.valueOf((((int) (((long) playStreamEPGActivity.f28832A2) - playStreamEPGActivity.f28859J2.v())) / 1000) % 60));
                                playStreamEPGActivity.f28953t2.setText(Html.fromHtml("Play Next Episode <font color=\"#FFBF00\"><b>" + str2 + "</b></font>"));
                                if (playStreamEPGActivity.f28859J2.v() > playStreamEPGActivity.f28832A2 - 1000) {
                                    playStreamEPGActivity.G();
                                }
                            }
                        }
                    }
                } else if (strC.equals("VLC")) {
                    int i12 = playStreamEPGActivity.f28832A2 / 1000;
                    if (((int) playStreamEPGActivity.f28911f2.getTime()) < playStreamEPGActivity.f28832A2) {
                        playStreamEPGActivity.f28961w1.setMax(i12);
                        int time = (int) (playStreamEPGActivity.f28911f2.getTime() / 1000);
                        if (playStreamEPGActivity.f28961w1.isFocused()) {
                            playStreamEPGActivity.f28961w1.setKeyProgressIncrement(30);
                        } else {
                            playStreamEPGActivity.f28961w1.incrementProgressBy(1);
                            if (playStreamEPGActivity.f28896Z0) {
                                playStreamEPGActivity.f28961w1.setProgress(time);
                            }
                        }
                        playStreamEPGActivity.f28943q1.setText(Methods.a(time));
                        if (playStreamEPGActivity.f28911f2.getTime() > playStreamEPGActivity.f28832A2 - 16000 && U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                            playStreamEPGActivity.f28940p1.setVisibility(8);
                            playStreamEPGActivity.f28956u2.setVisibility(0);
                            playStreamEPGActivity.f28953t2.setFocusable(true);
                            playStreamEPGActivity.f28953t2.requestFocus();
                            StringBuilder sb2 = new StringBuilder();
                            U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb2, "-");
                            sb2.append(playStreamEPGActivity.f28924k0);
                            playStreamEPGActivity.f28866M0.E(sb2.toString());
                            playStreamEPGActivity.f28959v2 = true;
                            String str3 = String.format("%02d", Integer.valueOf(((playStreamEPGActivity.f28832A2 - ((int) playStreamEPGActivity.f28911f2.getTime())) / 1000) % 60));
                            playStreamEPGActivity.f28953t2.setText(Html.fromHtml("Play Next Episode <font color=\"#FFBF00\"><b>" + str3 + "</b></font>"));
                            if (playStreamEPGActivity.f28911f2.getTime() > playStreamEPGActivity.f28832A2 - 1000) {
                                playStreamEPGActivity.G();
                            }
                        }
                    }
                }
                playStreamEPGActivity.f28967y1.postDelayed(playStreamEPGActivity.f28834B1, 1000L);
                break;
            case 4:
                playStreamEPGActivity.f28896Z0 = true;
                break;
            case 5:
                String str4 = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.getClass();
                try {
                    new ArrayList();
                    JSONArray jSONArray2 = new JSONArray((Collection) z4.q0.u(playStreamEPGActivity.f28906e0, false, "all", playStreamEPGActivity.f28903c2, "0"));
                    for (int i13 = 0; i13 < jSONArray2.length(); i13++) {
                        JSONObject jSONObject2 = jSONArray2.getJSONObject(i13);
                        if (jSONObject2.getString("stream_id").equals(playStreamEPGActivity.f28924k0)) {
                            String string2 = jSONObject2.getString("category_id");
                            for (int i14 = 0; i14 < playStreamEPGActivity.f28942q0.length(); i14++) {
                                if (string2.equals(playStreamEPGActivity.f28942q0.getJSONObject(i14).getString("category_id"))) {
                                    playStreamEPGActivity.f28855I1 = i14;
                                    new AsyncTaskC0522h1(playStreamEPGActivity, obj).execute(new Void[0]);
                                }
                            }
                        }
                    }
                } catch (JSONException unused2) {
                    return;
                }
                break;
            case 6:
                String str5 = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.L();
                break;
            case 7:
                playStreamEPGActivity.f28848G0.setAlpha(0.0f);
                break;
            default:
                String str6 = PlayStreamEPGActivity.THEME;
                playStreamEPGActivity.M();
                break;
        }
    }
}
