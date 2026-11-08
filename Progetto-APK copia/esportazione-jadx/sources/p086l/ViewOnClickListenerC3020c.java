package p086l;

import M1.a;
import V4.D;
import W4.e;
import android.app.Activity;
import android.app.AlertDialog;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ListAdapter;
import b7.B1;
import b7.C0549t;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p071j.b;
import p079k.C3009a;
import p083k3.j;
import p190y4.k;
import pe.hf.black20.ProgramRemindersActivity;
import pe.hf.black20.R;
import pe.hf.black20.SeriesActivity;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.fastogt.updatecontent.OTRUpdateContents;
import pe.hf.black20.updatecontents.EZServerUpdateContents;
import pe.hf.black20.updatecontents.M3UUpdateContents;
import pe.hf.black20.updatecontents.XCUpdateContents;

/* JADX INFO: renamed from: l.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC3020c implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26222G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f26223H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f26224I;

    public /* synthetic */ ViewOnClickListenerC3020c(int i8, Object obj, Object obj2) {
        this.f26222G = i8;
        this.f26224I = obj;
        this.f26223H = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x010c  */
    /* JADX WARN: Code duplicated, block: B:56:0x0183  */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String string;
        String string2;
        int i8 = this.f26222G;
        int i9 = 0;
        Object obj = this.f26224I;
        Object obj2 = this.f26223H;
        switch (i8) {
            case 0:
                ((b) obj2).a();
                return;
            case 1:
                o1 o1Var = (o1) obj;
                Window.Callback callback = o1Var.f26333k;
                if (callback == null || !o1Var.f26334l) {
                    return;
                }
                callback.onMenuItemSelected(0, (C3009a) obj2);
                return;
            case 2:
                e eVar = (e) obj;
                D d6 = eVar.f7490G;
                if (d6 != null) {
                    ((a) d6).c();
                    throw null;
                }
                k.S("Dismissing fiam");
                eVar.a((Activity) obj2);
                eVar.getClass();
                eVar.f7490G = null;
                return;
            case 3:
                ((AlertDialog) obj2).dismiss();
                return;
            case 4:
                ((AlertDialog) obj2).dismiss();
                return;
            case 5:
                ((AlertDialog) obj2).dismiss();
                return;
            case 6:
                ((AlertDialog) obj2).dismiss();
                return;
            case 7:
                ((AlertDialog) obj2).dismiss();
                return;
            case 8:
                ((AlertDialog) obj2).dismiss();
                return;
            case 9:
                ((AlertDialog) obj2).dismiss();
                return;
            case 10:
                ((AlertDialog) obj2).dismiss();
                return;
            case 11:
                ((AlertDialog) obj2).dismiss();
                return;
            case 12:
                ((AlertDialog) obj2).dismiss();
                return;
            case 13:
                ((AlertDialog) obj2).dismiss();
                return;
            case 14:
                ((AlertDialog) obj2).dismiss();
                new j((ProgramRemindersActivity) obj).execute(new Void[0]);
                return;
            case 15:
                if (!U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
                    if (!U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
                        SeriesActivity seriesActivity = (SeriesActivity) obj;
                        seriesActivity.f29107X = Integer.parseInt(((Button) view).getText().toString().replaceAll("SEASON ", HttpUrl.FRAGMENT_ENCODE_SET));
                        new B1(seriesActivity, (Object) null).execute(new Void[0]);
                        return;
                    } else {
                        try {
                            JSONArray jSONArray = new JSONArray(view.getTag().toString());
                            c7.a aVar = SeriesActivity.f29087x0;
                            ((SeriesActivity) obj).b(jSONArray);
                            ((SeriesActivity) obj).f29122m0 = ((Button) obj2).getText().toString().replaceAll("SEASON ", HttpUrl.FRAGMENT_ENCODE_SET);
                            return;
                        } catch (JSONException unused) {
                            return;
                        }
                    }
                }
                SeriesActivity seriesActivity2 = (SeriesActivity) obj;
                if (seriesActivity2.f29129t0.equals("arr")) {
                    seriesActivity2.f29130u0 = Integer.parseInt(view.getTag().toString());
                } else {
                    seriesActivity2.f29125p0 = view.getTag().toString();
                }
                seriesActivity2.f29103T = null;
                seriesActivity2.f29103T = new ArrayList();
                SeriesActivity.f29081B0.setAdapter((ListAdapter) null);
                if (seriesActivity2.f29129t0.equals("arr")) {
                    SeriesActivity.f29082C0 = null;
                    SeriesActivity.f29082C0 = new JSONArray();
                    try {
                        SeriesActivity.f29082C0 = SeriesActivity.f29083D0.getJSONArray(seriesActivity2.f29130u0);
                        break;
                    } catch (JSONException unused2) {
                    }
                    while (i9 < SeriesActivity.f29082C0.length()) {
                        try {
                            JSONObject jSONObject = SeriesActivity.f29082C0.getJSONObject(i9);
                            try {
                                if (jSONObject.has("info")) {
                                    JSONObject jSONObject2 = jSONObject.getJSONObject("info");
                                    if (jSONObject2.has("plot")) {
                                        string2 = jSONObject2.getString("plot");
                                    } else {
                                        string2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                    }
                                } else {
                                    string2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                                break;
                            } catch (Exception unused3) {
                            }
                            HashMap map = new HashMap();
                            map.put("id", jSONObject.getString("id"));
                            map.put("episode_num", jSONObject.getString("episode_num"));
                            map.put("title", jSONObject.getString("title"));
                            map.put("container_extension", jSONObject.getString("container_extension"));
                            map.put("season", jSONObject.getString("season"));
                            map.put("plot", string2);
                            map.put("direct_source", jSONObject.getString("direct_source"));
                            seriesActivity2.f29103T.add(map);
                        } catch (JSONException unused4) {
                        }
                        i9++;
                    }
                } else {
                    while (i9 < SeriesActivity.f29082C0.length()) {
                        try {
                            JSONArray jSONArray2 = seriesActivity2.f29102S.getJSONArray(String.valueOf(seriesActivity2.f29125p0));
                            SeriesActivity.f29082C0 = jSONArray2;
                            JSONObject jSONObject3 = jSONArray2.getJSONObject(i9);
                            if (seriesActivity2.f29125p0.equals(jSONObject3.getString("season"))) {
                                try {
                                    if (jSONObject3.has("info")) {
                                        JSONObject jSONObject4 = jSONObject3.getJSONObject("info");
                                        if (jSONObject4.has("plot")) {
                                            string = jSONObject4.getString("plot");
                                        } else {
                                            string = HttpUrl.FRAGMENT_ENCODE_SET;
                                        }
                                    } else {
                                        string = HttpUrl.FRAGMENT_ENCODE_SET;
                                    }
                                    break;
                                } catch (Exception unused5) {
                                }
                                HashMap map2 = new HashMap();
                                map2.put("id", jSONObject3.getString("id"));
                                map2.put("episode_num", jSONObject3.getString("episode_num"));
                                map2.put("title", jSONObject3.getString("title"));
                                map2.put("container_extension", jSONObject3.getString("container_extension"));
                                map2.put("season", jSONObject3.getString("season"));
                                map2.put("plot", string);
                                map2.put("direct_source", jSONObject3.getString("direct_source"));
                                seriesActivity2.f29103T.add(map2);
                            }
                        } catch (JSONException unused6) {
                        }
                        i9++;
                    }
                }
                SeriesActivity.f29081B0.setAdapter((ListAdapter) null);
                SeriesActivity.f29081B0.setAdapter((ListAdapter) new C0549t(1, seriesActivity2, seriesActivity2.f29103T));
                SeriesActivity.f29081B0.requestFocus();
                return;
            case 16:
                if (!((String) obj2).equals("not_setup")) {
                    new j((UsersHistoryActivity) obj).execute(new Void[0]);
                    return;
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
                    new j((UsersHistoryActivity) obj).execute(new Void[0]);
                    return;
                } else {
                    UsersHistoryActivity usersHistoryActivity = (UsersHistoryActivity) obj;
                    UsersHistoryActivity.b(usersHistoryActivity, usersHistoryActivity.getString(R.string.account_is_not_setup));
                    return;
                }
            case 17:
                ((AlertDialog) obj2).dismiss();
                ((EPGActivityXMLTV) obj).finish();
                return;
            case 18:
                ((AlertDialog) obj2).dismiss();
                ((OTRUpdateContents) obj).finish();
                return;
            case 19:
                ((AlertDialog) obj2).dismiss();
                ((EZServerUpdateContents) obj).finish();
                return;
            case 20:
                ((AlertDialog) obj2).dismiss();
                ((M3UUpdateContents) obj).finish();
                return;
            default:
                ((AlertDialog) obj2).dismiss();
                ((XCUpdateContents) obj).finish();
                return;
        }
    }

    public ViewOnClickListenerC3020c(o1 o1Var) {
        this.f26222G = 1;
        this.f26224I = o1Var;
        this.f26223H = new C3009a(o1Var.f26323a.getContext(), o1Var.f26330h);
    }
}
