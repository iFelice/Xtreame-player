package b7;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import pe.hf.black20.util.Config;

/* JADX INFO: loaded from: classes2.dex */
public final class N0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ ArrayList[] f10148G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ ArrayList[] f10149H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f10150I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ JSONArray[] f10151J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ ArrayList[] f10152K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ ArrayList[] f10153L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ ArrayList[] f10154M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ ArrayList[] f10155N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ S0 f10156O;

    public N0(S0 s7, ArrayList[] arrayListArr, ArrayList[] arrayListArr2, String str, JSONArray[] jSONArrayArr, ArrayList[] arrayListArr3, ArrayList[] arrayListArr4, ArrayList[] arrayListArr5, ArrayList[] arrayListArr6) {
        this.f10156O = s7;
        this.f10148G = arrayListArr;
        this.f10149H = arrayListArr2;
        this.f10150I = str;
        this.f10151J = jSONArrayArr;
        this.f10152K = arrayListArr3;
        this.f10153L = arrayListArr4;
        this.f10154M = arrayListArr5;
        this.f10155N = arrayListArr6;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x021d  */
    /* JADX WARN: Code duplicated, block: B:52:0x037b  */
    /* JADX WARN: Code duplicated, block: B:89:0x05b3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:90:0x05b4  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        S0 s7;
        Object obj2;
        S0 s8;
        Cursor cursorRawQuery;
        N0 n7;
        c7.b bVar;
        ArrayList arrayList;
        String str;
        String str2;
        String str3;
        String str4;
        ArrayList[] arrayListArr;
        Object obj3;
        Object obj4;
        N0 n8 = this;
        S0 s9 = n8.f10156O;
        boolean zEquals = s9.f10209e1.equals("search");
        ArrayList[] arrayListArr2 = n8.f10148G;
        String str5 = "0";
        String str6 = "parent_id";
        String str7 = "category_name";
        JSONArray[] jSONArrayArr = n8.f10151J;
        if (!zEquals) {
            if (s9.f10209e1.equals("fav")) {
                HashMap mapM = p000a.r.m("category_name", "FAVORITES", "category_id", "99999");
                mapM.put("parent_id", "0");
                arrayListArr2[0].add(mapM);
                ArrayList arrayListM = p190y4.k.M(s9.l(), false, "all", "NEW", "99999", HttpUrl.FRAGMENT_ENCODE_SET);
                ArrayList[] arrayListArr3 = n8.f10152K;
                arrayListArr3[0] = arrayListM;
                jSONArrayArr[0] = new JSONArray();
                jSONArrayArr[0] = new JSONArray((Collection) arrayListArr3[0]);
            } else {
                String str8 = "ORT_PROFILE_ID";
                Object obj5 = "direct_source";
                Object obj6 = "custom_sid";
                Object obj7 = "container_extension";
                Object obj8 = "added";
                Object obj9 = "rating_5based";
                if (s9.f10209e1.equals("cont")) {
                    HashMap mapM2 = p000a.r.m("category_name", "CONTINUE WATCHING", "category_id", "99997");
                    mapM2.put("parent_id", "0");
                    char c8 = 0;
                    arrayListArr2[0].add(mapM2);
                    ArrayList arrayListE0 = s9.f10183E0.E0();
                    ArrayList[] arrayListArr4 = n8.f10153L;
                    arrayListArr4[0] = arrayListE0;
                    if (arrayListE0.size() > 0) {
                        int i8 = 0;
                        while (true) {
                            int size = arrayListArr4[c8].size();
                            arrayListArr = n8.f10154M;
                            if (i8 >= size) {
                                break;
                            }
                            String[] strArrSplit = ((h7.g) arrayListArr4[c8].get(i8)).f25460a.split("-");
                            if (z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET).equals(strArrSplit[c8])) {
                                new ArrayList().clear();
                                ArrayList arrayListL = p190y4.k.L(s9.l(), strArrSplit[1]);
                                if (arrayListL.size() > 0) {
                                    HashMap map = new HashMap();
                                    map.put("num", (String) ((HashMap) arrayListL.get(0)).get("num"));
                                    map.put("name", (String) ((HashMap) arrayListL.get(0)).get("name"));
                                    map.put("stream_type", (String) ((HashMap) arrayListL.get(0)).get("stream_type"));
                                    map.put("stream_id", (String) ((HashMap) arrayListL.get(0)).get("stream_id"));
                                    map.put("stream_icon", (String) ((HashMap) arrayListL.get(0)).get("stream_icon"));
                                    map.put("rating", (String) ((HashMap) arrayListL.get(0)).get("rating"));
                                    map.put(obj9, (String) ((HashMap) arrayListL.get(0)).get(obj9));
                                    map.put(obj8, (String) ((HashMap) arrayListL.get(0)).get(obj8));
                                    map.put("category_id", (String) ((HashMap) arrayListL.get(0)).get("category_id"));
                                    map.put(obj7, (String) ((HashMap) arrayListL.get(0)).get(obj7));
                                    obj4 = obj6;
                                    map.put(obj4, (String) ((HashMap) arrayListL.get(0)).get(obj4));
                                    obj3 = obj5;
                                    map.put(obj3, (String) ((HashMap) arrayListL.get(0)).get(obj3));
                                    arrayListArr[0].add(map);
                                } else {
                                    obj3 = obj5;
                                    obj4 = obj6;
                                }
                            } else {
                                obj3 = obj5;
                                obj4 = obj6;
                            }
                            i8++;
                            c8 = 0;
                            obj6 = obj4;
                            obj5 = obj3;
                            n8 = this;
                        }
                        jSONArrayArr[0] = new JSONArray();
                        jSONArrayArr[0] = new JSONArray((Collection) arrayListArr[0]);
                    }
                } else {
                    Object obj10 = "rating";
                    if (s9.f10209e1.equals("all")) {
                        Context contextL = s9.l();
                        c7.d dVar = new c7.d(contextL);
                        Object obj11 = "stream_icon";
                        c7.b bVar2 = new c7.b(contextL, 1);
                        Object obj12 = "stream_id";
                        c7.b bVar3 = new c7.b(contextL, 0);
                        Object obj13 = "stream_type";
                        SharedPreferences sharedPreferences = contextL.getSharedPreferences("pe.hf.black20", 0);
                        Object obj14 = "name";
                        String str9 = "No";
                        if (Config.f29414b.equals("no")) {
                            s7 = s9;
                            obj2 = "num";
                            if (!sharedPreferences.getString("filter_status", null).equals("No") && !sharedPreferences.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) && !sharedPreferences.getString("filter_status", null).equals("null")) {
                                obj = obj6;
                                str9 = "Yes";
                            }
                        } else {
                            obj = obj6;
                            s7 = s9;
                            obj2 = "num";
                        }
                        obj = obj6;
                        obj = obj6;
                        obj = obj6;
                        new ArrayList().clear();
                        ArrayList arrayListS0 = dVar.s0();
                        ArrayList arrayList2 = new ArrayList();
                        int i9 = 0;
                        while (i9 < arrayListS0.size()) {
                            ArrayList[] arrayListArr5 = arrayListArr2;
                            int iK0 = dVar.k0("VOD", ((h7.a) arrayListS0.get(i9)).f25421a);
                            c7.d dVar2 = dVar;
                            if (iK0 >= 1) {
                                str = str5;
                                ArrayList arrayList3 = arrayList2;
                                String str10 = str6;
                                if (U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                                    String str11 = str7;
                                    if (bVar2.N(((h7.a) arrayListS0.get(i9)).f25421a, "VOD", z4.q0.q().c(str8, HttpUrl.FRAGMENT_ENCODE_SET)).equals("yes")) {
                                        str4 = str10;
                                        str2 = str11;
                                        bVar = bVar2;
                                        str3 = str8;
                                        arrayList = arrayList3;
                                    } else if (!str9.equals("Yes")) {
                                        str4 = str10;
                                        str2 = str11;
                                        HashMap map2 = new HashMap();
                                        bVar = bVar2;
                                        map2.put("category_id", ((h7.a) arrayListS0.get(i9)).f25421a);
                                        StringBuilder sb = new StringBuilder();
                                        str3 = str8;
                                        sb.append(((h7.a) arrayListS0.get(i9)).f25422b);
                                        sb.append(" (");
                                        sb.append(String.valueOf(iK0));
                                        sb.append(")");
                                        map2.put(str2, sb.toString());
                                        map2.put(str4, ((h7.a) arrayListS0.get(i9)).f25423c);
                                        arrayList3.add(map2);
                                        arrayList = arrayList3;
                                    } else if (bVar3.c0(((h7.a) arrayListS0.get(i9)).f25422b, "VOD").equals("yes")) {
                                        HashMap map3 = new HashMap();
                                        map3.put("category_id", ((h7.a) arrayListS0.get(i9)).f25421a);
                                        str2 = str11;
                                        map3.put(str2, ((h7.a) arrayListS0.get(i9)).f25422b + " (" + String.valueOf(iK0) + ")");
                                        str4 = str10;
                                        map3.put(str4, ((h7.a) arrayListS0.get(i9)).f25423c);
                                        arrayList3.add(map3);
                                        bVar = bVar2;
                                        arrayList = arrayList3;
                                        str3 = str8;
                                    } else {
                                        str4 = str10;
                                        str2 = str11;
                                        bVar = bVar2;
                                        str3 = str8;
                                        arrayList = arrayList3;
                                    }
                                } else {
                                    str2 = str7;
                                    str3 = str8;
                                    str4 = str10;
                                    bVar = bVar2;
                                    arrayList = arrayList3;
                                    if (!str9.equals("Yes")) {
                                        HashMap map4 = new HashMap();
                                        map4.put("category_id", ((h7.a) arrayListS0.get(i9)).f25421a);
                                        map4.put(str2, ((h7.a) arrayListS0.get(i9)).f25422b + " (" + String.valueOf(iK0) + ")");
                                        map4.put(str4, ((h7.a) arrayListS0.get(i9)).f25423c);
                                        arrayList.add(map4);
                                    } else if (bVar3.c0(((h7.a) arrayListS0.get(i9)).f25422b, "VOD").equals("yes")) {
                                        HashMap map5 = new HashMap();
                                        map5.put("category_id", ((h7.a) arrayListS0.get(i9)).f25421a);
                                        map5.put(str2, ((h7.a) arrayListS0.get(i9)).f25422b + " (" + String.valueOf(iK0) + ")");
                                        map5.put(str4, ((h7.a) arrayListS0.get(i9)).f25423c);
                                        arrayList.add(map5);
                                    }
                                }
                            } else {
                                bVar = bVar2;
                                arrayList = arrayList2;
                                str = str5;
                                str2 = str7;
                                str3 = str8;
                                str4 = str6;
                            }
                            i9++;
                            arrayList2 = arrayList;
                            str6 = str4;
                            arrayListArr2 = arrayListArr5;
                            dVar = dVar2;
                            bVar2 = bVar;
                            str8 = str3;
                            str7 = str2;
                            str5 = str;
                        }
                        ArrayList arrayList4 = arrayList2;
                        ArrayList[] arrayListArr6 = arrayListArr2;
                        String str12 = str5;
                        String str13 = str7;
                        String str14 = str6;
                        if (arrayListS0.size() == 0) {
                            HashMap mapM3 = p000a.r.m("category_id", "0000000000000", str13, "NO MOVIES FOUND! (0)");
                            mapM3.put(str14, str12);
                            arrayList4.add(mapM3);
                        }
                        arrayListArr6[0] = arrayList4;
                        s8 = s7;
                        c7.d dVar3 = s8.f10183E0;
                        dVar3.getClass();
                        ArrayList arrayList5 = new ArrayList();
                        arrayList5.clear();
                        try {
                            cursorRawQuery = dVar3.getWritableDatabase().rawQuery("SELECT * FROM vods ORDER BY CAST(stream_id AS NUMBER) DESC", null);
                            try {
                                if (cursorRawQuery.moveToFirst()) {
                                    while (true) {
                                        HashMap map6 = new HashMap();
                                        Object obj15 = obj2;
                                        map6.put(obj15, cursorRawQuery.getString(0));
                                        Object obj16 = obj14;
                                        map6.put(obj16, cursorRawQuery.getString(1));
                                        Object obj17 = obj13;
                                        map6.put(obj17, cursorRawQuery.getString(2));
                                        Object obj18 = obj12;
                                        map6.put(obj18, cursorRawQuery.getString(3));
                                        Object obj19 = obj11;
                                        map6.put(obj19, cursorRawQuery.getString(4));
                                        Object obj20 = obj10;
                                        map6.put(obj20, cursorRawQuery.getString(5));
                                        Object obj21 = obj9;
                                        map6.put(obj21, cursorRawQuery.getString(6));
                                        Object obj22 = obj8;
                                        map6.put(obj22, cursorRawQuery.getString(7));
                                        map6.put("category_id", cursorRawQuery.getString(8));
                                        Object obj23 = obj7;
                                        map6.put(obj23, cursorRawQuery.getString(9));
                                        Object obj24 = obj;
                                        map6.put(obj24, cursorRawQuery.getString(10));
                                        obj2 = obj15;
                                        Object obj25 = obj5;
                                        map6.put(obj25, cursorRawQuery.getString(11));
                                        arrayList5.add(map6);
                                        if (!cursorRawQuery.moveToNext()) {
                                            break;
                                        }
                                        obj5 = obj25;
                                        obj = obj24;
                                        obj14 = obj16;
                                        obj13 = obj17;
                                        obj12 = obj18;
                                        obj11 = obj19;
                                        obj10 = obj20;
                                        obj9 = obj21;
                                        obj8 = obj22;
                                        obj7 = obj23;
                                    }
                                }
                                if (!cursorRawQuery.isClosed()) {
                                    cursorRawQuery.close();
                                }
                            } catch (Throwable unused) {
                                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                                }
                                n7 = this;
                                ArrayList[] arrayListArr7 = n7.f10155N;
                                arrayListArr7[0] = arrayList5;
                                jSONArrayArr[0] = new JSONArray();
                                jSONArrayArr[0] = new JSONArray((Collection) arrayListArr7[0]);
                                if (s8.j() == null) {
                                    return;
                                }
                                s8.j().runOnUiThread(new com.google.android.gms.internal.cast.X(n7, 21));
                            }
                        } catch (Throwable unused2) {
                            cursorRawQuery = null;
                        }
                        n7 = this;
                        ArrayList[] arrayListArr8 = n7.f10155N;
                        arrayListArr8[0] = arrayList5;
                        jSONArrayArr[0] = new JSONArray();
                        jSONArrayArr[0] = new JSONArray((Collection) arrayListArr8[0]);
                    }
                }
                s8 = s9;
                n7 = this;
            }
            if (s8.j() == null) {
                return;
            }
            s8.j().runOnUiThread(new com.google.android.gms.internal.cast.X(n7, 21));
        }
        HashMap mapM4 = p000a.r.m("category_name", "SEARCH RESULT", "category_id", "0000000");
        mapM4.put("parent_id", "0");
        arrayListArr2[0].add(mapM4);
        ArrayList arrayListM2 = p190y4.k.M(s9.l(), true, n8.f10150I, "NEW", "0", "0");
        ArrayList[] arrayListArr9 = n8.f10149H;
        arrayListArr9[0] = arrayListM2;
        jSONArrayArr[0] = new JSONArray();
        jSONArrayArr[0] = new JSONArray((Collection) arrayListArr9[0]);
        n7 = n8;
        s8 = s9;
        if (s8.j() == null) {
            return;
        }
        s8.j().runOnUiThread(new com.google.android.gms.internal.cast.X(n7, 21));
    }
}
