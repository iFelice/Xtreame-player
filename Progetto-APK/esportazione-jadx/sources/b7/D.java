package b7;

import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.AsyncTask;
import android.widget.ListAdapter;
import com.google.gson.Gson;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class D extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChannelListActivity f9977b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(ChannelListActivity channelListActivity) {
        this(channelListActivity, 0);
        this.f9976a = 0;
    }

    private void b() {
        String str;
        ArrayList arrayList = new ArrayList();
        ChannelListActivity channelListActivity = this.f9977b;
        channelListActivity.getClass();
        arrayList.clear();
        ChannelListActivity channelListActivity2 = channelListActivity.f28444G;
        String str2 = ChannelListActivity.f28436r0;
        c7.d dVar = new c7.d(channelListActivity2);
        c7.b bVar = new c7.b(channelListActivity2, 1);
        ArrayList arrayList2 = new ArrayList();
        new ArrayList().clear();
        Q5.a aVarQ = z4.q0.q();
        String str3 = "ORT_PROFILE_ID";
        String str4 = HttpUrl.FRAGMENT_ENCODE_SET;
        ArrayList arrayListO0 = dVar.o0(str2, aVarQ.c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
        int i8 = 0;
        while (i8 < arrayListO0.size()) {
            ChannelListActivity channelListActivity3 = channelListActivity;
            ArrayList arrayList3 = arrayList2;
            if (U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                str = str3;
                if (bVar.N(((h7.h) arrayListO0.get(i8)).f25477p, "SERIES", z4.q0.q().c(str3, str4)).equals("yes")) {
                    arrayList2 = arrayList3;
                } else {
                    HashMap map = new HashMap();
                    map.put("num", ((h7.h) arrayListO0.get(i8)).f25462a);
                    map.put("name", ((h7.h) arrayListO0.get(i8)).f25463b);
                    map.put("series_id", ((h7.h) arrayListO0.get(i8)).f25464c);
                    map.put("cover", ((h7.h) arrayListO0.get(i8)).f25465d);
                    map.put("plot", ((h7.h) arrayListO0.get(i8)).f25466e);
                    map.put("cast", ((h7.h) arrayListO0.get(i8)).f25467f);
                    map.put("director", ((h7.h) arrayListO0.get(i8)).f25468g);
                    map.put("genre", ((h7.h) arrayListO0.get(i8)).f25469h);
                    map.put("releaseDate", ((h7.h) arrayListO0.get(i8)).f25470i);
                    map.put("last_modified", ((h7.h) arrayListO0.get(i8)).f25471j);
                    map.put("rating", ((h7.h) arrayListO0.get(i8)).f25472k);
                    map.put("rating_5based", ((h7.h) arrayListO0.get(i8)).f25473l);
                    map.put("backdrop_path", ((h7.h) arrayListO0.get(i8)).f25474m);
                    map.put("youtube_trailer", ((h7.h) arrayListO0.get(i8)).f25475n);
                    map.put("episode_run_time", ((h7.h) arrayListO0.get(i8)).f25476o);
                    map.put("category_id", ((h7.h) arrayListO0.get(i8)).f25477p);
                    arrayList2 = arrayList3;
                    arrayList2.add(map);
                }
            } else {
                str = str3;
                HashMap map2 = new HashMap();
                map2.put("num", ((h7.h) arrayListO0.get(i8)).f25462a);
                map2.put("name", ((h7.h) arrayListO0.get(i8)).f25463b);
                map2.put("series_id", ((h7.h) arrayListO0.get(i8)).f25464c);
                map2.put("cover", ((h7.h) arrayListO0.get(i8)).f25465d);
                map2.put("plot", ((h7.h) arrayListO0.get(i8)).f25466e);
                map2.put("cast", ((h7.h) arrayListO0.get(i8)).f25467f);
                map2.put("director", ((h7.h) arrayListO0.get(i8)).f25468g);
                map2.put("genre", ((h7.h) arrayListO0.get(i8)).f25469h);
                map2.put("releaseDate", ((h7.h) arrayListO0.get(i8)).f25470i);
                map2.put("last_modified", ((h7.h) arrayListO0.get(i8)).f25471j);
                map2.put("rating", ((h7.h) arrayListO0.get(i8)).f25472k);
                map2.put("rating_5based", ((h7.h) arrayListO0.get(i8)).f25473l);
                map2.put("backdrop_path", ((h7.h) arrayListO0.get(i8)).f25474m);
                map2.put("youtube_trailer", ((h7.h) arrayListO0.get(i8)).f25475n);
                map2.put("episode_run_time", ((h7.h) arrayListO0.get(i8)).f25476o);
                map2.put("category_id", ((h7.h) arrayListO0.get(i8)).f25477p);
                arrayList2 = arrayList3;
                arrayList2.add(map2);
            }
            i8++;
            channelListActivity = channelListActivity3;
            bVar = bVar;
            str4 = str4;
            str3 = str;
        }
        channelListActivity.getClass();
    }

    /* JADX WARN: Code duplicated, block: B:128:0x081b  */
    /* JADX WARN: Code duplicated, block: B:131:0x0834  */
    /* JADX WARN: Code duplicated, block: B:133:0x084d  */
    /* JADX WARN: Code duplicated, block: B:136:0x0854  */
    /* JADX WARN: Code duplicated, block: B:138:0x0869  */
    /* JADX WARN: Code duplicated, block: B:140:0x089b  */
    /* JADX WARN: Code duplicated, block: B:142:0x08c5  */
    /* JADX WARN: Code duplicated, block: B:143:0x09dd  */
    /* JADX WARN: Code duplicated, block: B:144:0x09ef  */
    /* JADX WARN: Code duplicated, block: B:145:0x0b0e  */
    /* JADX WARN: Code duplicated, block: B:222:0x0669 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0b34 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x04b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:59:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:61:0x0503  */
    /* JADX WARN: Code duplicated, block: B:64:0x0517  */
    /* JADX WARN: Code duplicated, block: B:67:0x0530  */
    /* JADX WARN: Code duplicated, block: B:69:0x0556  */
    /* JADX WARN: Code duplicated, block: B:71:0x055e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0578  */
    /* JADX WARN: Code duplicated, block: B:74:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:75:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:76:0x05de  */
    /* JADX WARN: Code duplicated, block: B:77:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:79:0x0604  */
    /* JADX WARN: Code duplicated, block: B:81:0x0616  */
    /* JADX WARN: Code duplicated, block: B:82:0x0640  */
    public final void a(Void... voidArr) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        String str;
        String str2;
        String str3;
        Object obj8;
        String str4;
        c7.b bVar;
        String str5;
        Object obj9;
        String str6;
        Cursor cursorRawQuery;
        ArrayList arrayListE;
        int i8;
        String str7;
        String[] strArrSplit;
        int i9;
        String str8;
        ChannelListActivity channelListActivity;
        int i10;
        String[] strArr;
        Object obj10;
        String str9;
        Object obj11;
        String str10;
        Object obj12;
        Object obj13;
        c7.b bVar2;
        ChannelListActivity channelListActivity2;
        String str11;
        String str12;
        String strC;
        String str13;
        String str14;
        String str15;
        String str16;
        ArrayList arrayListS0;
        ArrayList arrayList;
        int i11;
        Object obj14;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        ChannelListActivity channelListActivity3;
        c7.b bVar3;
        String str22;
        c7.b bVar4;
        String str23;
        String str24;
        Object obj15;
        Object obj16;
        Object obj17;
        Object obj18;
        Object obj19;
        Object obj20;
        Object obj21;
        Object obj22;
        Object obj23;
        Object obj24;
        Object obj25;
        Object obj26;
        String str25 = "SERIES";
        String str26 = "-";
        String str27 = "Yes";
        String str28 = "CONTINUE WATCHING";
        Object obj27 = "parent_id";
        int i12 = this.f9976a;
        String str29 = "0";
        String str30 = "VOD";
        String str31 = "category_name";
        String str32 = "99997";
        Object obj28 = "direct_source";
        String str33 = "00000";
        Object obj29 = "custom_sid";
        String str34 = "category_id";
        Object obj30 = "container_extension";
        String str35 = "ORT_PARENTAL_CONTROL_STATUS";
        Object obj31 = "added";
        String str36 = "ORT_PROFILE_ID";
        Object obj32 = "rating_5based";
        String str37 = "99999";
        Object obj33 = "rating";
        Object obj34 = "stream_icon";
        String str38 = "locked";
        Object obj35 = "stream_type";
        String str39 = HttpUrl.FRAGMENT_ENCODE_SET;
        Object obj36 = "name";
        String str40 = "yes";
        Object obj37 = "num";
        ChannelListActivity channelListActivity4 = this.f9977b;
        switch (i12) {
            case 0:
                b();
                break;
            case 1:
                new ArrayList();
                channelListActivity4.getClass();
                z4.q0.v(channelListActivity4.f28444G, ChannelListActivity.f28436r0);
                channelListActivity4.getClass();
                break;
            case 2:
                Object obj38 = "yes";
                String str41 = "VOD";
                String str42 = "locked";
                String str43 = "ORT_PROFILE_ID";
                String str44 = "ORT_PARENTAL_CONTROL_STATUS";
                Object obj39 = obj37;
                String str45 = HttpUrl.FRAGMENT_ENCODE_SET;
                ArrayList arrayList2 = new ArrayList();
                channelListActivity4.getClass();
                arrayList2.clear();
                Object obj40 = obj30;
                Object obj41 = "category_id";
                ChannelListActivity channelListActivity5 = channelListActivity4.f28444G;
                String str46 = ChannelListActivity.f28436r0;
                Object obj42 = obj31;
                c7.d dVar = new c7.d(channelListActivity5);
                Object obj43 = obj32;
                Object obj44 = obj33;
                c7.b bVar5 = new c7.b(channelListActivity5, 1);
                ArrayList arrayList3 = new ArrayList();
                new ArrayList().clear();
                ArrayList arrayListT0 = dVar.t0(str46, z4.q0.q().c(str43, str45));
                int i13 = 0;
                while (i13 < arrayListT0.size()) {
                    if (U2.z(str44, str42, str42)) {
                        if (bVar5.N(((h7.j) arrayListT0.get(i13)).f25491i, str41, z4.q0.q().c(str43, str45)).equals(obj38)) {
                            obj = obj41;
                            obj2 = obj42;
                            obj3 = obj43;
                            obj4 = obj44;
                            obj5 = obj28;
                            obj6 = obj40;
                        } else {
                            HashMap map = new HashMap();
                            map.put(obj39, ((h7.j) arrayListT0.get(i13)).f25483a);
                            map.put(obj36, ((h7.j) arrayListT0.get(i13)).f25484b);
                            map.put(obj35, ((h7.j) arrayListT0.get(i13)).f25485c);
                            map.put("stream_id", ((h7.j) arrayListT0.get(i13)).f25486d);
                            map.put(obj34, ((h7.j) arrayListT0.get(i13)).f25487e);
                            obj4 = obj44;
                            map.put(obj4, ((h7.j) arrayListT0.get(i13)).f25488f);
                            obj3 = obj43;
                            map.put(obj3, ((h7.j) arrayListT0.get(i13)).f25489g);
                            obj2 = obj42;
                            map.put(obj2, ((h7.j) arrayListT0.get(i13)).f25490h);
                            obj = obj41;
                            map.put(obj, ((h7.j) arrayListT0.get(i13)).f25491i);
                            obj6 = obj40;
                            map.put(obj6, ((h7.j) arrayListT0.get(i13)).f25492j);
                            Object obj45 = obj29;
                            map.put(obj45, ((h7.j) arrayListT0.get(i13)).f25493k);
                            obj29 = obj45;
                            obj5 = obj28;
                            map.put(obj5, ((h7.j) arrayListT0.get(i13)).f25494l);
                            arrayList3.add(map);
                        }
                        obj7 = obj29;
                    } else {
                        bVar5 = bVar5;
                        str41 = str41;
                        obj38 = obj38;
                        str43 = str43;
                        obj = obj41;
                        obj2 = obj42;
                        obj3 = obj43;
                        obj4 = obj44;
                        str44 = str44;
                        str45 = str45;
                        obj5 = obj28;
                        obj6 = obj40;
                        HashMap map2 = new HashMap();
                        map2.put(obj39, ((h7.j) arrayListT0.get(i13)).f25483a);
                        map2.put(obj36, ((h7.j) arrayListT0.get(i13)).f25484b);
                        map2.put(obj35, ((h7.j) arrayListT0.get(i13)).f25485c);
                        map2.put("stream_id", ((h7.j) arrayListT0.get(i13)).f25486d);
                        map2.put(obj34, ((h7.j) arrayListT0.get(i13)).f25487e);
                        map2.put(obj4, ((h7.j) arrayListT0.get(i13)).f25488f);
                        map2.put(obj3, ((h7.j) arrayListT0.get(i13)).f25489g);
                        map2.put(obj2, ((h7.j) arrayListT0.get(i13)).f25490h);
                        map2.put(obj, ((h7.j) arrayListT0.get(i13)).f25491i);
                        map2.put(obj6, ((h7.j) arrayListT0.get(i13)).f25492j);
                        obj7 = obj29;
                        map2.put(obj7, ((h7.j) arrayListT0.get(i13)).f25493k);
                        map2.put(obj5, ((h7.j) arrayListT0.get(i13)).f25494l);
                        arrayList3.add(map2);
                    }
                    i13++;
                    obj29 = obj7;
                    obj42 = obj2;
                    obj41 = obj;
                    obj40 = obj6;
                    obj28 = obj5;
                    str45 = str45;
                    str44 = str44;
                    str42 = str42;
                    str43 = str43;
                    obj38 = obj38;
                    obj39 = obj39;
                    obj44 = obj4;
                    obj43 = obj3;
                    str41 = str41;
                    bVar5 = bVar5;
                }
                channelListActivity4.getClass();
                break;
            case 3:
                Object obj46 = "00000";
                Object obj47 = "99999";
                String str47 = "locked";
                String str48 = "ORT_PROFILE_ID";
                String str49 = str29;
                Object obj48 = "yes";
                ChannelListActivity.f28440v0 = channelListActivity4.f28452O.j0(str25);
                ArrayList arrayList4 = new ArrayList();
                channelListActivity4.f28448K = arrayList4;
                arrayList4.clear();
                ChannelListActivity channelListActivity6 = channelListActivity4.f28444G;
                c7.d dVar2 = new c7.d(channelListActivity6);
                String str50 = str25;
                String str51 = "ORT_PARENTAL_CONTROL_STATUS";
                c7.b bVar6 = new c7.b(channelListActivity6, 1);
                c7.b bVar7 = new c7.b(channelListActivity6, 0);
                SharedPreferences sharedPreferences = channelListActivity6.getSharedPreferences("pe.hf.black20", 0);
                String str52 = (!Config.f29414b.equals("no") || sharedPreferences.getString("filter_status", null).equals("No") || sharedPreferences.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) || sharedPreferences.getString("filter_status", null).equals("null")) ? "No" : str27;
                new ArrayList().clear();
                ArrayList arrayListN0 = dVar2.n0();
                ArrayList arrayList5 = new ArrayList();
                int i14 = 0;
                while (i14 < arrayListN0.size()) {
                    if (i14 == 0) {
                        HashMap map3 = new HashMap();
                        map3.put("category_id", obj47);
                        map3.put(str31, channelListActivity6.getString(R.string.xc_favorites));
                        map3.put(obj27, str49);
                        arrayList5.add(map3);
                        HashMap map4 = new HashMap();
                        map4.put("category_id", obj46);
                        map4.put(str31, channelListActivity6.getString(R.string.xc_recently_added));
                        map4.put(obj27, str49);
                        arrayList5.add(map4);
                        HashMap map5 = new HashMap();
                        map5.put("category_id", str32);
                        str = str28;
                        map5.put(str31, str);
                        map5.put(obj27, str49);
                        arrayList5.add(map5);
                    } else {
                        str = str28;
                    }
                    String str53 = str51;
                    String str54 = str47;
                    ChannelListActivity channelListActivity7 = channelListActivity6;
                    if (U2.z(str53, str54, str54)) {
                        str2 = str49;
                        str3 = str32;
                        str47 = str54;
                        str5 = str48;
                        obj8 = obj46;
                        str51 = str53;
                        String str55 = str50;
                        bVar = bVar6;
                        obj9 = obj48;
                        if (bVar.N(((h7.a) arrayListN0.get(i14)).f25421a, str55, z4.q0.q().c(str5, HttpUrl.FRAGMENT_ENCODE_SET)).equals(obj9)) {
                            str4 = str27;
                            str6 = str55;
                        } else {
                            str4 = str27;
                            if (str52.equals(str4)) {
                                str6 = str55;
                                if (bVar7.c0(((h7.a) arrayListN0.get(i14)).f25422b, "Series").equals(obj9)) {
                                    HashMap map6 = new HashMap();
                                    map6.put("category_id", ((h7.a) arrayListN0.get(i14)).f25421a);
                                    map6.put(str31, ((h7.a) arrayListN0.get(i14)).f25422b);
                                    map6.put(obj27, ((h7.a) arrayListN0.get(i14)).f25423c);
                                    arrayList5.add(map6);
                                }
                            } else {
                                str6 = str55;
                                HashMap map7 = new HashMap();
                                map7.put("category_id", ((h7.a) arrayListN0.get(i14)).f25421a);
                                map7.put(str31, ((h7.a) arrayListN0.get(i14)).f25422b);
                                map7.put(obj27, ((h7.a) arrayListN0.get(i14)).f25423c);
                                arrayList5.add(map7);
                            }
                        }
                    } else {
                        str2 = str49;
                        str3 = str32;
                        obj8 = obj46;
                        str51 = str53;
                        str47 = str54;
                        str4 = str27;
                        bVar = bVar6;
                        str5 = str48;
                        obj9 = obj48;
                        str6 = str50;
                        if (!str52.equals(str4)) {
                            HashMap map8 = new HashMap();
                            map8.put("category_id", ((h7.a) arrayListN0.get(i14)).f25421a);
                            map8.put(str31, ((h7.a) arrayListN0.get(i14)).f25422b);
                            map8.put(obj27, ((h7.a) arrayListN0.get(i14)).f25423c);
                            arrayList5.add(map8);
                        } else if (bVar7.c0(((h7.a) arrayListN0.get(i14)).f25422b, "Series").equals(obj9)) {
                            HashMap map9 = new HashMap();
                            map9.put("category_id", ((h7.a) arrayListN0.get(i14)).f25421a);
                            map9.put(str31, ((h7.a) arrayListN0.get(i14)).f25422b);
                            map9.put(obj27, ((h7.a) arrayListN0.get(i14)).f25423c);
                            arrayList5.add(map9);
                        }
                    }
                    i14++;
                    obj48 = obj9;
                    bVar6 = bVar;
                    str48 = str5;
                    str50 = str6;
                    str32 = str3;
                    channelListActivity6 = channelListActivity7;
                    obj47 = obj47;
                    obj46 = obj8;
                    str27 = str4;
                    str28 = str;
                    str49 = str2;
                }
                channelListActivity4.f28448K = arrayList5;
                break;
            case 4:
                ChannelListActivity channelListActivity8 = channelListActivity4;
                String str56 = HttpUrl.FRAGMENT_ENCODE_SET;
                String str57 = "ORT_PROFILE_ID";
                String str58 = "-";
                String str59 = "locked";
                Object obj49 = obj33;
                Object obj50 = obj32;
                channelListActivity8.f28450M = new ArrayList();
                new ArrayList();
                boolean zEquals = channelListActivity8.f28469f0.equals("yes");
                ChannelListActivity channelListActivity9 = channelListActivity8.f28444G;
                if (zEquals) {
                    channelListActivity8.f28450M.clear();
                    channelListActivity8.f28450M = a7.b.e(channelListActivity9, true, channelListActivity8.f28470g0, ChannelListActivity.f28436r0, "0", "0");
                    channelListActivity8.f28469f0 = "no";
                } else if (channelListActivity8.f28473j0.equals("00000")) {
                    channelListActivity8.f28450M.clear();
                    channelListActivity8.f28450M = a7.b.e(channelListActivity9, false, channelListActivity8.f28470g0, ChannelListActivity.f28436r0, "00000", "0");
                } else if (channelListActivity8.f28473j0.equals("99999")) {
                    channelListActivity8.f28450M.clear();
                    channelListActivity8.f28450M = a7.b.e(channelListActivity9, false, channelListActivity8.f28470g0, ChannelListActivity.f28436r0, "99999", "0");
                } else if (!channelListActivity8.f28473j0.equals("99997")) {
                    channelListActivity8.f28450M.clear();
                    channelListActivity8.f28450M = a7.b.e(channelListActivity9, false, "all", ChannelListActivity.f28436r0, "0", channelListActivity8.f28473j0);
                } else {
                    channelListActivity8.f28450M.clear();
                    c7.d dVar3 = channelListActivity8.f28452O;
                    ArrayList arrayList6 = dVar3.f11493N;
                    arrayList6.clear();
                    try {
                        cursorRawQuery = dVar3.getWritableDatabase().rawQuery("SELECT * FROM resume GROUP BY player", null);
                        try {
                            if (cursorRawQuery.moveToFirst()) {
                                do {
                                    h7.g gVar = new h7.g();
                                    cursorRawQuery.getString(0);
                                    gVar.f25460a = cursorRawQuery.getString(1);
                                    gVar.f25461b = cursorRawQuery.getString(2);
                                    cursorRawQuery.getString(3);
                                    arrayList6.add(gVar);
                                } while (cursorRawQuery.moveToNext());
                            }
                        } catch (Throwable unused) {
                            if (cursorRawQuery != null) {
                            }
                            channelListActivity8.f28449L = arrayList6;
                            if (arrayList6.size() > 0) {
                                arrayListE = a7.b.e(channelListActivity9, true, "all", ChannelListActivity.f28436r0, "0", "0");
                                i8 = 0;
                                while (i8 < channelListActivity8.f28449L.size()) {
                                    str7 = str58;
                                    strArrSplit = ((h7.g) channelListActivity8.f28449L.get(i8)).f25461b.split(str7);
                                    if (U2.z(str57, str56, strArrSplit[0])) {
                                        i9 = 0;
                                        while (i9 < arrayListE.size()) {
                                            String str60 = str7;
                                            if (strArrSplit[1].equals(((HashMap) arrayListE.get(i9)).get(obj36))) {
                                                strArr = strArrSplit;
                                                str9 = str59;
                                                i10 = i8;
                                                obj12 = obj50;
                                                obj13 = obj49;
                                                if (U2.z("ORT_PARENTAL_CONTROL_STATUS", str59, str59)) {
                                                    bVar2 = channelListActivity8.f28453P;
                                                    channelListActivity2 = channelListActivity8;
                                                    str11 = (String) ((HashMap) arrayListE.get(i9)).get(str34);
                                                    str12 = str34;
                                                    strC = z4.q0.q().c(str57, str56);
                                                    str8 = str57;
                                                    str13 = str25;
                                                    if (bVar2.N(str11, str13, strC).equals(str40)) {
                                                        str25 = str13;
                                                        obj10 = obj13;
                                                        str10 = str12;
                                                        channelListActivity = channelListActivity2;
                                                        obj11 = obj12;
                                                    } else {
                                                        HashMap map10 = new HashMap();
                                                        map10.put(obj37, (String) ((HashMap) arrayListE.get(i9)).get(obj37));
                                                        map10.put(obj36, (String) ((HashMap) arrayListE.get(i9)).get(obj36));
                                                        map10.put("series_id", (String) ((HashMap) arrayListE.get(i9)).get("series_id"));
                                                        map10.put("cover", (String) ((HashMap) arrayListE.get(i9)).get("cover"));
                                                        map10.put("plot", (String) ((HashMap) arrayListE.get(i9)).get("plot"));
                                                        map10.put("cast", (String) ((HashMap) arrayListE.get(i9)).get("cast"));
                                                        map10.put("director", (String) ((HashMap) arrayListE.get(i9)).get("director"));
                                                        map10.put("genre", (String) ((HashMap) arrayListE.get(i9)).get("genre"));
                                                        map10.put("releaseDate", (String) ((HashMap) arrayListE.get(i9)).get("releaseDate"));
                                                        map10.put("last_modified", (String) ((HashMap) arrayListE.get(i9)).get("last_modified"));
                                                        map10.put(obj13, (String) ((HashMap) arrayListE.get(i9)).get(obj13));
                                                        map10.put(obj12, (String) ((HashMap) arrayListE.get(i9)).get(obj12));
                                                        map10.put("backdrop_path", (String) ((HashMap) arrayListE.get(i9)).get("backdrop_path"));
                                                        map10.put("youtube_trailer", (String) ((HashMap) arrayListE.get(i9)).get("youtube_trailer"));
                                                        map10.put("episode_run_time", (String) ((HashMap) arrayListE.get(i9)).get("episode_run_time"));
                                                        map10.put(str12, (String) ((HashMap) arrayListE.get(i9)).get(str12));
                                                        channelListActivity2.f28450M.add(map10);
                                                        str25 = str13;
                                                        channelListActivity = channelListActivity2;
                                                        obj10 = obj13;
                                                        obj11 = obj12;
                                                        str10 = str12;
                                                    }
                                                } else {
                                                    str8 = str57;
                                                    ChannelListActivity channelListActivity10 = channelListActivity8;
                                                    obj10 = obj13;
                                                    obj11 = obj12;
                                                    HashMap map11 = new HashMap();
                                                    map11.put(obj37, (String) ((HashMap) arrayListE.get(i9)).get(obj37));
                                                    map11.put(obj36, (String) ((HashMap) arrayListE.get(i9)).get(obj36));
                                                    map11.put("series_id", (String) ((HashMap) arrayListE.get(i9)).get("series_id"));
                                                    map11.put("cover", (String) ((HashMap) arrayListE.get(i9)).get("cover"));
                                                    map11.put("plot", (String) ((HashMap) arrayListE.get(i9)).get("plot"));
                                                    map11.put("cast", (String) ((HashMap) arrayListE.get(i9)).get("cast"));
                                                    map11.put("director", (String) ((HashMap) arrayListE.get(i9)).get("director"));
                                                    map11.put("genre", (String) ((HashMap) arrayListE.get(i9)).get("genre"));
                                                    map11.put("releaseDate", (String) ((HashMap) arrayListE.get(i9)).get("releaseDate"));
                                                    map11.put("last_modified", (String) ((HashMap) arrayListE.get(i9)).get("last_modified"));
                                                    map11.put(obj10, (String) ((HashMap) arrayListE.get(i9)).get(obj10));
                                                    map11.put(obj11, (String) ((HashMap) arrayListE.get(i9)).get(obj11));
                                                    map11.put("backdrop_path", (String) ((HashMap) arrayListE.get(i9)).get("backdrop_path"));
                                                    map11.put("youtube_trailer", (String) ((HashMap) arrayListE.get(i9)).get("youtube_trailer"));
                                                    map11.put("episode_run_time", (String) ((HashMap) arrayListE.get(i9)).get("episode_run_time"));
                                                    str10 = str34;
                                                    map11.put(str10, (String) ((HashMap) arrayListE.get(i9)).get(str10));
                                                    channelListActivity = channelListActivity10;
                                                    channelListActivity.f28450M.add(map11);
                                                }
                                            } else {
                                                str8 = str57;
                                                channelListActivity = channelListActivity8;
                                                i10 = i8;
                                                strArr = strArrSplit;
                                                obj10 = obj49;
                                                str9 = str59;
                                                obj11 = obj50;
                                                str10 = str34;
                                            }
                                            i9++;
                                            strArrSplit = strArr;
                                            obj49 = obj10;
                                            str34 = str10;
                                            i8 = i10;
                                            str59 = str9;
                                            str40 = str40;
                                            str7 = str60;
                                            channelListActivity8 = channelListActivity;
                                            obj50 = obj11;
                                            str56 = str56;
                                            str57 = str8;
                                        }
                                    }
                                    str58 = str7;
                                    i8++;
                                    obj49 = obj49;
                                    str34 = str34;
                                    str59 = str59;
                                    str40 = str40;
                                    channelListActivity8 = channelListActivity8;
                                    obj50 = obj50;
                                    str56 = str56;
                                    str57 = str57;
                                }
                                return;
                            }
                            return;
                        }
                    } catch (Throwable unused2) {
                        cursorRawQuery = null;
                    }
                    cursorRawQuery.close();
                    channelListActivity8.f28449L = arrayList6;
                    if (arrayList6.size() > 0) {
                        arrayListE = a7.b.e(channelListActivity9, true, "all", ChannelListActivity.f28436r0, "0", "0");
                        i8 = 0;
                        while (i8 < channelListActivity8.f28449L.size()) {
                            str7 = str58;
                            strArrSplit = ((h7.g) channelListActivity8.f28449L.get(i8)).f25461b.split(str7);
                            if (U2.z(str57, str56, strArrSplit[0])) {
                                i9 = 0;
                                while (i9 < arrayListE.size()) {
                                    String str61 = str7;
                                    if (strArrSplit[1].equals(((HashMap) arrayListE.get(i9)).get(obj36))) {
                                        strArr = strArrSplit;
                                        str9 = str59;
                                        i10 = i8;
                                        obj12 = obj50;
                                        obj13 = obj49;
                                        if (U2.z("ORT_PARENTAL_CONTROL_STATUS", str59, str59)) {
                                            bVar2 = channelListActivity8.f28453P;
                                            channelListActivity2 = channelListActivity8;
                                            str11 = (String) ((HashMap) arrayListE.get(i9)).get(str34);
                                            str12 = str34;
                                            strC = z4.q0.q().c(str57, str56);
                                            str8 = str57;
                                            str13 = str25;
                                            if (bVar2.N(str11, str13, strC).equals(str40)) {
                                                HashMap map12 = new HashMap();
                                                map12.put(obj37, (String) ((HashMap) arrayListE.get(i9)).get(obj37));
                                                map12.put(obj36, (String) ((HashMap) arrayListE.get(i9)).get(obj36));
                                                map12.put("series_id", (String) ((HashMap) arrayListE.get(i9)).get("series_id"));
                                                map12.put("cover", (String) ((HashMap) arrayListE.get(i9)).get("cover"));
                                                map12.put("plot", (String) ((HashMap) arrayListE.get(i9)).get("plot"));
                                                map12.put("cast", (String) ((HashMap) arrayListE.get(i9)).get("cast"));
                                                map12.put("director", (String) ((HashMap) arrayListE.get(i9)).get("director"));
                                                map12.put("genre", (String) ((HashMap) arrayListE.get(i9)).get("genre"));
                                                map12.put("releaseDate", (String) ((HashMap) arrayListE.get(i9)).get("releaseDate"));
                                                map12.put("last_modified", (String) ((HashMap) arrayListE.get(i9)).get("last_modified"));
                                                map12.put(obj13, (String) ((HashMap) arrayListE.get(i9)).get(obj13));
                                                map12.put(obj12, (String) ((HashMap) arrayListE.get(i9)).get(obj12));
                                                map12.put("backdrop_path", (String) ((HashMap) arrayListE.get(i9)).get("backdrop_path"));
                                                map12.put("youtube_trailer", (String) ((HashMap) arrayListE.get(i9)).get("youtube_trailer"));
                                                map12.put("episode_run_time", (String) ((HashMap) arrayListE.get(i9)).get("episode_run_time"));
                                                map12.put(str12, (String) ((HashMap) arrayListE.get(i9)).get(str12));
                                                channelListActivity2.f28450M.add(map12);
                                                str25 = str13;
                                                channelListActivity = channelListActivity2;
                                                obj10 = obj13;
                                                obj11 = obj12;
                                                str10 = str12;
                                            } else {
                                                str25 = str13;
                                                obj10 = obj13;
                                                str10 = str12;
                                                channelListActivity = channelListActivity2;
                                                obj11 = obj12;
                                            }
                                        } else {
                                            str8 = str57;
                                            ChannelListActivity channelListActivity11 = channelListActivity8;
                                            obj10 = obj13;
                                            obj11 = obj12;
                                            HashMap map13 = new HashMap();
                                            map13.put(obj37, (String) ((HashMap) arrayListE.get(i9)).get(obj37));
                                            map13.put(obj36, (String) ((HashMap) arrayListE.get(i9)).get(obj36));
                                            map13.put("series_id", (String) ((HashMap) arrayListE.get(i9)).get("series_id"));
                                            map13.put("cover", (String) ((HashMap) arrayListE.get(i9)).get("cover"));
                                            map13.put("plot", (String) ((HashMap) arrayListE.get(i9)).get("plot"));
                                            map13.put("cast", (String) ((HashMap) arrayListE.get(i9)).get("cast"));
                                            map13.put("director", (String) ((HashMap) arrayListE.get(i9)).get("director"));
                                            map13.put("genre", (String) ((HashMap) arrayListE.get(i9)).get("genre"));
                                            map13.put("releaseDate", (String) ((HashMap) arrayListE.get(i9)).get("releaseDate"));
                                            map13.put("last_modified", (String) ((HashMap) arrayListE.get(i9)).get("last_modified"));
                                            map13.put(obj10, (String) ((HashMap) arrayListE.get(i9)).get(obj10));
                                            map13.put(obj11, (String) ((HashMap) arrayListE.get(i9)).get(obj11));
                                            map13.put("backdrop_path", (String) ((HashMap) arrayListE.get(i9)).get("backdrop_path"));
                                            map13.put("youtube_trailer", (String) ((HashMap) arrayListE.get(i9)).get("youtube_trailer"));
                                            map13.put("episode_run_time", (String) ((HashMap) arrayListE.get(i9)).get("episode_run_time"));
                                            str10 = str34;
                                            map13.put(str10, (String) ((HashMap) arrayListE.get(i9)).get(str10));
                                            channelListActivity = channelListActivity11;
                                            channelListActivity.f28450M.add(map13);
                                        }
                                    } else {
                                        str8 = str57;
                                        channelListActivity = channelListActivity8;
                                        i10 = i8;
                                        strArr = strArrSplit;
                                        obj10 = obj49;
                                        str9 = str59;
                                        obj11 = obj50;
                                        str10 = str34;
                                    }
                                    i9++;
                                    strArrSplit = strArr;
                                    obj49 = obj10;
                                    str34 = str10;
                                    i8 = i10;
                                    str59 = str9;
                                    str40 = str40;
                                    str7 = str61;
                                    channelListActivity8 = channelListActivity;
                                    obj50 = obj11;
                                    str56 = str56;
                                    str57 = str8;
                                }
                            }
                            str58 = str7;
                            i8++;
                            obj49 = obj49;
                            str34 = str34;
                            str59 = str59;
                            str40 = str40;
                            channelListActivity8 = channelListActivity8;
                            obj50 = obj50;
                            str56 = str56;
                            str57 = str57;
                        }
                    }
                }
                break;
            case 5:
                if (U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
                    ChannelListActivity.f28440v0 = channelListActivity4.f28452O.j0("RADIO");
                } else {
                    ChannelListActivity.f28440v0 = channelListActivity4.f28452O.j0("TV");
                }
                channelListActivity4.f28448K = new ArrayList();
                channelListActivity4.f28448K = z4.q0.t(channelListActivity4.f28444G);
                break;
            case 6:
                ArrayList arrayList7 = new ArrayList();
                channelListActivity4.f28450M = arrayList7;
                arrayList7.clear();
                boolean zEquals2 = channelListActivity4.f28469f0.equals("yes");
                ChannelListActivity channelListActivity12 = channelListActivity4.f28444G;
                if (zEquals2) {
                    ArrayList arrayListU = z4.q0.u(channelListActivity12, true, channelListActivity4.f28470g0, ChannelListActivity.f28436r0, str29);
                    channelListActivity4.f28450M = arrayListU;
                    channelListActivity4.f28469f0 = "no";
                    ChannelListActivity.f28443y0 = arrayListU;
                    SharedPreferences.Editor editorEdit = channelListActivity12.getSharedPreferences("pe.hf.black20", 0).edit();
                    editorEdit.putString("tv_arraylist_search", new Gson().toJson(arrayListU));
                    editorEdit.apply();
                } else if (channelListActivity4.f28473j0.equals("99999")) {
                    channelListActivity4.f28450M = z4.q0.v(channelListActivity12, ChannelListActivity.f28436r0);
                } else if (!channelListActivity4.f28473j0.equals("99998")) {
                    channelListActivity4.f28450M = z4.q0.u(channelListActivity12, false, channelListActivity4.f28470g0, ChannelListActivity.f28436r0, channelListActivity4.f28473j0);
                } else {
                    channelListActivity4.f28450M = ChannelListActivity.f28443y0;
                }
                break;
            case 7:
                Object obj51 = "yes";
                String str62 = "locked";
                String str63 = "ORT_PROFILE_ID";
                String str64 = "ORT_PARENTAL_CONTROL_STATUS";
                ChannelListActivity.f28440v0 = channelListActivity4.f28452O.j0("VOD");
                channelListActivity4.f28447J.clear();
                channelListActivity4.f28447J = channelListActivity4.f28452O.s0();
                ArrayList arrayList8 = new ArrayList();
                channelListActivity4.f28448K = arrayList8;
                arrayList8.clear();
                ChannelListActivity channelListActivity13 = channelListActivity4.f28444G;
                c7.d dVar4 = new c7.d(channelListActivity13);
                c7.b bVar8 = new c7.b(channelListActivity13, 1);
                c7.b bVar9 = new c7.b(channelListActivity13, 0);
                SharedPreferences sharedPreferences2 = channelListActivity13.getSharedPreferences("pe.hf.black20", 0);
                if (Config.f29414b.equals("no")) {
                    str14 = "No";
                    if (!sharedPreferences2.getString("filter_status", null).equals(str14)) {
                        String string = sharedPreferences2.getString("filter_status", null);
                        str15 = HttpUrl.FRAGMENT_ENCODE_SET;
                        if (!string.equals(str15) && !sharedPreferences2.getString("filter_status", null).equals("null")) {
                            str16 = str27;
                        }
                        new ArrayList().clear();
                        arrayListS0 = dVar4.s0();
                        arrayList = new ArrayList();
                        i11 = 0;
                        while (i11 < arrayListS0.size()) {
                            if (i11 == 0) {
                                HashMap map14 = new HashMap();
                                map14.put("category_id", str37);
                                str18 = str31;
                                map14.put(str18, channelListActivity13.getString(R.string.xc_favorites));
                                obj14 = obj27;
                                str17 = str29;
                                map14.put(obj14, str17);
                                arrayList.add(map14);
                                if (str16.equals(str14)) {
                                    HashMap map15 = new HashMap();
                                    map15.put("category_id", str33);
                                    map15.put(str18, channelListActivity13.getString(R.string.xc_recently_added));
                                    map15.put(obj14, str17);
                                    arrayList.add(map15);
                                }
                                str19 = str28;
                                HashMap mapM = p000a.r.m("category_id", "99997", str18, str19);
                                mapM.put(obj14, str17);
                                arrayList.add(mapM);
                            } else {
                                obj14 = obj27;
                                str17 = str29;
                                str18 = str31;
                                str33 = str33;
                                str14 = str14;
                                str19 = str28;
                            }
                            str20 = str64;
                            str21 = str62;
                            if (U2.z(str20, str21, str21)) {
                                channelListActivity3 = channelListActivity13;
                                str62 = str21;
                                str28 = str19;
                                str24 = str63;
                                obj15 = obj51;
                                if (bVar8.N(((h7.a) arrayListS0.get(i11)).f25421a, "VOD", z4.q0.q().c(str24, str15)).equals(obj15)) {
                                    bVar3 = bVar8;
                                    str64 = str20;
                                    str22 = str15;
                                    bVar4 = bVar9;
                                    str23 = str27;
                                } else {
                                    str23 = str27;
                                    if (str16.equals(str23)) {
                                        bVar3 = bVar8;
                                        str22 = str15;
                                        bVar4 = bVar9;
                                        if (bVar4.c0(((h7.a) arrayListS0.get(i11)).f25422b, "VOD").equals(obj15)) {
                                            HashMap map16 = new HashMap();
                                            str64 = str20;
                                            map16.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                            map16.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                            map16.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                            arrayList.add(map16);
                                        } else {
                                            str64 = str20;
                                        }
                                    } else {
                                        bVar3 = bVar8;
                                        str64 = str20;
                                        str22 = str15;
                                        bVar4 = bVar9;
                                        HashMap map17 = new HashMap();
                                        map17.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                        map17.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                        map17.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                        arrayList.add(map17);
                                    }
                                }
                            } else {
                                channelListActivity3 = channelListActivity13;
                                str28 = str19;
                                bVar3 = bVar8;
                                str62 = str21;
                                str64 = str20;
                                str22 = str15;
                                bVar4 = bVar9;
                                str23 = str27;
                                str24 = str63;
                                obj15 = obj51;
                                if (!str16.equals(str23)) {
                                    HashMap map18 = new HashMap();
                                    map18.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                    map18.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                    map18.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                    arrayList.add(map18);
                                } else if (bVar4.c0(((h7.a) arrayListS0.get(i11)).f25422b, "VOD").equals(obj15)) {
                                    HashMap map19 = new HashMap();
                                    map19.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                    map19.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                    map19.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                    arrayList.add(map19);
                                }
                            }
                            i11++;
                            str27 = str23;
                            str63 = str24;
                            obj51 = obj15;
                            str14 = str14;
                            str33 = str33;
                            channelListActivity13 = channelListActivity3;
                            bVar8 = bVar3;
                            obj27 = obj14;
                            str29 = str17;
                            str31 = str18;
                            bVar9 = bVar4;
                            str37 = str37;
                            channelListActivity4 = channelListActivity4;
                            str15 = str22;
                        }
                        channelListActivity4.f28448K = arrayList;
                    }
                    str16 = str14;
                    new ArrayList().clear();
                    arrayListS0 = dVar4.s0();
                    arrayList = new ArrayList();
                    i11 = 0;
                    while (i11 < arrayListS0.size()) {
                        if (i11 == 0) {
                            HashMap map110 = new HashMap();
                            map110.put("category_id", str37);
                            str18 = str31;
                            map110.put(str18, channelListActivity13.getString(R.string.xc_favorites));
                            obj14 = obj27;
                            str17 = str29;
                            map110.put(obj14, str17);
                            arrayList.add(map110);
                            if (str16.equals(str14)) {
                                HashMap map111 = new HashMap();
                                map111.put("category_id", str33);
                                map111.put(str18, channelListActivity13.getString(R.string.xc_recently_added));
                                map111.put(obj14, str17);
                                arrayList.add(map111);
                            }
                            str19 = str28;
                            HashMap mapM2 = p000a.r.m("category_id", "99997", str18, str19);
                            mapM2.put(obj14, str17);
                            arrayList.add(mapM2);
                        } else {
                            obj14 = obj27;
                            str17 = str29;
                            str18 = str31;
                            str33 = str33;
                            str14 = str14;
                            str19 = str28;
                        }
                        str20 = str64;
                        str21 = str62;
                        if (U2.z(str20, str21, str21)) {
                            channelListActivity3 = channelListActivity13;
                            str62 = str21;
                            str28 = str19;
                            str24 = str63;
                            obj15 = obj51;
                            if (bVar8.N(((h7.a) arrayListS0.get(i11)).f25421a, "VOD", z4.q0.q().c(str24, str15)).equals(obj15)) {
                                str23 = str27;
                                if (str16.equals(str23)) {
                                    bVar3 = bVar8;
                                    str22 = str15;
                                    bVar4 = bVar9;
                                    if (bVar4.c0(((h7.a) arrayListS0.get(i11)).f25422b, "VOD").equals(obj15)) {
                                        HashMap map112 = new HashMap();
                                        str64 = str20;
                                        map112.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                        map112.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                        map112.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                        arrayList.add(map112);
                                    } else {
                                        str64 = str20;
                                    }
                                } else {
                                    bVar3 = bVar8;
                                    str64 = str20;
                                    str22 = str15;
                                    bVar4 = bVar9;
                                    HashMap map113 = new HashMap();
                                    map113.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                    map113.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                    map113.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                    arrayList.add(map113);
                                }
                            } else {
                                bVar3 = bVar8;
                                str64 = str20;
                                str22 = str15;
                                bVar4 = bVar9;
                                str23 = str27;
                            }
                        } else {
                            channelListActivity3 = channelListActivity13;
                            str28 = str19;
                            bVar3 = bVar8;
                            str62 = str21;
                            str64 = str20;
                            str22 = str15;
                            bVar4 = bVar9;
                            str23 = str27;
                            str24 = str63;
                            obj15 = obj51;
                            if (!str16.equals(str23)) {
                                HashMap map114 = new HashMap();
                                map114.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                map114.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                map114.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                arrayList.add(map114);
                            } else if (bVar4.c0(((h7.a) arrayListS0.get(i11)).f25422b, "VOD").equals(obj15)) {
                                HashMap map115 = new HashMap();
                                map115.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                map115.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                map115.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                arrayList.add(map115);
                            }
                        }
                        i11++;
                        str27 = str23;
                        str63 = str24;
                        obj51 = obj15;
                        str14 = str14;
                        str33 = str33;
                        channelListActivity13 = channelListActivity3;
                        bVar8 = bVar3;
                        obj27 = obj14;
                        str29 = str17;
                        str31 = str18;
                        bVar9 = bVar4;
                        str37 = str37;
                        channelListActivity4 = channelListActivity4;
                        str15 = str22;
                    }
                    channelListActivity4.f28448K = arrayList;
                } else {
                    str14 = "No";
                }
                str15 = HttpUrl.FRAGMENT_ENCODE_SET;
                str16 = str14;
                new ArrayList().clear();
                arrayListS0 = dVar4.s0();
                arrayList = new ArrayList();
                i11 = 0;
                while (i11 < arrayListS0.size()) {
                    if (i11 == 0) {
                        HashMap map116 = new HashMap();
                        map116.put("category_id", str37);
                        str18 = str31;
                        map116.put(str18, channelListActivity13.getString(R.string.xc_favorites));
                        obj14 = obj27;
                        str17 = str29;
                        map116.put(obj14, str17);
                        arrayList.add(map116);
                        if (str16.equals(str14)) {
                            HashMap map117 = new HashMap();
                            map117.put("category_id", str33);
                            map117.put(str18, channelListActivity13.getString(R.string.xc_recently_added));
                            map117.put(obj14, str17);
                            arrayList.add(map117);
                        }
                        str19 = str28;
                        HashMap mapM3 = p000a.r.m("category_id", "99997", str18, str19);
                        mapM3.put(obj14, str17);
                        arrayList.add(mapM3);
                    } else {
                        obj14 = obj27;
                        str17 = str29;
                        str18 = str31;
                        str33 = str33;
                        str14 = str14;
                        str19 = str28;
                    }
                    str20 = str64;
                    str21 = str62;
                    if (U2.z(str20, str21, str21)) {
                        channelListActivity3 = channelListActivity13;
                        str62 = str21;
                        str28 = str19;
                        str24 = str63;
                        obj15 = obj51;
                        if (bVar8.N(((h7.a) arrayListS0.get(i11)).f25421a, "VOD", z4.q0.q().c(str24, str15)).equals(obj15)) {
                            str23 = str27;
                            if (str16.equals(str23)) {
                                bVar3 = bVar8;
                                str22 = str15;
                                bVar4 = bVar9;
                                if (bVar4.c0(((h7.a) arrayListS0.get(i11)).f25422b, "VOD").equals(obj15)) {
                                    HashMap map118 = new HashMap();
                                    str64 = str20;
                                    map118.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                    map118.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                    map118.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                    arrayList.add(map118);
                                } else {
                                    str64 = str20;
                                }
                            } else {
                                bVar3 = bVar8;
                                str64 = str20;
                                str22 = str15;
                                bVar4 = bVar9;
                                HashMap map119 = new HashMap();
                                map119.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                                map119.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                                map119.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                                arrayList.add(map119);
                            }
                        } else {
                            bVar3 = bVar8;
                            str64 = str20;
                            str22 = str15;
                            bVar4 = bVar9;
                            str23 = str27;
                        }
                    } else {
                        channelListActivity3 = channelListActivity13;
                        str28 = str19;
                        bVar3 = bVar8;
                        str62 = str21;
                        str64 = str20;
                        str22 = str15;
                        bVar4 = bVar9;
                        str23 = str27;
                        str24 = str63;
                        obj15 = obj51;
                        if (!str16.equals(str23)) {
                            HashMap map1110 = new HashMap();
                            map1110.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                            map1110.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                            map1110.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                            arrayList.add(map1110);
                        } else if (bVar4.c0(((h7.a) arrayListS0.get(i11)).f25422b, "VOD").equals(obj15)) {
                            HashMap map1111 = new HashMap();
                            map1111.put("category_id", ((h7.a) arrayListS0.get(i11)).f25421a);
                            map1111.put(str18, ((h7.a) arrayListS0.get(i11)).f25422b);
                            map1111.put(obj14, ((h7.a) arrayListS0.get(i11)).f25423c);
                            arrayList.add(map1111);
                        }
                    }
                    i11++;
                    str27 = str23;
                    str63 = str24;
                    obj51 = obj15;
                    str14 = str14;
                    str33 = str33;
                    channelListActivity13 = channelListActivity3;
                    bVar8 = bVar3;
                    obj27 = obj14;
                    str29 = str17;
                    str31 = str18;
                    bVar9 = bVar4;
                    str37 = str37;
                    channelListActivity4 = channelListActivity4;
                    str15 = str22;
                }
                channelListActivity4.f28448K = arrayList;
                break;
            default:
                channelListActivity4.f28450M = new ArrayList();
                new ArrayList();
                boolean zEquals3 = channelListActivity4.f28469f0.equals("yes");
                ChannelListActivity channelListActivity14 = channelListActivity4.f28444G;
                if (zEquals3) {
                    channelListActivity4.f28450M.clear();
                    channelListActivity4.f28450M = p190y4.k.M(channelListActivity14, true, channelListActivity4.f28470g0, ChannelListActivity.f28436r0, "0", HttpUrl.FRAGMENT_ENCODE_SET);
                    channelListActivity4.f28469f0 = "no";
                } else if (channelListActivity4.f28473j0.equals("00000")) {
                    channelListActivity4.f28450M.clear();
                    channelListActivity4.f28450M = p190y4.k.M(channelListActivity14, false, channelListActivity4.f28470g0, ChannelListActivity.f28436r0, "00000", HttpUrl.FRAGMENT_ENCODE_SET);
                } else if (channelListActivity4.f28473j0.equals("99999")) {
                    channelListActivity4.f28450M.clear();
                    channelListActivity4.f28450M = p190y4.k.M(channelListActivity14, false, channelListActivity4.f28470g0, ChannelListActivity.f28436r0, "99999", HttpUrl.FRAGMENT_ENCODE_SET);
                } else if (!channelListActivity4.f28473j0.equals("99997")) {
                    channelListActivity4.f28450M.clear();
                    channelListActivity4.f28450M = p190y4.k.M(channelListActivity14, false, "all", ChannelListActivity.f28436r0, "0", channelListActivity4.f28473j0);
                } else {
                    channelListActivity4.f28450M.clear();
                    ArrayList arrayListE0 = channelListActivity4.f28452O.E0();
                    channelListActivity4.f28449L = arrayListE0;
                    if (arrayListE0.size() > 0) {
                        ArrayList arrayListM = p190y4.k.M(channelListActivity14, true, "all", ChannelListActivity.f28436r0, "0", HttpUrl.FRAGMENT_ENCODE_SET);
                        int i15 = 0;
                        while (i15 < channelListActivity4.f28449L.size()) {
                            String[] strArrSplit2 = ((h7.g) channelListActivity4.f28449L.get(i15)).f25460a.split(str26);
                            if (U2.z(str36, str39, strArrSplit2[0])) {
                                int i16 = 0;
                                while (i16 < arrayListM.size()) {
                                    if (!strArrSplit2[1].equals(((HashMap) arrayListM.get(i16)).get("stream_id"))) {
                                        i15 = i15;
                                        obj16 = obj28;
                                        obj17 = obj29;
                                        obj18 = obj37;
                                        str26 = str26;
                                        obj19 = obj36;
                                        str40 = str40;
                                        obj20 = obj35;
                                        str36 = str36;
                                        obj21 = obj34;
                                        str38 = str38;
                                        obj22 = obj33;
                                        str35 = str35;
                                        obj23 = obj32;
                                        str39 = str39;
                                        obj24 = obj31;
                                        str30 = str30;
                                        obj25 = obj30;
                                    } else if (U2.z(str35, str38, str38)) {
                                        if (channelListActivity4.f28453P.N((String) ((HashMap) arrayListM.get(i16)).get("category_id"), str30, z4.q0.q().c(str36, str39)).equals(str40)) {
                                            obj16 = obj28;
                                            obj26 = obj37;
                                            obj19 = obj36;
                                            obj20 = obj35;
                                            obj21 = obj34;
                                            obj22 = obj33;
                                            obj23 = obj32;
                                            obj24 = obj31;
                                            obj25 = obj30;
                                        } else {
                                            HashMap map20 = new HashMap();
                                            obj26 = obj37;
                                            map20.put(obj26, (String) ((HashMap) arrayListM.get(i16)).get(obj26));
                                            obj19 = obj36;
                                            map20.put(obj19, (String) ((HashMap) arrayListM.get(i16)).get(obj19));
                                            obj20 = obj35;
                                            map20.put(obj20, (String) ((HashMap) arrayListM.get(i16)).get(obj20));
                                            map20.put("stream_id", (String) ((HashMap) arrayListM.get(i16)).get("stream_id"));
                                            obj21 = obj34;
                                            map20.put(obj21, (String) ((HashMap) arrayListM.get(i16)).get(obj21));
                                            obj22 = obj33;
                                            map20.put(obj22, (String) ((HashMap) arrayListM.get(i16)).get(obj22));
                                            obj23 = obj32;
                                            map20.put(obj23, (String) ((HashMap) arrayListM.get(i16)).get(obj23));
                                            obj24 = obj31;
                                            map20.put(obj24, (String) ((HashMap) arrayListM.get(i16)).get(obj24));
                                            map20.put("category_id", (String) ((HashMap) arrayListM.get(i16)).get("category_id"));
                                            obj25 = obj30;
                                            map20.put(obj25, (String) ((HashMap) arrayListM.get(i16)).get(obj25));
                                            Object obj52 = obj29;
                                            map20.put(obj52, (String) ((HashMap) arrayListM.get(i16)).get(obj52));
                                            obj16 = obj28;
                                            map20.put(obj16, (String) ((HashMap) arrayListM.get(i16)).get(obj16));
                                            channelListActivity4.f28450M.add(map20);
                                        }
                                        obj18 = obj26;
                                        obj17 = obj29;
                                    } else {
                                        i15 = i15;
                                        obj16 = obj28;
                                        Object obj53 = obj37;
                                        str26 = str26;
                                        obj19 = obj36;
                                        str40 = str40;
                                        obj20 = obj35;
                                        str36 = str36;
                                        obj21 = obj34;
                                        str38 = str38;
                                        obj22 = obj33;
                                        str35 = str35;
                                        obj23 = obj32;
                                        str39 = str39;
                                        obj24 = obj31;
                                        str30 = str30;
                                        obj25 = obj30;
                                        HashMap map21 = new HashMap();
                                        map21.put(obj53, (String) ((HashMap) arrayListM.get(i16)).get(obj53));
                                        map21.put(obj19, (String) ((HashMap) arrayListM.get(i16)).get(obj19));
                                        map21.put(obj20, (String) ((HashMap) arrayListM.get(i16)).get(obj20));
                                        map21.put("stream_id", (String) ((HashMap) arrayListM.get(i16)).get("stream_id"));
                                        map21.put(obj21, (String) ((HashMap) arrayListM.get(i16)).get(obj21));
                                        map21.put(obj22, (String) ((HashMap) arrayListM.get(i16)).get(obj22));
                                        map21.put(obj23, (String) ((HashMap) arrayListM.get(i16)).get(obj23));
                                        map21.put(obj24, (String) ((HashMap) arrayListM.get(i16)).get(obj24));
                                        map21.put("category_id", (String) ((HashMap) arrayListM.get(i16)).get("category_id"));
                                        map21.put(obj25, (String) ((HashMap) arrayListM.get(i16)).get(obj25));
                                        obj18 = obj53;
                                        obj17 = obj29;
                                        map21.put(obj17, (String) ((HashMap) arrayListM.get(i16)).get(obj17));
                                        map21.put(obj16, (String) ((HashMap) arrayListM.get(i16)).get(obj16));
                                        channelListActivity4.f28450M.add(map21);
                                    }
                                    i16++;
                                    strArrSplit2 = strArrSplit2;
                                    obj28 = obj16;
                                    obj29 = obj17;
                                    obj30 = obj25;
                                    i15 = i15;
                                    str30 = str30;
                                    obj31 = obj24;
                                    str39 = str39;
                                    obj32 = obj23;
                                    str35 = str35;
                                    obj33 = obj22;
                                    str38 = str38;
                                    obj34 = obj21;
                                    str36 = str36;
                                    obj35 = obj20;
                                    str40 = str40;
                                    obj36 = obj19;
                                    str26 = str26;
                                    obj37 = obj18;
                                }
                            }
                            Object obj54 = obj37;
                            String str65 = str26;
                            Object obj55 = obj36;
                            String str66 = str40;
                            Object obj56 = obj35;
                            String str67 = str36;
                            Object obj57 = obj34;
                            String str68 = str38;
                            Object obj58 = obj33;
                            String str69 = str35;
                            Object obj59 = obj32;
                            String str70 = str39;
                            obj28 = obj28;
                            i15++;
                            obj29 = obj29;
                            obj30 = obj30;
                            str30 = str30;
                            obj31 = obj31;
                            str39 = str70;
                            obj32 = obj59;
                            str35 = str69;
                            obj33 = obj58;
                            str38 = str68;
                            obj34 = obj57;
                            str36 = str67;
                            obj35 = obj56;
                            str40 = str66;
                            obj36 = obj55;
                            str26 = str65;
                            obj37 = obj54;
                        }
                    }
                }
                break;
        }
    }

    public final void c(Void r18) {
        String str;
        String str2;
        G g8;
        int i8 = this.f9976a;
        int i9 = 3;
        ChannelListActivity channelListActivity = this.f9977b;
        switch (i8) {
            case 0:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                ChannelListActivity.f28441w0.invalidateViews();
                break;
            case 1:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                ChannelListActivity.f28441w0.invalidateViews();
                break;
            case 2:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                ChannelListActivity.f28441w0.invalidateViews();
                break;
            case 3:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                ChannelListActivity.f28442x0.setAdapter((ListAdapter) new C0549t(0, channelListActivity, channelListActivity.f28448K));
                if (channelListActivity.f28452O.v0(z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_series").equals("yes")) {
                    ChannelListActivity.f28442x0.setSelection(0);
                    channelListActivity.f28473j0 = "99999";
                    ChannelListActivity channelListActivity2 = channelListActivity.f28444G;
                    channelListActivity.f28472i0 = channelListActivity2.getString(R.string.xc_favorites);
                    z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                    channelListActivity.f28463Z.setText(channelListActivity2.getString(R.string.xc_favorites));
                    z4.q0.q().f(0, "ORT_SELECTED_POS");
                } else if (channelListActivity.f28448K.size() > 1) {
                    ChannelListActivity.f28442x0.setSelection(1);
                    z4.q0.q().f(1, "ORT_SELECTED_POS");
                    channelListActivity.f28472i0 = (String) ((HashMap) channelListActivity.f28448K.get(1)).get("category_name");
                    z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                    channelListActivity.f28473j0 = (String) ((HashMap) channelListActivity.f28448K.get(1)).get("category_id");
                    channelListActivity.f28463Z.setText(channelListActivity.f28472i0);
                } else {
                    channelListActivity.f28463Z.setText("Not Found!");
                }
                ChannelListActivity.f28442x0.requestFocus();
                ChannelListActivity.b(channelListActivity);
                int i10 = 1;
                ChannelListActivity.f28442x0.setOnItemClickListener(new C0514f(this, i10));
                ChannelListActivity.f28442x0.setOnItemLongClickListener(new E(this, 0));
                ChannelListActivity.f28441w0.setOnItemLongClickListener(new E(this, i10));
                break;
            case 4:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                ChannelListActivity.f28441w0.setAdapter((ListAdapter) new G(2, channelListActivity, channelListActivity.f28450M));
                break;
            case 5:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                ChannelListActivity.f28442x0.setAdapter((ListAdapter) new C0549t(0, channelListActivity, channelListActivity.f28448K));
                boolean zEquals = z4.q0.q().c("ORT_WHICH_CAT", "TV").equals("TV");
                ChannelListActivity channelListActivity3 = channelListActivity.f28444G;
                if (zEquals) {
                    if (z4.q0.q().a("ORT_isLoadLastLiveTVChannel", false)) {
                        channelListActivity.f28473j0 = z4.q0.q().c("ORT_LAST_CATEGORY_ID", HttpUrl.FRAGMENT_ENCODE_SET);
                        channelListActivity.f28472i0 = z4.q0.q().c("ORT_LAST_CATEGORY_NAME", HttpUrl.FRAGMENT_ENCODE_SET);
                        z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                        channelListActivity.f28463Z.setText(channelListActivity.f28472i0);
                        z4.q0.q().f(5, "ORT_SELECTED_POS");
                        Intent intent = new Intent(channelListActivity3, (Class<?>) PlayStreamEPGActivity.class);
                        intent.putExtra("streamurl", z4.q0.q().c("ORT_LAST_STREAM_URL", HttpUrl.FRAGMENT_ENCODE_SET));
                        intent.putExtra("name", z4.q0.q().c("ORT_LAST_CHANNEL_NAME", HttpUrl.FRAGMENT_ENCODE_SET));
                        intent.putExtra("stream_id", z4.q0.q().c("ORT_LAST_STREAM_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                        intent.putExtra("position", z4.q0.q().c("ORT_LAST_CHANNEL_POS", HttpUrl.FRAGMENT_ENCODE_SET));
                        channelListActivity3.startActivity(intent);
                    } else if (channelListActivity.f28448K.size() <= 2) {
                        z4.q0.q().g("ORT_CAT_NAME", "TV");
                        channelListActivity.f28463Z.setText("Not Found!");
                    } else if (channelListActivity.f28471h0.equals("yes")) {
                        channelListActivity.f28473j0 = "99999";
                        channelListActivity.f28472i0 = channelListActivity3.getString(R.string.xc_favorites);
                        z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                        channelListActivity.f28463Z.setText(channelListActivity3.getString(R.string.xc_favorites));
                        z4.q0.q().f(0, "ORT_SELECTED_POS");
                    } else {
                        if (channelListActivity.f28452O.v0(z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_live").equals("yes")) {
                            channelListActivity.f28473j0 = "99999";
                            channelListActivity.f28472i0 = channelListActivity3.getString(R.string.xc_favorites);
                            z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                            channelListActivity.f28463Z.setText(channelListActivity3.getString(R.string.xc_favorites));
                            z4.q0.q().f(0, "ORT_SELECTED_POS");
                        } else {
                            channelListActivity.f28472i0 = (String) ((HashMap) channelListActivity.f28448K.get(2)).get("category_name");
                            z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                            channelListActivity.f28473j0 = (String) ((HashMap) channelListActivity.f28448K.get(2)).get("category_id");
                            channelListActivity.f28463Z.setText(channelListActivity.f28472i0);
                            z4.q0.q().f(2, "ORT_SELECTED_POS");
                        }
                    }
                    str = "CATCHUP";
                    str2 = "RADIO";
                } else {
                    str = "CATCHUP";
                    if (U2.z("ORT_WHICH_CAT", "TV", str)) {
                        str2 = "RADIO";
                    } else {
                        str2 = "RADIO";
                        if (!U2.z("ORT_WHICH_CAT", "TV", str2)) {
                            channelListActivity.f28472i0 = (String) ((HashMap) channelListActivity.f28448K.get(0)).get("category_name");
                            z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                            channelListActivity.f28473j0 = (String) ((HashMap) channelListActivity.f28448K.get(0)).get("category_id");
                            channelListActivity.f28463Z.setText(channelListActivity.f28472i0);
                            z4.q0.q().f(0, "ORT_SELECTED_POS");
                        }
                    }
                    if (channelListActivity.f28448K.size() > 0) {
                        channelListActivity.f28472i0 = (String) ((HashMap) channelListActivity.f28448K.get(0)).get("category_name");
                        z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                        channelListActivity.f28473j0 = (String) ((HashMap) channelListActivity.f28448K.get(0)).get("category_id");
                        channelListActivity.f28463Z.setText(channelListActivity.f28472i0);
                    } else {
                        z4.q0.q().g("ORT_CAT_NAME", str2);
                        channelListActivity.f28463Z.setText("Not Found!");
                    }
                }
                ChannelListActivity.f28442x0.requestFocus();
                new D(channelListActivity, 6).execute(new Void[0]);
                String str3 = str;
                ChannelListActivity.f28442x0.setOnItemClickListener(new C0514f(this, 2));
                ChannelListActivity.f28442x0.setOnItemLongClickListener(new F(this, 0));
                if ((z4.q0.q().c("ORT_WHICH_CAT", "TV").equals("TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV") || U2.z("ORT_WHICH_CAT", "TV", str3) || U2.z("ORT_WHICH_CAT", "TV", str2)) && channelListActivity.f28445H.contains("tv_arraylist_search")) {
                    ChannelListActivity.f28443y0 = Methods.L(channelListActivity3);
                }
                break;
            case 6:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                if (channelListActivity.f28473j0.equals("99998")) {
                    channelListActivity.f28473j0 = "99998";
                    channelListActivity.f28472i0 = "RECENT SEARCH";
                    z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                    g8 = new G(1, channelListActivity, ChannelListActivity.f28443y0);
                } else {
                    g8 = new G(1, channelListActivity, channelListActivity.f28450M);
                }
                ChannelListActivity.f28441w0.setAdapter((ListAdapter) g8);
                if (!z4.q0.q().a("ORT_isLoadLastLiveTVChannel", false)) {
                    channelListActivity.f28468e0.setVisibility(8);
                }
                ChannelListActivity.f28441w0.setOnItemLongClickListener(new F(this, 1));
                break;
            case 7:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                if (channelListActivity.f28452O.v0(z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_vod").equals("yes")) {
                    channelListActivity.f28473j0 = "99999";
                    ChannelListActivity channelListActivity4 = channelListActivity.f28444G;
                    channelListActivity.f28472i0 = channelListActivity4.getString(R.string.xc_favorites);
                    z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                    channelListActivity.f28463Z.setText(channelListActivity4.getString(R.string.xc_favorites));
                    ChannelListActivity.f28442x0.setSelection(0);
                    z4.q0.q().f(0, "ORT_SELECTED_POS");
                } else if (channelListActivity.f28448K.size() > 1) {
                    channelListActivity.f28472i0 = (String) ((HashMap) channelListActivity.f28448K.get(1)).get("category_name");
                    z4.q0.q().g("ORT_CAT_NAME", channelListActivity.f28472i0);
                    channelListActivity.f28473j0 = (String) ((HashMap) channelListActivity.f28448K.get(1)).get("category_id");
                    channelListActivity.f28463Z.setText(channelListActivity.f28472i0);
                    z4.q0.q().f(1, "ORT_SELECTED_POS");
                    ChannelListActivity.f28442x0.setSelection(1);
                } else {
                    channelListActivity.f28463Z.setText("Not Found!");
                }
                ChannelListActivity.b(channelListActivity);
                ChannelListActivity.f28442x0.setAdapter((ListAdapter) new C0549t(0, channelListActivity, channelListActivity.f28448K));
                ChannelListActivity.f28442x0.requestFocus();
                ChannelListActivity.f28442x0.setOnItemClickListener(new C0514f(this, 3));
                ChannelListActivity.f28442x0.setOnItemLongClickListener(new F(this, 2));
                break;
            default:
                super.onPostExecute(r18);
                channelListActivity.f28446I.setVisibility(4);
                ChannelListActivity.f28441w0.setAdapter((ListAdapter) new G(0, channelListActivity, channelListActivity.f28450M));
                ChannelListActivity.f28441w0.setOnItemLongClickListener(new F(this, i9));
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        switch (this.f9976a) {
            case 0:
                a((Void[]) objArr);
                break;
            case 1:
                a((Void[]) objArr);
                break;
            case 2:
                a((Void[]) objArr);
                break;
            case 3:
                a((Void[]) objArr);
                break;
            case 4:
                a((Void[]) objArr);
                break;
            case 5:
                a((Void[]) objArr);
                break;
            case 6:
                a((Void[]) objArr);
                break;
            case 7:
                a((Void[]) objArr);
                break;
            default:
                a((Void[]) objArr);
                break;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        int i8 = this.f9976a;
        ChannelListActivity channelListActivity = this.f9977b;
        switch (i8) {
            case 0:
                channelListActivity.f28446I.setVisibility(4);
                super.onCancelled();
                break;
            case 1:
                channelListActivity.f28446I.setVisibility(4);
                super.onCancelled();
                break;
            case 2:
                channelListActivity.f28446I.setVisibility(4);
                super.onCancelled();
                break;
            case 3:
            case 4:
            case 5:
            default:
                super.onCancelled();
                break;
            case 6:
                channelListActivity.f28446I.setVisibility(4);
                super.onCancelled();
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        switch (this.f9976a) {
            case 0:
                c((Void) obj);
                break;
            case 1:
                c((Void) obj);
                break;
            case 2:
                c((Void) obj);
                break;
            case 3:
                c((Void) obj);
                break;
            case 4:
                c((Void) obj);
                break;
            case 5:
                c((Void) obj);
                break;
            case 6:
                c((Void) obj);
                break;
            case 7:
                c((Void) obj);
                break;
            default:
                c((Void) obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        int i8 = this.f9976a;
        ChannelListActivity channelListActivity = this.f9977b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                break;
            case 1:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                break;
            case 2:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                break;
            case 3:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                break;
            case 4:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                channelListActivity.f28470g0 = channelListActivity.f28464a0.getText().toString();
                break;
            case 5:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                break;
            case 6:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                channelListActivity.f28470g0 = channelListActivity.f28464a0.getText().toString();
                if (channelListActivity.f28469f0.equals("yes")) {
                    channelListActivity.f28472i0 = "RECENT SEARCH";
                    channelListActivity.f28473j0 = "99998";
                    z4.q0.q().f(1, "ORT_SELECTED_POS");
                }
                break;
            case 7:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                break;
            default:
                super.onPreExecute();
                channelListActivity.f28446I.setVisibility(0);
                channelListActivity.f28470g0 = channelListActivity.f28464a0.getText().toString();
                break;
        }
    }

    public /* synthetic */ D(ChannelListActivity channelListActivity, int i8) {
        this.f9976a = i8;
        this.f9977b = channelListActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(ChannelListActivity channelListActivity, p000a.r rVar) {
        this(channelListActivity, 2);
        this.f9976a = 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(ChannelListActivity channelListActivity, AbstractC0559y abstractC0559y) {
        this(channelListActivity, 4);
        this.f9976a = 4;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(ChannelListActivity channelListActivity, AbstractC0561z abstractC0561z) {
        this(channelListActivity, 7);
        this.f9976a = 7;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(ChannelListActivity channelListActivity, A a8) {
        this(channelListActivity, 8);
        this.f9976a = 8;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(ChannelListActivity channelListActivity, B b8) {
        this(channelListActivity, 5);
        this.f9976a = 5;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(ChannelListActivity channelListActivity, C c8) {
        this(channelListActivity, 3);
        this.f9976a = 3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(ChannelListActivity channelListActivity, Object obj) {
        this(channelListActivity, 1);
        this.f9976a = 1;
    }
}
