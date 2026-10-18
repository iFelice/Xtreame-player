package a7;

import F0.j;
import F0.m;
import J6.a0;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Looper;
import android.provider.Settings;
import android.util.Base64;
import c7.d;
import com.google.android.gms.internal.ads.AbstractC1760o8;
import com.google.android.gms.internal.ads.C0800Ka;
import com.google.android.gms.internal.ads.C1029a1;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.G0;
import com.google.android.gms.internal.ads.K4;
import com.google.android.gms.internal.ads.Q9;
import com.google.android.gms.internal.ads.S1;
import com.google.android.gms.internal.ads.T1;
import com.google.android.gms.internal.ads.Zo;
import com.google.protobuf.U2;
import h7.h;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
import p000a.r;
import p039f.AbstractC2987b;
import p120p3.g;
import p141s0.C3187l;
import p141s0.C3188m;
import p185x6.e;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static C3188m a(m mVar, String str, j jVar, int i8) {
        C3187l c3187l = new C3187l();
        c3187l.f29953a = Q3.b.w(str, jVar.f3060c);
        c3187l.f29958f = jVar.f3058a;
        c3187l.f29959g = jVar.f3059b;
        String strK = mVar.k();
        if (strK == null) {
            strK = jVar.b(((F0.b) mVar.f3067b.get(0)).f3010a).toString();
        }
        c3187l.d(strK);
        c3187l.b(i8);
        c3187l.c();
        return c3187l.a();
    }

    public static Object b(Class cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(b.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static boolean c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static ArrayList d(Context context, String str) {
        d dVar = new d(context);
        c7.b bVar = new c7.b(context, 1);
        ArrayList arrayList = new ArrayList();
        new ArrayList().clear();
        ArrayList arrayList2 = dVar.f11488I;
        arrayList2.clear();
        int i8 = 0;
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = dVar.getWritableDatabase().rawQuery("SELECT * FROM series WHERE name=?", new String[]{str});
            if (cursorRawQuery.moveToFirst()) {
                do {
                    h hVar = new h();
                    hVar.f25462a = cursorRawQuery.getString(0);
                    hVar.f25463b = cursorRawQuery.getString(1);
                    hVar.f25464c = cursorRawQuery.getString(2);
                    hVar.f25465d = cursorRawQuery.getString(3);
                    hVar.f25466e = cursorRawQuery.getString(4);
                    hVar.f25467f = cursorRawQuery.getString(5);
                    hVar.f25468g = cursorRawQuery.getString(6);
                    hVar.f25469h = cursorRawQuery.getString(7);
                    hVar.f25470i = cursorRawQuery.getString(8);
                    hVar.f25471j = cursorRawQuery.getString(9);
                    hVar.f25472k = cursorRawQuery.getString(10);
                    hVar.f25473l = cursorRawQuery.getString(11);
                    hVar.f25474m = cursorRawQuery.getString(12);
                    hVar.f25475n = cursorRawQuery.getString(13);
                    hVar.f25476o = cursorRawQuery.getString(14);
                    hVar.f25477p = cursorRawQuery.getString(15);
                    arrayList2.add(hVar);
                } while (cursorRawQuery.moveToNext());
            }
            if (!cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
        } catch (Throwable unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
            }
        }
        while (i8 < arrayList2.size()) {
            ArrayList arrayList3 = arrayList;
            if (!U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                HashMap map = new HashMap();
                map.put("num", ((h) arrayList2.get(i8)).f25462a);
                map.put("name", ((h) arrayList2.get(i8)).f25463b);
                map.put("series_id", ((h) arrayList2.get(i8)).f25464c);
                map.put("cover", ((h) arrayList2.get(i8)).f25465d);
                map.put("plot", ((h) arrayList2.get(i8)).f25466e);
                map.put("cast", ((h) arrayList2.get(i8)).f25467f);
                map.put("director", ((h) arrayList2.get(i8)).f25468g);
                map.put("genre", ((h) arrayList2.get(i8)).f25469h);
                map.put("releaseDate", ((h) arrayList2.get(i8)).f25470i);
                map.put("last_modified", ((h) arrayList2.get(i8)).f25471j);
                map.put("rating", ((h) arrayList2.get(i8)).f25472k);
                map.put("rating_5based", ((h) arrayList2.get(i8)).f25473l);
                map.put("backdrop_path", ((h) arrayList2.get(i8)).f25474m);
                map.put("youtube_trailer", ((h) arrayList2.get(i8)).f25475n);
                map.put("episode_run_time", ((h) arrayList2.get(i8)).f25476o);
                map.put("category_id", ((h) arrayList2.get(i8)).f25477p);
                arrayList = arrayList3;
                arrayList.add(map);
            } else if (bVar.N(((h) arrayList2.get(i8)).f25477p, "SERIES", q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET)).equals("yes")) {
                arrayList = arrayList3;
            } else {
                HashMap map2 = new HashMap();
                map2.put("num", ((h) arrayList2.get(i8)).f25462a);
                map2.put("name", ((h) arrayList2.get(i8)).f25463b);
                map2.put("series_id", ((h) arrayList2.get(i8)).f25464c);
                map2.put("cover", ((h) arrayList2.get(i8)).f25465d);
                map2.put("plot", ((h) arrayList2.get(i8)).f25466e);
                map2.put("cast", ((h) arrayList2.get(i8)).f25467f);
                map2.put("director", ((h) arrayList2.get(i8)).f25468g);
                map2.put("genre", ((h) arrayList2.get(i8)).f25469h);
                map2.put("releaseDate", ((h) arrayList2.get(i8)).f25470i);
                map2.put("last_modified", ((h) arrayList2.get(i8)).f25471j);
                map2.put("rating", ((h) arrayList2.get(i8)).f25472k);
                map2.put("rating_5based", ((h) arrayList2.get(i8)).f25473l);
                map2.put("backdrop_path", ((h) arrayList2.get(i8)).f25474m);
                map2.put("youtube_trailer", ((h) arrayList2.get(i8)).f25475n);
                map2.put("episode_run_time", ((h) arrayList2.get(i8)).f25476o);
                map2.put("category_id", ((h) arrayList2.get(i8)).f25477p);
                arrayList = arrayList3;
                arrayList.add(map2);
            }
            i8++;
            bVar = bVar;
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00e5 A[PHI: r3
      0x00e5: PHI (r3v3 android.database.Cursor) = (r3v2 android.database.Cursor), (r3v4 android.database.Cursor) binds: [B:19:0x00ef, B:15:0x00e3] A[DONT_GENERATE, DONT_INLINE]] */
    public static ArrayList e(Context context, boolean z7, String str, String str2, String str3, String str4) {
        ArrayList arrayListP0;
        d dVar = new d(context);
        c7.b bVar = new c7.b(context, 1);
        int i8 = 0;
        new c7.b(context, 0);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.clear();
        String str5 = HttpUrl.FRAGMENT_ENCODE_SET;
        String str6 = "ORT_PROFILE_ID";
        if (z7) {
            arrayList2.clear();
            arrayListP0 = dVar.p0(str, "0", str2);
        } else if (str3.equals("00000")) {
            arrayList2.clear();
            arrayListP0 = dVar.f11488I;
            arrayListP0.clear();
            SQLiteDatabase writableDatabase = dVar.getWritableDatabase();
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM series ORDER BY CAST(last_modified AS INT)  DESC LIMIT 25 ", null);
                if (cursorRawQuery.moveToFirst()) {
                    do {
                        h hVar = new h();
                        hVar.f25462a = cursorRawQuery.getString(0);
                        hVar.f25463b = cursorRawQuery.getString(1);
                        hVar.f25464c = cursorRawQuery.getString(2);
                        hVar.f25465d = cursorRawQuery.getString(3);
                        hVar.f25466e = cursorRawQuery.getString(4);
                        hVar.f25467f = cursorRawQuery.getString(5);
                        hVar.f25468g = cursorRawQuery.getString(6);
                        hVar.f25469h = cursorRawQuery.getString(7);
                        hVar.f25470i = cursorRawQuery.getString(8);
                        hVar.f25471j = cursorRawQuery.getString(9);
                        hVar.f25472k = cursorRawQuery.getString(10);
                        hVar.f25473l = cursorRawQuery.getString(11);
                        hVar.f25474m = cursorRawQuery.getString(12);
                        hVar.f25475n = cursorRawQuery.getString(13);
                        hVar.f25476o = cursorRawQuery.getString(14);
                        hVar.f25477p = cursorRawQuery.getString(15);
                        arrayListP0.add(hVar);
                    } while (cursorRawQuery.moveToNext());
                }
                if (!cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            } catch (Throwable unused) {
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            }
        } else if (str3.equals("99999")) {
            arrayList2.clear();
            arrayListP0 = dVar.o0(str2, q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
        } else {
            arrayList2.clear();
            arrayListP0 = dVar.p0("all", str4, str2);
        }
        while (i8 < arrayListP0.size()) {
            ArrayList arrayList3 = arrayList;
            if (!U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                HashMap map = new HashMap();
                map.put("num", ((h) arrayListP0.get(i8)).f25462a);
                map.put("name", ((h) arrayListP0.get(i8)).f25463b);
                map.put("series_id", ((h) arrayListP0.get(i8)).f25464c);
                map.put("cover", ((h) arrayListP0.get(i8)).f25465d);
                map.put("plot", ((h) arrayListP0.get(i8)).f25466e);
                map.put("cast", ((h) arrayListP0.get(i8)).f25467f);
                map.put("director", ((h) arrayListP0.get(i8)).f25468g);
                map.put("genre", ((h) arrayListP0.get(i8)).f25469h);
                map.put("releaseDate", ((h) arrayListP0.get(i8)).f25470i);
                map.put("last_modified", ((h) arrayListP0.get(i8)).f25471j);
                map.put("rating", ((h) arrayListP0.get(i8)).f25472k);
                map.put("rating_5based", ((h) arrayListP0.get(i8)).f25473l);
                map.put("backdrop_path", ((h) arrayListP0.get(i8)).f25474m);
                map.put("youtube_trailer", ((h) arrayListP0.get(i8)).f25475n);
                map.put("episode_run_time", ((h) arrayListP0.get(i8)).f25476o);
                map.put("category_id", ((h) arrayListP0.get(i8)).f25477p);
                arrayList = arrayList3;
                arrayList.add(map);
            } else if (bVar.N(((h) arrayListP0.get(i8)).f25477p, "SERIES", q0.q().c(str6, str5)).equals("yes")) {
                arrayList = arrayList3;
            } else {
                HashMap map2 = new HashMap();
                map2.put("num", ((h) arrayListP0.get(i8)).f25462a);
                map2.put("name", ((h) arrayListP0.get(i8)).f25463b);
                map2.put("series_id", ((h) arrayListP0.get(i8)).f25464c);
                map2.put("cover", ((h) arrayListP0.get(i8)).f25465d);
                map2.put("plot", ((h) arrayListP0.get(i8)).f25466e);
                map2.put("cast", ((h) arrayListP0.get(i8)).f25467f);
                map2.put("director", ((h) arrayListP0.get(i8)).f25468g);
                map2.put("genre", ((h) arrayListP0.get(i8)).f25469h);
                map2.put("releaseDate", ((h) arrayListP0.get(i8)).f25470i);
                map2.put("last_modified", ((h) arrayListP0.get(i8)).f25471j);
                map2.put("rating", ((h) arrayListP0.get(i8)).f25472k);
                map2.put("rating_5based", ((h) arrayListP0.get(i8)).f25473l);
                map2.put("backdrop_path", ((h) arrayListP0.get(i8)).f25474m);
                map2.put("youtube_trailer", ((h) arrayListP0.get(i8)).f25475n);
                map2.put("episode_run_time", ((h) arrayListP0.get(i8)).f25476o);
                map2.put("category_id", ((h) arrayListP0.get(i8)).f25477p);
                arrayList = arrayList3;
                arrayList.add(map2);
            }
            i8++;
            str6 = str6;
            bVar = bVar;
            str5 = str5;
        }
        return arrayList;
    }

    public static String f(int i8) {
        switch (i8) {
            case -1:
                return "SUCCESS_CACHE";
            case 0:
                return "SUCCESS";
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                return r.f("unknown status code: ", i8);
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 10:
                return "DEVELOPER_ERROR";
            case 13:
                return "ERROR";
            case 14:
                return "INTERRUPTED";
            case 15:
                return "TIMEOUT";
            case 16:
                return "CANCELED";
            case 17:
                return "API_NOT_CONNECTED";
            case 18:
                return "DEAD_CLIENT";
            case 19:
                return "REMOTE_EXCEPTION";
            case 20:
                return "CONNECTION_SUSPENDED_DURING_CALL";
            case 21:
                return "RECONNECTION_TIMED_OUT_DURING_UPDATE";
            case 22:
                return "RECONNECTION_TIMED_OUT";
        }
    }

    public static int g(int i8) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i8) * (-862048943)), 15)) * 461845907);
    }

    public static int h(Object obj) {
        return g(obj == null ? 0 : obj.hashCode());
    }

    public static final void i(e eVar, p185x6.j jVar) {
        if ((eVar instanceof p199z6.d) && jVar.k(a0.f4225G) != null) {
            p199z6.d dVarA = (p199z6.d) eVar;
            do {
                dVarA = dVarA.a();
            } while (dVarA != null);
        }
    }

    public static void j() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("Must be called from the main thread.");
        }
    }

    public static int k(int i8) {
        int i9 = 0;
        while (i8 > 0) {
            i8 >>>= 1;
            i9++;
        }
        return i9;
    }

    public static int l(SQLiteDatabase sQLiteDatabase, int i8) {
        int i9 = 0;
        if (i8 == 2) {
            return 0;
        }
        Cursor cursorV = v(sQLiteDatabase, i8);
        if (cursorV.getCount() > 0) {
            cursorV.moveToNext();
            i9 = cursorV.getInt(cursorV.getColumnIndexOrThrow("value"));
        }
        cursorV.close();
        return i9;
    }

    public static int m(String str) {
        byte[] bytes;
        int length;
        int i8;
        int i9;
        int i10;
        try {
            bytes = str.getBytes("UTF-8");
            while (true) {
                i10 = length & (-4);
                if (i8 >= i10) {
                    break;
                }
                int i11 = ((bytes[i8] & 255) | ((bytes[i8 + 1] & 255) << 8) | ((bytes[i8 + 2] & 255) << 16) | (bytes[i8 + 3] << 24)) * (-862048943);
                int i12 = i9 ^ (((i11 >>> 17) | (i11 << 15)) * 461845907);
                i9 = (((i12 >>> 19) | (i12 << 13)) * 5) - 430675100;
                i8 += 4;
            }
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        length = bytes.length;
        int i13 = 0;
        i8 = 0;
        i9 = 0;
        int i14 = length & 3;
        if (i14 == 1) {
            int i15 = ((bytes[i10] & 255) | i13) * (-862048943);
            i9 ^= ((i15 >>> 17) | (i15 << 15)) * 461845907;
        } else {
            if (i14 != 2) {
                i13 = i14 == 3 ? (bytes[i10 + 2] & 255) << 16 : 0;
            }
            i13 |= (bytes[i10 + 1] & 255) << 8;
            int i16 = ((bytes[i10] & 255) | i13) * (-862048943);
            i9 ^= ((i16 >>> 17) | (i16 << 15)) * 461845907;
        }
        int i17 = i9 ^ length;
        int i18 = (i17 ^ (i17 >>> 16)) * (-2048144789);
        int i19 = (i18 ^ (i18 >>> 13)) * (-1028477387);
        return i19 ^ (i19 >>> 16);
    }

    public static void n(Context context) {
        boolean z7;
        Object obj = g.f28212b;
        if (((Boolean) AbstractC1760o8.f20244a.l()).booleanValue()) {
            try {
                if (Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0) {
                    synchronized (g.f28212b) {
                        z7 = g.f28213c;
                    }
                    if (z7) {
                        return;
                    }
                    D4.b bVarB = new p105n3.j(context).b();
                    p120p3.h.f("Updating ad debug logging enablement.");
                    AbstractC2987b.d0(bVarB, "AdDebugLogUpdater.updateEnablement");
                }
            } catch (Exception e8) {
                p120p3.h.h("Fail to determine debug setting.", e8);
            }
        }
    }

    public static void o(T1 t7, p149t0.d dVar) {
        if (t7.zza() != 0) {
            for (int i8 = 0; i8 < t7.zza(); i8++) {
                long jZzb = t7.zzb(i8);
                ArrayList arrayListZzc = t7.zzc(jZzb);
                if (!arrayListZzc.isEmpty()) {
                    if (i8 == t7.zza() - 1) {
                        throw new IllegalStateException();
                    }
                    long jZzb2 = t7.zzb(i8 + 1) - t7.zzb(i8);
                    if (jZzb2 > 0) {
                        dVar.mo4zza(new S1(arrayListZzc, jZzb, jZzb2));
                    }
                }
            }
        }
    }

    public static Q9 p(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < list.size(); i8++) {
            String str = (String) list.get(i8);
            int i9 = Et.f13234a;
            String[] strArrSplit = str.split("=", 2);
            if (strArrSplit.length != 2) {
                Zo.f("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(G0.a(new C1534jr(Base64.decode(strArrSplit[1], 0))));
                } catch (RuntimeException e8) {
                    Zo.g("VorbisUtil", "Failed to parse vorbis picture", e8);
                }
            } else {
                arrayList.add(new C1029a1(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Q9(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:69:0x0100 A[DONT_INVERT] */
    public static String[] q(String str, boolean z7) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        char[] charArray = str.toCharArray();
        int i8 = 0;
        boolean z8 = false;
        int i9 = 0;
        while (i8 < str.length()) {
            int iCodePointAt = Character.codePointAt(charArray, i8);
            int iCharCount = Character.charCount(iCodePointAt);
            if (Character.isLetter(iCodePointAt)) {
                Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(iCodePointAt);
                if (unicodeBlockOf.equals(Character.UnicodeBlock.BOPOMOFO) || unicodeBlockOf.equals(Character.UnicodeBlock.BOPOMOFO_EXTENDED) || unicodeBlockOf.equals(Character.UnicodeBlock.CJK_COMPATIBILITY) || unicodeBlockOf.equals(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS) || unicodeBlockOf.equals(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT) || unicodeBlockOf.equals(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS) || unicodeBlockOf.equals(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A) || unicodeBlockOf.equals(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B) || unicodeBlockOf.equals(Character.UnicodeBlock.ENCLOSED_CJK_LETTERS_AND_MONTHS) || unicodeBlockOf.equals(Character.UnicodeBlock.HANGUL_JAMO) || unicodeBlockOf.equals(Character.UnicodeBlock.HANGUL_SYLLABLES) || unicodeBlockOf.equals(Character.UnicodeBlock.HIRAGANA) || unicodeBlockOf.equals(Character.UnicodeBlock.KATAKANA) || unicodeBlockOf.equals(Character.UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS) || ((iCodePointAt >= 65382 && iCodePointAt <= 65437) || (iCodePointAt >= 65441 && iCodePointAt <= 65500))) {
                    if (z8) {
                        arrayList.add(new String(charArray, i9, i8 - i9));
                    }
                    arrayList.add(new String(charArray, i8, iCharCount));
                } else {
                    if (!Character.isLetterOrDigit(iCodePointAt) || Character.getType(iCodePointAt) == 6 || Character.getType(iCodePointAt) == 8) {
                        if (true != z8) {
                            i9 = i8;
                        }
                    } else if (z7 && Character.charCount(iCodePointAt) == 1 && Character.toChars(iCodePointAt)[0] == '\'') {
                        if (true != z8) {
                            i9 = i8;
                        }
                    } else if (z8) {
                        arrayList.add(new String(charArray, i9, i8 - i9));
                    }
                    z8 = true;
                }
                z8 = false;
            } else {
                if (Character.isLetterOrDigit(iCodePointAt)) {
                    if (true != z8) {
                        i9 = i8;
                    }
                } else if (true != z8) {
                    i9 = i8;
                }
                z8 = true;
            }
            i8 += iCharCount;
        }
        if (z8) {
            arrayList.add(new String(charArray, i9, i8 - i9));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static K4 r(C1534jr c1534jr, boolean z7, boolean z8) throws C0800Ka {
        if (z7) {
            u(3, c1534jr, false);
        }
        c1534jr.b((int) c1534jr.C(), StandardCharsets.UTF_8);
        long jC = c1534jr.C();
        String[] strArr = new String[(int) jC];
        for (int i8 = 0; i8 < jC; i8++) {
            strArr[i8] = c1534jr.b((int) c1534jr.C(), StandardCharsets.UTF_8);
        }
        if (z8 && (c1534jr.w() & 1) == 0) {
            throw C0800Ka.a("framing bit expected to be set", null);
        }
        return new K4(strArr);
    }

    public static void s(SQLiteDatabase sQLiteDatabase, long j8, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(j8));
        contentValues.put("serialized_proto_data", bArr);
        if (sQLiteDatabase.update("offline_signal_contents", contentValues, "timestamp = ?", new String[]{String.valueOf(j8)}) == 0) {
            sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
        }
    }

    public static final void t(StringBuilder sb, Iterator it, String str) {
        try {
            if (it.hasNext()) {
                Object next = it.next();
                Objects.requireNonNull(next);
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (it.hasNext()) {
                    sb.append((CharSequence) str);
                    Object next2 = it.next();
                    Objects.requireNonNull(next2);
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
        } catch (IOException e8) {
            throw new AssertionError(e8);
        }
    }

    public static boolean u(int i8, C1534jr c1534jr, boolean z7) throws C0800Ka {
        if (c1534jr.o() < 7) {
            if (z7) {
                return false;
            }
            throw C0800Ka.a("too short header: " + c1534jr.o(), null);
        }
        if (c1534jr.w() != i8) {
            if (z7) {
                return false;
            }
            throw C0800Ka.a("expected header type ".concat(String.valueOf(Integer.toHexString(i8))), null);
        }
        if (c1534jr.w() == 118 && c1534jr.w() == 111 && c1534jr.w() == 114 && c1534jr.w() == 98 && c1534jr.w() == 105 && c1534jr.w() == 115) {
            return true;
        }
        if (z7) {
            return false;
        }
        throw C0800Ka.a("expected characters 'vorbis'", null);
    }

    public static Cursor v(SQLiteDatabase sQLiteDatabase, int i8) {
        String[] strArr = {"value"};
        String[] strArr2 = new String[1];
        if (i8 == 0) {
            strArr2[0] = "failed_requests";
        } else if (i8 == 1) {
            strArr2[0] = "total_requests";
        } else if (i8 != 2) {
            strArr2[0] = "completed_requests";
        } else {
            strArr2[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
    }

    public static void w(SQLiteDatabase sQLiteDatabase, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("statistic_name", str);
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.insert("offline_signal_statistics", null, contentValues);
    }

    public static void x(SQLiteDatabase sQLiteDatabase, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{str});
    }
}
