package com.google.android.gms.internal.ads;

import A0.C0022w;
import C2.C0091g;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.widget.PopupWindow;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3099q;
import p090l3.C3117z0;
import p113o3.C3158p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Om, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0871Om implements InterfaceC1195dC, InterfaceC1162cg, Dw, Ew, InterfaceC1942rk, VB, AN, InterfaceC2189wM, InterfaceC1791oo {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15195G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f15196H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f15197I;

    public C0871Om(int i8) {
        this.f15195G = i8;
        if (i8 == 21) {
            this.f15196H = null;
            this.f15197I = Instant.ofEpochMilli(-1L);
        } else {
            Xu xu = new Xu(0);
            this.f15196H = xu;
            this.f15197I = new Xu(xu, 12);
        }
    }

    private final void j() {
        synchronized (((C1122br) this.f15197I)) {
            try {
                ((C1122br) this.f15197I).f18110h.b((Ov) this.f15196H);
                Ov ovA = ((C1122br) this.f15197I).f18110h.a();
                if (((Ov) this.f15196H).f15289v0) {
                    while (ovA != null) {
                        ((C1122br) this.f15197I).b(ovA);
                        ovA = ((C1122br) this.f15197I).f18110h.a();
                    }
                } else if (ovA != null) {
                    ((C1122br) this.f15197I).b(ovA);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final /* bridge */ /* synthetic */ void o(Object obj) {
        InterfaceC1742nr interfaceC1742nr = (InterfaceC1742nr) obj;
        synchronized (((C1122br) this.f15197I)) {
            ((C1122br) this.f15197I).f18110h.c(interfaceC1742nr, (Ov) this.f15196H);
            Ov ovA = ((C1122br) this.f15197I).f18110h.a();
            if (ovA != null) {
                ((C1122br) this.f15197I).b(ovA);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void a(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL, IOException iOException, boolean z7) {
        Pair pairT = t(c2190wN);
        if (pairT != null) {
            ((C2054ts) ((QK) this.f15197I).f16016i).b(new LK(this, pairT, c1827pN, c1721nL, iOException, z7, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1791oo
    public final void b(Object obj, C1751o c1751o) {
        InterfaceC1255eL interfaceC1255eL = (InterfaceC1255eL) obj;
        interfaceC1255eL.e((InterfaceC0959Vc) this.f15197I, new C0871Om(c1751o, ((C2032tL) this.f15196H).f21060K));
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void c(int i8, C2190wN c2190wN, C1721nL c1721nL) {
        Pair pairT = t(c2190wN);
        if (pairT != null) {
            ((C2054ts) ((QK) this.f15197I).f16016i).b(new K.a(this, pairT, c1721nL, 27, 0));
        }
    }

    public final void d(MJ mj) {
        ((List) this.f15197I).add(mj);
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void e(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        Pair pairT = t(c2190wN);
        if (pairT != null) {
            ((C2054ts) ((QK) this.f15197I).f16016i).b(new MK(this, pairT, c1827pN, c1721nL, 1));
        }
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void f(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        Pair pairT = t(c2190wN);
        if (pairT != null) {
            ((C2054ts) ((QK) this.f15197I).f16016i).b(new MK(this, pairT, c1827pN, c1721nL, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1162cg
    public final void g(String str, int i8, String str2, boolean z7) {
        switch (this.f15195G) {
            case 1:
                C2040te c2040te = (C2040te) this.f15197I;
                if (!z7) {
                    c2040te.c(new Exception("Ad Web View failed to load. Error code: " + i8 + ", Description: " + str + ", Failing URL: " + str2));
                } else {
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15749W1)).booleanValue()) {
                        p148t.a.g(p083k3.l.f25980A.f25990j, (Bundle) this.f15196H, "rendering-webview-load-html-end");
                    }
                    c2040te.b(null);
                }
                break;
            default:
                ((C0871Om) this.f15196H).l();
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) this.f15197I;
                interfaceC0715Ef.N0();
                interfaceC0715Ef.zzN().Q0();
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void h(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        Pair pairT = t(c2190wN);
        if (pairT != null) {
            ((C2054ts) ((QK) this.f15197I).f16016i).b(new MK(this, pairT, c1827pN, c1721nL, 2));
        }
    }

    public final void i(C3117z0 c3117z0) {
        ((AbstractC2059tx) this.f15197I).f21167j.set(false);
        int i8 = c3117z0.f26629G;
        if (i8 != 1 && i8 != 8 && i8 != 10 && i8 != 11) {
            AbstractC2059tx.d((AbstractC2059tx) this.f15197I, true);
            return;
        }
        p090l3.T0 t7 = ((AbstractC2059tx) this.f15197I).f21162e;
        p120p3.h.f("Preloading " + t7.f26501H + ", for adUnitId:" + t7.f26500G + ", Ad load failed. Stop preloading due to non-retriable error:");
        ((AbstractC2059tx) this.f15197I).f21163f.set(false);
    }

    public final Jp k(Ip ip) throws C0679Bo {
        HttpURLConnection httpURLConnection;
        URL url;
        InputStreamReader inputStreamReader;
        BufferedOutputStream bufferedOutputStream;
        String str = ip.f14050a;
        int i8 = ip.f14051b;
        Map map = ip.f14052c;
        byte[] bArr = ip.f14053d;
        String str2 = ip.f14054e;
        p083k3.l.f25980A.f25990j.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            Jp jp = new Jp();
            p120p3.h.f("SDK version: " + ((String) this.f15196H));
            p120p3.h.b("AdRequestServiceImpl: Sending request: " + str);
            URL url2 = new URL(str);
            HashMap map2 = new HashMap();
            int i9 = 0;
            while (true) {
                httpURLConnection = (HttpURLConnection) url2.openConnection();
                try {
                    try {
                        p083k3.l.f25980A.f25983c.y((Context) this.f15197I, (String) this.f15196H, httpURLConnection, i8);
                        for (Map.Entry entry : map.entrySet()) {
                            httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            httpURLConnection.setRequestProperty("Content-Type", str2);
                        }
                        int length = bArr.length;
                        if (length > 0) {
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.setFixedLengthStreamingMode(length);
                            try {
                                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(httpURLConnection.getOutputStream());
                                try {
                                    bufferedOutputStream2.write(bArr);
                                    AbstractC2987b.e(bufferedOutputStream2);
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    AbstractC2987b.e(bufferedOutputStream);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedOutputStream = null;
                            }
                        }
                        p120p3.g gVar = new p120p3.g();
                        gVar.a(httpURLConnection, bArr);
                        int responseCode = httpURLConnection.getResponseCode();
                        for (Map.Entry<String, List<String>> entry2 : httpURLConnection.getHeaderFields().entrySet()) {
                            String key = entry2.getKey();
                            List<String> value = entry2.getValue();
                            if (map2.containsKey(key)) {
                                ((List) map2.get(key)).addAll(value);
                            } else {
                                map2.put(key, new ArrayList(value));
                                str2 = str2;
                            }
                        }
                        String str3 = str2;
                        gVar.b(httpURLConnection, responseCode);
                        jp.f14214a = responseCode;
                        jp.f14215b = map2;
                        jp.f14216c = HttpUrl.FRAGMENT_ENCODE_SET;
                        if (responseCode >= 200 && responseCode < 300) {
                            try {
                                InputStreamReader inputStreamReader2 = new InputStreamReader(httpURLConnection.getInputStream());
                                try {
                                    p083k3.l lVar = p083k3.l.f25980A;
                                    p113o3.O o4 = lVar.f25983c;
                                    StringBuilder sb = new StringBuilder(8192);
                                    char[] cArr = new char[2048];
                                    while (true) {
                                        int i10 = inputStreamReader2.read(cArr);
                                        if (i10 == -1) {
                                            break;
                                        }
                                        sb.append(cArr, 0, i10);
                                    }
                                    String string = sb.toString();
                                    AbstractC2987b.e(inputStreamReader2);
                                    if (p120p3.g.c() && string != null) {
                                        gVar.d("onNetworkResponseBody", new C0091g(string.getBytes(), 8));
                                    }
                                    jp.f14216c = string;
                                    if (TextUtils.isEmpty(string)) {
                                        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.Z4)).booleanValue()) {
                                            throw new C0679Bo(3);
                                        }
                                    }
                                    lVar.f25990j.getClass();
                                    jp.f14217d = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                    break;
                                } catch (Throwable th3) {
                                    th = th3;
                                    inputStreamReader = inputStreamReader2;
                                    AbstractC2987b.e(inputStreamReader);
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                inputStreamReader = null;
                            }
                        } else {
                            if (responseCode < 300 || responseCode >= 400) {
                                p120p3.h.g("Received error HTTP response code: " + responseCode);
                                throw new C0679Bo(1, "Received error HTTP response code: " + responseCode);
                            }
                            String headerField = httpURLConnection.getHeaderField("Location");
                            if (TextUtils.isEmpty(headerField)) {
                                p120p3.h.g("No location header to follow redirect.");
                                throw new C0679Bo(1, "No location header to follow redirect");
                            }
                            J7 j8 = Q7.f15838g7;
                            C3099q c3099q = C3099q.f26624d;
                            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                                try {
                                    url = new URI(headerField).toURL();
                                } catch (URISyntaxException e8) {
                                    throw new C0679Bo(e8.getMessage(), e8);
                                }
                            } else {
                                url = new URL(headerField);
                            }
                            i9++;
                            if (i9 > ((Integer) c3099q.f26627c.a(Q7.f15618F4)).intValue()) {
                                p120p3.h.g("Too many redirects.");
                                throw new C0679Bo(1, "Too many redirects");
                            }
                            httpURLConnection.disconnect();
                            url2 = url;
                            str2 = str3;
                        }
                    } catch (C0679Bo e9) {
                        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.E7)).booleanValue()) {
                            throw e9;
                        }
                        p083k3.l.f25980A.f25990j.getClass();
                        jp.f14217d = SystemClock.elapsedRealtime() - jElapsedRealtime;
                    }
                } catch (Throwable th5) {
                    httpURLConnection.disconnect();
                    throw th5;
                }
            }
            httpURLConnection.disconnect();
            return jp;
        } catch (IOException e10) {
            String strConcat = "Error while connecting to ad server: ".concat(String.valueOf(e10.getMessage()));
            p120p3.h.g(strConcat);
            throw new C0679Bo(strConcat, e10);
        }
    }

    public final void l() {
        switch (this.f15195G) {
            case 2:
                Context context = (Context) this.f15196H;
                if (context != null && ((PopupWindow) this.f15197I) != null) {
                    if ((!(context instanceof Activity) || !((Activity) context).isDestroyed()) && ((PopupWindow) this.f15197I).isShowing()) {
                        ((PopupWindow) this.f15197I).dismiss();
                    }
                    this.f15196H = null;
                    this.f15197I = null;
                    break;
                }
                break;
            default:
                ((C2246xc) this.f15197I).p(new Yx(this));
                break;
        }
    }

    public final void m(MJ mj) {
        ((List) this.f15196H).add(mj);
    }

    public final void n(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        ((Map) this.f15197I).put(str, str2);
    }

    public final NJ p() {
        return new NJ((List) this.f15196H, (List) this.f15197I);
    }

    public final void q(Ov ov) {
        n("aai", ov.f15290w);
        n("request_id", ov.f15273n0);
        n("ad_format", Ov.a(ov.f15248b));
    }

    public final boolean r() {
        return ((String) this.f15196H) != null && ((Instant) this.f15197I).isAfter(Instant.EPOCH);
    }

    public final boolean s(int i8) {
        return ((C1751o) this.f15196H).f20216a.get(i8);
    }

    public final Pair t(C2190wN c2190wN) {
        C2190wN c2190wNA;
        C2190wN c2190wN2 = null;
        if (c2190wN != null) {
            OK ok = (OK) this.f15196H;
            int i8 = 0;
            while (true) {
                if (i8 >= ok.f15156c.size()) {
                    c2190wNA = null;
                    break;
                }
                if (((C2190wN) ok.f15156c.get(i8)).f21693d == c2190wN.f21693d) {
                    c2190wNA = c2190wN.a(Pair.create(ok.f15155b, c2190wN.f21690a));
                    break;
                }
                i8++;
            }
            if (c2190wNA == null) {
                return null;
            }
            c2190wN2 = c2190wNA;
        }
        return Pair.create(Integer.valueOf(((OK) this.f15196H).f15157d), c2190wN2);
    }

    public final void u() {
        ((C0738Fn) this.f15196H).f13413b.execute(new RunnableC0723En(this, 0));
    }

    @Override // com.google.android.gms.internal.ads.VB
    /* JADX INFO: renamed from: zza */
    public final InterfaceC1556kC mo5zza() {
        C1456iE c1456iE = (C1456iE) ((VB) this.f15197I);
        return new VD((Context) this.f15196H, new C1922rF(null, c1456iE.f19282H, c1456iE.f19283I, false, c1456iE.f19281G));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        Bundle bundle;
        switch (this.f15195G) {
            case 0:
                ((InterfaceC0715Ef) obj).w((String) this.f15196H, (Map) this.f15197I);
                return;
            case 5:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                try {
                    J7 j8 = Q7.f15734U1;
                    C3099q c3099q = C3099q.f26624d;
                    if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                        ((InterfaceC0903Rc) this.f15197I).F(parcelFileDescriptor);
                        return;
                    }
                    if (((Boolean) c3099q.f26627c.a(Q7.f15741V1)).booleanValue() && (bundle = ((C0973Wc) this.f15196H).f17262S) != null) {
                        p083k3.l.f25980A.f25990j.getClass();
                        bundle.putLong("binder-call-start", System.currentTimeMillis());
                    }
                    ((InterfaceC0903Rc) this.f15197I).s1(parcelFileDescriptor, (C0973Wc) this.f15196H);
                    return;
                } catch (RemoteException e8) {
                    p113o3.I.l("Service can't call client", e8);
                    return;
                }
            case 9:
                o(obj);
                return;
            case 14:
                synchronized (((C2266xw) this.f15197I)) {
                    Object obj2 = this.f15197I;
                    ((C2266xw) obj2).f21954d = null;
                    ((C2266xw) obj2).f21953c.addFirst((C1486iv) this.f15196H);
                    C2266xw c2266xw = (C2266xw) this.f15197I;
                    if (c2266xw.f21955e == 1) {
                        c2266xw.b();
                    }
                    break;
                }
                return;
            case 15:
                Hw hw = ((Gw) ((C1950rs) this.f15197I).f20800L).f13667c;
                Fw fw = (Fw) this.f15196H;
                C0720Ek c0720Ek = (C0720Ek) hw;
                c0720Ek.getClass();
                c0720Ek.Z0(new Jw(fw, 0));
                return;
            case 17:
                return;
            default:
                ((C1816pC) this.f15196H).f(obj);
                return;
        }
    }

    public /* synthetic */ C0871Om(int i8, Object obj) {
        this.f15195G = i8;
    }

    public /* synthetic */ C0871Om(int i8, Object obj, Object obj2) {
        this.f15195G = i8;
        this.f15196H = obj;
        this.f15197I = obj2;
    }

    public C0871Om(Context context, String str) {
        this.f15195G = 6;
        this.f15197I = context;
        this.f15196H = str;
    }

    @Override // com.google.android.gms.internal.ads.Dw
    public final Object zza(Object obj) {
        switch (this.f15195G) {
            case 4:
                InputStreamReader inputStreamReader = new InputStreamReader((InputStream) obj);
                try {
                    try {
                        JsonReader jsonReader = new JsonReader(inputStreamReader);
                        HashMap map = new HashMap();
                        String strNextString = HttpUrl.FRAGMENT_ENCODE_SET;
                        jsonReader.beginObject();
                        long jNextLong = -1;
                        int iNextInt = 0;
                        while (jsonReader.hasNext()) {
                            String strNextName = jsonReader.nextName();
                            if ("response".equals(strNextName)) {
                                iNextInt = jsonReader.nextInt();
                            } else if ("body".equals(strNextName)) {
                                strNextString = jsonReader.nextString();
                            } else if ("latency".equals(strNextName)) {
                                jNextLong = jsonReader.nextLong();
                            } else if ("headers".equals(strNextName)) {
                                map = new HashMap();
                                jsonReader.beginObject();
                                while (jsonReader.hasNext()) {
                                    map.put(jsonReader.nextName(), Q3.b.O(jsonReader));
                                }
                                jsonReader.endObject();
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        Jp jp = new Jp();
                        jp.f14214a = iNextInt;
                        if (strNextString != null) {
                            jp.f14216c = strNextString;
                        }
                        jp.f14217d = jNextLong;
                        jp.f14215b = map;
                        AbstractC2987b.e(inputStreamReader);
                        return new Fp(jp, (JSONObject) this.f15196H, (C0987Xc) this.f15197I);
                    } catch (IOException e8) {
                        e = e8;
                        throw new C1898qr("Unable to parse Response", e);
                    } catch (AssertionError e9) {
                        e = e9;
                        throw new C1898qr("Unable to parse Response", e);
                    } catch (IllegalStateException e10) {
                        e = e10;
                        throw new C1898qr("Unable to parse Response", e);
                    } catch (NumberFormatException e11) {
                        e = e11;
                        throw new C1898qr("Unable to parse Response", e);
                    }
                } catch (Throwable th) {
                    AbstractC2987b.e(inputStreamReader);
                    throw th;
                }
            case 5:
            default:
                C1172cq c1172cq = (C1172cq) this.f15196H;
                C0022w c0022w = (C0022w) this.f15197I;
                c1172cq.getClass();
                ContentValues contentValues = new ContentValues();
                contentValues.put("timestamp", Long.valueOf(c0022w.f219a));
                contentValues.put("gws_query_id", (String) c0022w.f221c);
                contentValues.put("url", (String) c0022w.f222d);
                contentValues.put("event_state", Integer.valueOf(c0022w.f220b - 1));
                ((SQLiteDatabase) obj).insert("offline_buffered_pings", null, contentValues);
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                Context context = c1172cq.f18246G;
                p113o3.x xVarJ = p113o3.O.J(context);
                if (xVarJ != null) {
                    try {
                        xVarJ.zze(new R3.b(context));
                    } catch (RemoteException e12) {
                        p113o3.I.l("Failed to schedule offline ping sender.", e12);
                    }
                    break;
                }
                return null;
            case 6:
                return k((Ip) obj);
        }
    }

    public C0871Om(C2246xc c2246xc) {
        this.f15195G = 20;
        this.f15197I = c2246xc;
    }

    public C0871Om(C0973Wc c0973Wc, InterfaceC0903Rc interfaceC0903Rc) {
        this.f15195G = 5;
        this.f15196H = c0973Wc;
        this.f15197I = interfaceC0903Rc;
    }

    public C0871Om(C1644lx c1644lx, C1816pC c1816pC) {
        this.f15195G = 18;
        this.f15197I = c1644lx;
        this.f15196H = c1816pC;
    }

    public /* synthetic */ C0871Om(Object obj, Object obj2, int i8) {
        this.f15195G = i8;
        this.f15196H = obj2;
        this.f15197I = obj;
    }

    public C0871Om(Map map) {
        this.f15195G = 0;
        this.f15196H = "sendMessageToNativeJs";
        this.f15197I = map;
    }

    public C0871Om(int i8, int i9) {
        List arrayList;
        Object arrayList2;
        this.f15195G = 25;
        if (i8 == 0) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList(i8);
        }
        this.f15196H = arrayList;
        if (i9 == 0) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(i9);
        }
        this.f15197I = arrayList2;
    }

    public C0871Om(Context context) {
        this.f15195G = 24;
        C1456iE c1456iE = new C1456iE();
        this.f15196H = context.getApplicationContext();
        this.f15197I = c1456iE;
    }

    public C0871Om(C1751o c1751o, SparseArray sparseArray) {
        this.f15195G = 28;
        this.f15196H = c1751o;
        SparseBooleanArray sparseBooleanArray = c1751o.f20216a;
        SparseArray sparseArray2 = new SparseArray(sparseBooleanArray.size());
        for (int i8 = 0; i8 < sparseBooleanArray.size(); i8++) {
            int iA = c1751o.a(i8);
            C1204dL c1204dL = (C1204dL) sparseArray.get(iA);
            c1204dL.getClass();
            sparseArray2.append(iA, c1204dL);
        }
        this.f15197I = sparseArray2;
    }

    public C0871Om(C0738Fn c0738Fn) {
        this.f15195G = 3;
        this.f15196H = c0738Fn;
        this.f15197I = new ConcurrentHashMap();
    }

    @Override // com.google.android.gms.internal.ads.Ew
    public final void zza() {
        switch (this.f15195G) {
            case 11:
                Pr pr = (Pr) this.f15196H;
                X7 x7 = (X7) this.f15197I;
                Y7 y7 = (Y7) pr.f15488c;
                Parcel parcelJ0 = y7.j0();
                A5.e(parcelJ0, x7);
                y7.O2(1, parcelJ0);
                break;
            default:
                Jq jq = (Jq) this.f15196H;
                X7 x8 = (X7) this.f15197I;
                Y7 y8 = (Y7) ((Z7) jq.f14219b);
                Parcel parcelJ1 = y8.j0();
                A5.e(parcelJ1, x8);
                y8.O2(1, parcelJ1);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        Fw fw = (Fw) this.f15196H;
        ((Lw) obj).c((Iw) fw.f13439G, fw.f13440H, (Throwable) this.f15197I);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        String message;
        switch (this.f15195G) {
            case 0:
                return;
            case 5:
                try {
                    InterfaceC0903Rc interfaceC0903Rc = (InterfaceC0903Rc) this.f15197I;
                    C3117z0 c3117z0O = p113o3.r.o(th);
                    if (AbstractC2987b.j0(th.getMessage())) {
                        message = c3117z0O.f26630H;
                    } else {
                        message = th.getMessage();
                    }
                    interfaceC0903Rc.w(new C3158p(message, c3117z0O.f26629G));
                    return;
                } catch (RemoteException e8) {
                    p113o3.I.l("Service can't call client", e8);
                    return;
                }
            case 9:
                j();
                return;
            case 14:
                synchronized (((C2266xw) this.f15197I)) {
                    ((C2266xw) this.f15197I).f21954d = null;
                    break;
                }
                return;
            case 15:
                Hw hw = ((Gw) ((C1950rs) this.f15197I).f20800L).f13667c;
                Fw fw = (Fw) this.f15196H;
                C0720Ek c0720Ek = (C0720Ek) hw;
                c0720Ek.getClass();
                c0720Ek.Z0(new C0871Om(16, fw, th));
                return;
            default:
                Ow ow = (Ow) this.f15197I;
                ow.d(th);
                ow.e(false);
                ((Tw) this.f15196H).a(ow);
                return;
        }
    }
}
