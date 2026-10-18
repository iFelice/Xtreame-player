package b7;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.protobuf.U2;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class RunnableC0506c0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10275G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0550t0 f10276H;

    public /* synthetic */ RunnableC0506c0(C0550t0 c0550t0, int i8) {
        this.f10275G = i8;
        this.f10276H = c0550t0;
    }

    /* JADX WARN: Code duplicated, block: B:117:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:133:0x07a7  */
    /* JADX WARN: Code duplicated, block: B:76:0x0380 A[PHI: r3 r12
      0x0380: PHI (r3v39 boolean) = (r3v28 boolean), (r3v31 boolean), (r3v34 boolean), (r3v37 boolean), (r3v42 boolean) binds: [B:96:0x0458, B:91:0x0422, B:86:0x03ed, B:81:0x03b8, B:75:0x037e] A[DONT_GENERATE, DONT_INLINE]
      0x0380: PHI (r12v20 boolean) = (r12v6 boolean), (r12v10 boolean), (r12v14 boolean), (r12v18 boolean), (r12v24 boolean) binds: [B:96:0x0458, B:91:0x0422, B:86:0x03ed, B:81:0x03b8, B:75:0x037e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:77:0x0383 A[PHI: r3 r12
      0x0383: PHI (r3v38 boolean) = (r3v28 boolean), (r3v31 boolean), (r3v34 boolean), (r3v37 boolean), (r3v42 boolean) binds: [B:96:0x0458, B:91:0x0422, B:86:0x03ed, B:81:0x03b8, B:75:0x037e] A[DONT_GENERATE, DONT_INLINE]
      0x0383: PHI (r12v19 boolean) = (r12v6 boolean), (r12v10 boolean), (r12v14 boolean), (r12v18 boolean), (r12v24 boolean) binds: [B:96:0x0458, B:91:0x0422, B:86:0x03ed, B:81:0x03b8, B:75:0x037e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean zEquals;
        boolean z7;
        boolean zEquals2;
        ArrayList arrayList;
        String string;
        int i8 = this.f10275G;
        Object obj = null;
        C0550t0 c0550t0 = this.f10276H;
        switch (i8) {
            case 0:
                ArrayList arrayList2 = new ArrayList();
                c0550t0.f10464Z0 = arrayList2;
                arrayList2.clear();
                c0550t0.f10470f1.clear();
                c0550t0.f10471g1.clear();
                c0550t0.f10472h1.clear();
                c0550t0.f10474j1.clear();
                c0550t0.f10476l1.clear();
                c0550t0.f10467c1.clear();
                ArrayList arrayList3 = c0550t0.f10477m1;
                arrayList3.clear();
                ArrayList arrayList4 = c0550t0.f10478n1;
                arrayList4.clear();
                z4.q0.q().g("ORT_WHICH_CAT", "TV");
                if (c0550t0.f10422C0.contains("btn_noti") && c0550t0.f10422C0.getString("btn_noti", null).equals("no")) {
                    c0550t0.f10456T0.setVisibility(8);
                }
                if (c0550t0.f10422C0.contains("btn_rec") && c0550t0.f10422C0.getString("btn_rec", null).equals("no")) {
                    c0550t0.f10458U0.setVisibility(8);
                }
                if (c0550t0.f10422C0.contains("hide_recording") && c0550t0.f10422C0.getString("hide_recording", null).equals("yes")) {
                    c0550t0.f10458U0.setVisibility(8);
                }
                if (Config.f29414b.equals("yes")) {
                    c0550t0.f10470f1 = z4.q0.v(c0550t0.l(), "default");
                    c0550t0.f10471g1 = c0550t0.f10426E0.t0("ASC", z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                    c0550t0.f10472h1 = c0550t0.f10426E0.o0("ASC", z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                    c0550t0.f10474j1 = p190y4.k.M(c0550t0.l(), false, "all", "NEW", "00000", HttpUrl.FRAGMENT_ENCODE_SET);
                    c0550t0.f10476l1 = a7.b.e(c0550t0.l(), false, "all", "NEW", "0000", "0");
                    zEquals = true;
                    z7 = true;
                    zEquals2 = true;
                } else if (c0550t0.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("1")) {
                    zEquals = c0550t0.f10422C0.getString("btn_live", null).equals("Yes");
                    zEquals2 = c0550t0.f10422C0.getString("btn_vod", null).equals("Yes");
                    if (c0550t0.f10422C0.getString("btn_series", null).equals("Yes")) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                } else if (c0550t0.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("2")) {
                    zEquals = c0550t0.f10422C0.getString("btn_live2", null).equals("Yes");
                    zEquals2 = c0550t0.f10422C0.getString("btn_vod2", null).equals("Yes");
                    if (c0550t0.f10422C0.getString("btn_series2", null).equals("Yes")) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                } else if (c0550t0.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("3")) {
                    zEquals = c0550t0.f10422C0.getString("btn_live3", null).equals("Yes");
                    zEquals2 = c0550t0.f10422C0.getString("btn_vod3", null).equals("Yes");
                    if (c0550t0.f10422C0.getString("btn_series3", null).equals("Yes")) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                } else if (c0550t0.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("4")) {
                    zEquals = c0550t0.f10422C0.getString("btn_live4", null).equals("Yes");
                    zEquals2 = c0550t0.f10422C0.getString("btn_vod4", null).equals("Yes");
                    if (c0550t0.f10422C0.getString("btn_series4", null).equals("Yes")) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                } else if (c0550t0.f10422C0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("5")) {
                    zEquals = c0550t0.f10422C0.getString("btn_live5", null).equals("Yes");
                    zEquals2 = c0550t0.f10422C0.getString("btn_vod5", null).equals("Yes");
                    if (c0550t0.f10422C0.getString("btn_series5", null).equals("Yes")) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                } else {
                    zEquals = false;
                    z7 = false;
                    zEquals2 = false;
                }
                if (zEquals) {
                    c0550t0.f10470f1 = z4.q0.v(c0550t0.l(), "default");
                }
                if (zEquals2) {
                    c0550t0.f10471g1 = c0550t0.f10426E0.t0("ASC", z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                    c0550t0.f10474j1 = p190y4.k.M(c0550t0.l(), false, "all", "NEW", "00000", HttpUrl.FRAGMENT_ENCODE_SET);
                }
                if (z7) {
                    c0550t0.f10472h1 = c0550t0.f10426E0.o0("ASC", z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                    c0550t0.f10476l1 = a7.b.e(c0550t0.l(), false, "all", "NEW", "00000", "0");
                }
                ArrayList arrayListE0 = c0550t0.f10426E0.E0();
                c0550t0.f10467c1 = arrayListE0;
                if (zEquals2 && arrayListE0.size() > 0) {
                    int i9 = 0;
                    while (i9 < c0550t0.f10467c1.size()) {
                        String[] strArrSplit = ((h7.g) c0550t0.f10467c1.get(i9)).f25460a.split("-");
                        boolean z8 = zEquals;
                        if (z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET).equals(strArrSplit[0])) {
                            new ArrayList().clear();
                            ArrayList arrayListL = p190y4.k.L(c0550t0.l(), strArrSplit[1]);
                            if (arrayListL.size() > 0) {
                                HashMap map = new HashMap();
                                map.put("num", (String) ((HashMap) arrayListL.get(0)).get("num"));
                                map.put("name", (String) ((HashMap) arrayListL.get(0)).get("name"));
                                map.put("stream_type", (String) ((HashMap) arrayListL.get(0)).get("stream_type"));
                                map.put("stream_id", (String) ((HashMap) arrayListL.get(0)).get("stream_id"));
                                map.put("stream_icon", (String) ((HashMap) arrayListL.get(0)).get("stream_icon"));
                                map.put("rating", (String) ((HashMap) arrayListL.get(0)).get("rating"));
                                map.put("rating_5based", (String) ((HashMap) arrayListL.get(0)).get("rating_5based"));
                                map.put("added", (String) ((HashMap) arrayListL.get(0)).get("added"));
                                map.put("category_id", (String) ((HashMap) arrayListL.get(0)).get("category_id"));
                                map.put("container_extension", (String) ((HashMap) arrayListL.get(0)).get("container_extension"));
                                map.put("custom_sid", (String) ((HashMap) arrayListL.get(0)).get("custom_sid"));
                                map.put("direct_source", (String) ((HashMap) arrayListL.get(0)).get("direct_source"));
                                arrayList3.add(map);
                            }
                        }
                        i9++;
                        zEquals = z8;
                        arrayList4 = arrayList4;
                    }
                }
                ArrayList arrayList5 = arrayList4;
                boolean z9 = zEquals;
                if (z7 && c0550t0.f10467c1.size() > 0) {
                    int i10 = 0;
                    while (i10 < c0550t0.f10467c1.size()) {
                        if (z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET).equals(((h7.g) c0550t0.f10467c1.get(i10)).f25460a.split("-")[0])) {
                            if (((h7.g) c0550t0.f10467c1.get(i10)).f25461b.contains(z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "-")) {
                                String strReplaceAll = ((h7.g) c0550t0.f10467c1.get(i10)).f25461b.replaceAll(z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "-", HttpUrl.FRAGMENT_ENCODE_SET);
                                new ArrayList().clear();
                                ArrayList arrayListD = a7.b.d(c0550t0.l(), strReplaceAll);
                                if (arrayListD.size() > 0) {
                                    HashMap map2 = new HashMap();
                                    map2.put("num", (String) ((HashMap) arrayListD.get(0)).get("num"));
                                    map2.put("name", (String) ((HashMap) arrayListD.get(0)).get("name"));
                                    map2.put("series_id", (String) ((HashMap) arrayListD.get(0)).get("series_id"));
                                    map2.put("cover", (String) ((HashMap) arrayListD.get(0)).get("cover"));
                                    map2.put("plot", (String) ((HashMap) arrayListD.get(0)).get("plot"));
                                    map2.put("cast", (String) ((HashMap) arrayListD.get(0)).get("cast"));
                                    map2.put("director", (String) ((HashMap) arrayListD.get(0)).get("director"));
                                    map2.put("genre", (String) ((HashMap) arrayListD.get(0)).get("genre"));
                                    map2.put("releaseDate", (String) ((HashMap) arrayListD.get(0)).get("releaseDate"));
                                    map2.put("last_modified", (String) ((HashMap) arrayListD.get(0)).get("last_modified"));
                                    map2.put("rating", (String) ((HashMap) arrayListD.get(0)).get("rating"));
                                    map2.put("rating_5based", (String) ((HashMap) arrayListD.get(0)).get("rating_5based"));
                                    map2.put("backdrop_path", (String) ((HashMap) arrayListD.get(0)).get("backdrop_path"));
                                    map2.put("youtube_trailer", (String) ((HashMap) arrayListD.get(0)).get("youtube_trailer"));
                                    map2.put("episode_run_time", (String) ((HashMap) arrayListD.get(0)).get("episode_run_time"));
                                    map2.put("category_id", (String) ((HashMap) arrayListD.get(0)).get("category_id"));
                                    arrayList = arrayList5;
                                    arrayList.add(map2);
                                } else {
                                    arrayList = arrayList5;
                                }
                            } else {
                                arrayList = arrayList5;
                            }
                        } else {
                            arrayList = arrayList5;
                        }
                        i10++;
                        arrayList5 = arrayList;
                    }
                }
                ArrayList arrayList6 = arrayList5;
                if (c0550t0.f10470f1.size() > 0) {
                    HashMap mapM = p000a.r.m("category_name", "MY FAVORITE TV CHANNELS", "category_id", "0000001");
                    mapM.put("parent_id", "0");
                    c0550t0.f10464Z0.add(mapM);
                    new ArrayList().clear();
                }
                if (c0550t0.f10471g1.size() > 0) {
                    HashMap mapM2 = p000a.r.m("category_name", "MY MOVIES", "category_id", "0000002");
                    mapM2.put("parent_id", "0");
                    c0550t0.f10464Z0.add(mapM2);
                }
                if (c0550t0.f10472h1.size() > 0) {
                    HashMap mapM3 = p000a.r.m("category_name", "MY TV SHOWS", "category_id", "0000003");
                    mapM3.put("parent_id", "0");
                    c0550t0.f10464Z0.add(mapM3);
                }
                if (c0550t0.f10474j1.size() > 0) {
                    HashMap mapM4 = p000a.r.m("category_name", "NEW MOVIES", "category_id", "0000004");
                    mapM4.put("parent_id", "0");
                    c0550t0.f10464Z0.add(mapM4);
                }
                if (c0550t0.f10476l1.size() > 0) {
                    HashMap mapM5 = p000a.r.m("category_name", "NEW TV SHOWS", "category_id", "0000005");
                    mapM5.put("parent_id", "0");
                    c0550t0.f10464Z0.add(mapM5);
                }
                if (arrayList3.size() > 0) {
                    HashMap mapM6 = p000a.r.m("category_name", "CONTINUE WATCHING MOVIES", "category_id", "0000006");
                    mapM6.put("parent_id", "0");
                    c0550t0.f10464Z0.add(mapM6);
                }
                if (arrayList6.size() > 0) {
                    HashMap mapM7 = p000a.r.m("category_name", "CONTINUE WATCHING TV SHOWS", "category_id", "0000007");
                    mapM7.put("parent_id", "0");
                    c0550t0.f10464Z0.add(mapM7);
                }
                if (c0550t0.j() != null) {
                    if (z9 && c0550t0.f10474j1.size() == 0 && c0550t0.f10476l1.size() == 0 && c0550t0.f10470f1.size() == 0) {
                        c0550t0.l().sendBroadcast(new Intent(ORPlayerMainActivity.LOAD_TV_FRAGMENT));
                    }
                    c0550t0.j().runOnUiThread(new com.google.android.gms.internal.cast.X(this, 16));
                }
                break;
            case 1:
                c0550t0.f10448P0.postDelayed(c0550t0.f10450Q0, 1000L);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEEE, d MMM yyyy");
                SimpleDateFormat simpleDateFormat2 = c0550t0.f10452R0.equals("24") ? new SimpleDateFormat("HH:mm:ss") : new SimpleDateFormat("hh:mm:ss aaa");
                c0550t0.f10440L0.setText(simpleDateFormat.format(new Date()));
                c0550t0.f10442M0.setText(simpleDateFormat2.format(new Date()));
                break;
            case 2:
                Log.d("XCIPTV_TAG", "Loding movie info");
                if (z4.q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("xtreamcodes")) {
                    new AsyncTaskC0515f0(c0550t0, obj).execute(new Void[0]);
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
                    int i11 = C0550t0.f10419V1;
                    c0550t0.Y();
                } else {
                    new AsyncTaskC0515f0(c0550t0, obj).execute(new Void[0]);
                }
                break;
            default:
                if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes") || U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
                    Log.d("XCIPTV_TAG", "Loding EPG XC");
                    int i12 = C0550t0.f10419V1;
                    c0550t0.getClass();
                    Methods.F();
                    p133r0.b bVar = new p133r0.b(c0550t0.l(), 1);
                    String strA0 = bVar.a0(c0550t0.f10439K1);
                    ArrayList arrayList7 = new ArrayList();
                    if (strA0.length() > 4) {
                        String[] strArrN = Methods.n(10, strA0);
                        arrayList7.clear();
                        arrayList7 = bVar.N(strArrN[0], strArrN[1], c0550t0.f10439K1);
                    }
                    if (arrayList7.size() > 0) {
                        int i13 = 0;
                        for (int i14 = 0; i14 < arrayList7.size(); i14++) {
                            c0550t0.l();
                            String strC = Methods.c(((d7.g) arrayList7.get(i14)).f24677a);
                            c0550t0.l();
                            String strC2 = Methods.c(((d7.g) arrayList7.get(i14)).f24678b);
                            if (i13 <= 2) {
                                if (i13 == 0) {
                                    c0550t0.f10420A1.setText(((d7.g) arrayList7.get(i14)).f24680d);
                                    c0550t0.f10423C1.setText(((d7.g) arrayList7.get(i14)).f24681e);
                                    c0550t0.f10421B1.setText(z4.q0.q().c("ORT_TIME_FORMAT", "12").equals("24") ? Methods.r(c0550t0.l(), strC, "yyyyMMddHHmmss") + " - " + Methods.r(c0550t0.l(), strC2, "yyyyMMddHHmmss") : Methods.q(strC) + " - " + Methods.q(strC2));
                                }
                                if (i13 == 1) {
                                    c0550t0.f10425D1.setText(((d7.g) arrayList7.get(i14)).f24680d);
                                    c0550t0.f10429F1.setText(((d7.g) arrayList7.get(i14)).f24681e);
                                    if (z4.q0.q().c("ORT_TIME_FORMAT", "12").equals("24")) {
                                        StringBuilder sb = new StringBuilder();
                                        Context contextL = c0550t0.l();
                                        c0550t0.l();
                                        sb.append(Methods.r(contextL, Methods.c(((d7.g) arrayList7.get(i14)).f24677a), "yyyyMMddHHmmss"));
                                        sb.append(" - ");
                                        Context contextL2 = c0550t0.l();
                                        c0550t0.l();
                                        sb.append(Methods.r(contextL2, Methods.c(((d7.g) arrayList7.get(i14)).f24678b), "yyyyMMddHHmmss"));
                                        string = sb.toString();
                                    } else {
                                        StringBuilder sb2 = new StringBuilder();
                                        c0550t0.l();
                                        sb2.append(Methods.q(Methods.c(((d7.g) arrayList7.get(i14)).f24677a)));
                                        sb2.append(" - ");
                                        c0550t0.l();
                                        sb2.append(Methods.q(Methods.c(((d7.g) arrayList7.get(i14)).f24678b)));
                                        string = sb2.toString();
                                    }
                                    c0550t0.f10427E1.setText(string);
                                }
                                i13++;
                            } else if (i13 != 0) {
                            }
                        }
                        if (i13 != 0) {
                        }
                    }
                    c0550t0.Z();
                    c0550t0.f10420A1.setText("TV Guide not available for this Channel.");
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
                    Log.d("XCIPTV_TAG", "Loding EPG EZServer");
                    new AsyncTaskC0515f0(c0550t0).execute(new Void[0]);
                }
                break;
        }
    }
}
