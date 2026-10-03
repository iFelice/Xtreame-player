package d7;

import D1.G;
import android.database.Cursor;
import android.util.Log;
import com.google.android.gms.internal.cast.X;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import pe.hf.black20.R;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24662G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ EPGActivityXMLTV f24663H;

    public /* synthetic */ a(EPGActivityXMLTV ePGActivityXMLTV, int i8) {
        this.f24662G = i8;
        this.f24663H = ePGActivityXMLTV;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        Object obj;
        String str2;
        String str3;
        Object obj2;
        String str4;
        Object obj3;
        String str5;
        String str6;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        int i8 = this.f24662G;
        String str7 = "yes";
        String str8 = "TV";
        String str9 = "locked";
        String str10 = "ORT_PARENTAL_CONTROL_STATUS";
        EPGActivityXMLTV ePGActivityXMLTV = this.f24663H;
        switch (i8) {
            case 0:
                Object obj8 = "yes";
                String str11 = "TV";
                String str12 = "locked";
                String str13 = "ORT_PARENTAL_CONTROL_STATUS";
                ePGActivityXMLTV.f29276I = ePGActivityXMLTV.f29282O.q0();
                int i9 = 0;
                while (i9 < ePGActivityXMLTV.f29276I.size()) {
                    if (i9 == 0) {
                        HashMap map = new HashMap();
                        map.put("category_id", "99999");
                        map.put("category_name", ePGActivityXMLTV.f29274G.getString(R.string.xc_favorites));
                        map.put("parent_id", "0");
                        ePGActivityXMLTV.f29278K.add(map);
                    }
                    String str14 = str12;
                    String str15 = str13;
                    if (U2.z(str15, str14, str14)) {
                        str = str11;
                        obj = obj8;
                        if (!ePGActivityXMLTV.f29283P.N(((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25421a, str, ePGActivityXMLTV.f29285R.f25478a).equals(obj)) {
                            if (!ePGActivityXMLTV.f29287T.equals("Yes")) {
                                HashMap map2 = new HashMap();
                                map2.put("category_id", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25421a);
                                map2.put("category_name", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25422b);
                                map2.put("parent_id", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25423c);
                                ePGActivityXMLTV.f29278K.add(map2);
                            } else if (ePGActivityXMLTV.f29284Q.c0(((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25422b, "Live").equals(obj)) {
                                HashMap map3 = new HashMap();
                                map3.put("category_id", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25421a);
                                map3.put("category_name", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25422b);
                                map3.put("parent_id", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25423c);
                                ePGActivityXMLTV.f29278K.add(map3);
                            }
                        }
                    } else {
                        str = str11;
                        obj = obj8;
                        if (!ePGActivityXMLTV.f29287T.equals("Yes")) {
                            HashMap map4 = new HashMap();
                            map4.put("category_id", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25421a);
                            map4.put("category_name", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25422b);
                            map4.put("parent_id", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25423c);
                            ePGActivityXMLTV.f29278K.add(map4);
                        } else if (ePGActivityXMLTV.f29284Q.c0(((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25422b, "Live").equals(obj)) {
                            HashMap map5 = new HashMap();
                            map5.put("category_id", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25421a);
                            map5.put("category_name", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25422b);
                            map5.put("parent_id", ((h7.a) ePGActivityXMLTV.f29276I.get(i9)).f25423c);
                            ePGActivityXMLTV.f29278K.add(map5);
                        }
                    }
                    i9++;
                    str12 = str14;
                    str13 = str15;
                    obj8 = obj;
                    str11 = str;
                }
                ePGActivityXMLTV.runOnUiThread(new X(this, 25));
                break;
            default:
                String str16 = EPGActivityXMLTV.f29269v0;
                if (str16 != null) {
                    String str17 = "stream_type";
                    Object obj9 = "tv_archive_duration";
                    Object obj10 = "direct_source";
                    Object obj11 = "tv_archive";
                    Object obj12 = "custom_sid";
                    if (str16.equals("99999")) {
                        Object obj13 = "category_id";
                        Object obj14 = "added";
                        String str18 = "ORT_PROFILE_ID";
                        ePGActivityXMLTV.f29277J = ePGActivityXMLTV.f29282O.r0("default", q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                        boolean z7 = false;
                        int i10 = 0;
                        while (i10 < ePGActivityXMLTV.f29277J.size()) {
                            if (U2.z(str10, str9, str9)) {
                                str2 = str9;
                                str3 = str10;
                                if (ePGActivityXMLTV.f29283P.N(((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25436h, str8, q0.q().c(str18, HttpUrl.FRAGMENT_ENCODE_SET)).equals(str7)) {
                                    obj2 = obj14;
                                    str4 = str18;
                                    obj3 = obj13;
                                    str5 = str7;
                                    obj7 = obj12;
                                    str6 = str8;
                                    obj4 = obj9;
                                } else {
                                    HashMap map6 = new HashMap();
                                    map6.put("num", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25429a);
                                    map6.put("name", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25430b);
                                    map6.put("stream_type", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25431c);
                                    map6.put("stream_id", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25432d);
                                    map6.put("stream_icon", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25433e);
                                    map6.put("epg_channel_id", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f);
                                    obj2 = obj14;
                                    map6.put(obj2, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25435g);
                                    str4 = str18;
                                    obj3 = obj13;
                                    map6.put(obj3, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25436h);
                                    str5 = str7;
                                    obj7 = obj12;
                                    map6.put(obj7, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25437i);
                                    str6 = str8;
                                    Object obj15 = obj11;
                                    map6.put(obj15, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25438j);
                                    obj11 = obj15;
                                    Object obj16 = obj10;
                                    map6.put(obj16, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25439k);
                                    obj10 = obj16;
                                    obj4 = obj9;
                                    map6.put(obj4, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25440l);
                                    ePGActivityXMLTV.f29279L.add(map6);
                                    if (!z7 && ((!((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f.isEmpty() || !((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f.equals(HttpUrl.FRAGMENT_ENCODE_SET)) && EPGActivityXMLTV.f29252C0.a0(((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f).length() > 4)) {
                                        ePGActivityXMLTV.f29298e0 = ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f;
                                        z7 = true;
                                    }
                                }
                                obj5 = obj7;
                                obj6 = obj10;
                            } else {
                                str2 = str9;
                                str3 = str10;
                                obj2 = obj14;
                                str4 = str18;
                                obj3 = obj13;
                                str5 = str7;
                                Object obj17 = obj12;
                                str6 = str8;
                                obj4 = obj9;
                                HashMap map7 = new HashMap();
                                map7.put("num", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25429a);
                                map7.put("name", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25430b);
                                map7.put("stream_type", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25431c);
                                map7.put("stream_id", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25432d);
                                map7.put("stream_icon", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25433e);
                                map7.put("epg_channel_id", ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f);
                                map7.put(obj2, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25435g);
                                map7.put(obj3, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25436h);
                                map7.put(obj17, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25437i);
                                obj5 = obj17;
                                Object obj18 = obj11;
                                map7.put(obj18, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25438j);
                                obj11 = obj18;
                                obj6 = obj10;
                                map7.put(obj6, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25439k);
                                map7.put(obj4, ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25440l);
                                ePGActivityXMLTV.f29279L.add(map7);
                                if (!z7 && ((!((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f.isEmpty() || !((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f.equals(HttpUrl.FRAGMENT_ENCODE_SET)) && EPGActivityXMLTV.f29252C0.a0(((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f).length() > 4)) {
                                    ePGActivityXMLTV.f29298e0 = ((h7.d) ePGActivityXMLTV.f29277J.get(i10)).f25434f;
                                    z7 = true;
                                }
                            }
                            i10++;
                            obj10 = obj6;
                            str7 = str5;
                            str9 = str2;
                            str10 = str3;
                            obj13 = obj3;
                            str18 = str4;
                            obj14 = obj2;
                            Object obj19 = obj5;
                            obj9 = obj4;
                            str8 = str6;
                            obj12 = obj19;
                        }
                    } else {
                        Object obj20 = obj12;
                        ePGActivityXMLTV.f29277J = ePGActivityXMLTV.f29282O.l0("all", EPGActivityXMLTV.f29269v0, "default");
                        boolean z8 = false;
                        int i11 = 0;
                        while (i11 < ePGActivityXMLTV.f29277J.size()) {
                            HashMap map8 = new HashMap();
                            map8.put("num", ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25429a);
                            map8.put("name", ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25430b);
                            map8.put(str17, ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25431c);
                            map8.put("stream_id", ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25432d);
                            map8.put("stream_icon", ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25433e);
                            map8.put("epg_channel_id", ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25434f);
                            map8.put("added", ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25435g);
                            map8.put("category_id", ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25436h);
                            String str19 = str17;
                            Object obj21 = obj20;
                            map8.put(obj21, ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25437i);
                            Object obj22 = obj11;
                            map8.put(obj22, ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25438j);
                            map8.put(obj10, ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25439k);
                            map8.put(obj9, ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25440l);
                            ePGActivityXMLTV.f29279L.add(map8);
                            if (!z8 && ((!((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25434f.isEmpty() || !((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25434f.equals(HttpUrl.FRAGMENT_ENCODE_SET)) && EPGActivityXMLTV.f29252C0.a0(((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25434f).length() > 4)) {
                                ePGActivityXMLTV.f29298e0 = ((h7.d) ePGActivityXMLTV.f29277J.get(i11)).f25434f;
                                z8 = true;
                            }
                            i11++;
                            obj11 = obj22;
                            str17 = str19;
                            obj20 = obj21;
                        }
                    }
                    if (ePGActivityXMLTV.f29279L.size() > 0) {
                        Log.d("XCIPTV_TAG", "arraylist.size() > 0......................" + ePGActivityXMLTV.f29279L.size());
                        ArrayList arrayList = new ArrayList();
                        int size = ePGActivityXMLTV.f29279L.size();
                        String[] strArr = new String[size];
                        for (int i12 = 0; i12 < ePGActivityXMLTV.f29279L.size(); i12++) {
                            arrayList.clear();
                            strArr[i12] = (String) ((HashMap) ePGActivityXMLTV.f29279L.get(i12)).get("epg_channel_id");
                        }
                        String strA0 = EPGActivityXMLTV.f29252C0.a0(ePGActivityXMLTV.f29298e0);
                        if (strA0.length() > 4) {
                            String[] strArrN = Methods.n(EPGActivityXMLTV.f29259l0, strA0);
                            p133r0.b bVar = EPGActivityXMLTV.f29252C0;
                            String str20 = strArrN[0];
                            String str21 = strArrN[1];
                            bVar.getClass();
                            StringBuilder sb = new StringBuilder();
                            boolean z9 = false;
                            for (int i13 = 0; i13 < size; i13++) {
                                String str22 = strArr[i13];
                                if (z9) {
                                    sb.append(",");
                                } else {
                                    z9 = true;
                                }
                                sb.append("'" + str22 + "'");
                            }
                            String string = sb.toString();
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.clear();
                            Cursor cursorRawQuery = null;
                            try {
                                cursorRawQuery = bVar.getWritableDatabase().rawQuery("SELECT * FROM epgdb WHERE stop >=? AND start < ? AND channel IN (" + string + ") ORDER BY start ASC ", new String[]{str20, str21});
                                if (cursorRawQuery.moveToFirst()) {
                                    do {
                                        g gVar = new g();
                                        gVar.f24677a = cursorRawQuery.getString(1);
                                        gVar.f24678b = cursorRawQuery.getString(2);
                                        gVar.f24679c = cursorRawQuery.getString(3);
                                        gVar.f24680d = cursorRawQuery.getString(4);
                                        gVar.f24681e = cursorRawQuery.getString(5);
                                        arrayList2.add(gVar);
                                    } while (cursorRawQuery.moveToNext());
                                }
                                if (!cursorRawQuery.isClosed()) {
                                    cursorRawQuery.close();
                                }
                            } catch (Throwable unused) {
                                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                                }
                                ePGActivityXMLTV.f29297d0 = arrayList2;
                            }
                            ePGActivityXMLTV.f29297d0 = arrayList2;
                        }
                    }
                    EPGActivityXMLTV.f29273z0 = new JSONArray((Collection) ePGActivityXMLTV.f29279L);
                    ArrayList arrayList3 = ePGActivityXMLTV.f29277J;
                    if (arrayList3 != null && arrayList3.size() > 0) {
                        ePGActivityXMLTV.f29277J.size();
                        String str23 = ((h7.d) ePGActivityXMLTV.f29277J.get(0)).f25434f;
                    }
                    ePGActivityXMLTV.runOnUiThread(new p045f5.a(this, 9));
                } else {
                    ePGActivityXMLTV.runOnUiThread(new G(2));
                }
                break;
        }
    }
}
