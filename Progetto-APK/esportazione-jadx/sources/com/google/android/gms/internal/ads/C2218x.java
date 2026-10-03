package com.google.android.gms.internal.ads;

import D0.C0129t;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64OutputStream;
import android.view.View;
import android.view.ViewGroup;
import com.google.api.Service;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import org.videolan.libvlc.interfaces.IMediaList;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2218x implements W1, D, U2, InterfaceC1910r3, E3, InterfaceC2092ue, InterfaceC1195dC, VB, L8, InterfaceC1162cg {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21778G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f21779H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f21780I;

    public /* synthetic */ C2218x(int i8, Object obj, Object obj2) {
        this.f21778G = i8;
        this.f21779H = obj;
        this.f21780I = obj2;
    }

    @Override // com.google.android.gms.internal.ads.U2
    public final void b(C1534jr c1534jr) {
        if (c1534jr.w() == 0 && (c1534jr.w() & 128) != 0) {
            c1534jr.k(6);
            int iO = c1534jr.o() / 4;
            for (int i8 = 0; i8 < iO; i8++) {
                C1286f0 c1286f0 = (C1286f0) this.f21779H;
                c1534jr.f(0, c1286f0.f18645b, 4);
                c1286f0.t(0);
                C1286f0 c1286f1 = (C1286f0) this.f21779H;
                int iG = c1286f1.g(16);
                c1286f1.v(3);
                if (iG == 0) {
                    ((C1286f0) this.f21779H).v(13);
                } else {
                    int iG2 = ((C1286f0) this.f21779H).g(13);
                    if (((X2) this.f21780I).f17369f.get(iG2) == null) {
                        X2 x7 = (X2) this.f21780I;
                        x7.f17369f.put(iG2, new V2(new W2(x7, iG2)));
                        ((X2) this.f21780I).f17375l++;
                    }
                }
            }
            ((X2) this.f21780I).f17369f.remove(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1910r3
    public C2066u3 c(AbstractC2118v3 abstractC2118v3) throws Throwable {
        p016c.g gVar;
        byte[] bArr;
        C2218x c2218x;
        C2218x c2218x2;
        Map mapEmptyMap;
        byte[] byteArray;
        byte[] bArrB;
        N.r rVar = abstractC2118v3.f21440R;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                p135r2.b bVar = abstractC2118v3.f21438P;
                if (bVar == null) {
                    mapEmptyMap = Collections.emptyMap();
                } else {
                    HashMap map = new HashMap();
                    String str = bVar.f29782b;
                    if (str != null) {
                        map.put("If-None-Match", str);
                    }
                    long j8 = bVar.f29784d;
                    if (j8 > 0) {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                        map.put("If-Modified-Since", simpleDateFormat.format(new Date(j8)));
                    }
                    mapEmptyMap = map;
                }
                ((C2272y1) this.f21779H).getClass();
                p016c.g gVarD = C2272y1.d(abstractC2118v3, mapEmptyMap);
                try {
                    int i8 = gVarD.f10554H;
                    List listUnmodifiableList = Collections.unmodifiableList((List) gVarD.f10556J);
                    if (i8 == 304) {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                        p135r2.b bVar2 = abstractC2118v3.f21438P;
                        if (bVar2 == null) {
                            return new C2066u3(304, (byte[]) null, true, jElapsedRealtime2, listUnmodifiableList);
                        }
                        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                        if (!listUnmodifiableList.isEmpty()) {
                            Iterator it = listUnmodifiableList.iterator();
                            while (it.hasNext()) {
                                treeSet.add(((C1859q3) it.next()).f20528a);
                            }
                        }
                        ArrayList arrayList = new ArrayList(listUnmodifiableList);
                        List list = bVar2.f29788h;
                        if (list != null) {
                            if (!list.isEmpty()) {
                                for (C1859q3 c1859q3 : bVar2.f29788h) {
                                    if (!treeSet.contains(c1859q3.f20528a)) {
                                        arrayList.add(c1859q3);
                                    }
                                }
                            }
                        } else if (!bVar2.f29787g.isEmpty()) {
                            for (Map.Entry entry : bVar2.f29787g.entrySet()) {
                                if (!treeSet.contains(entry.getKey())) {
                                    arrayList.add(new C1859q3((String) entry.getKey(), (String) entry.getValue()));
                                }
                            }
                        }
                        return new C2066u3(304, bVar2.f29781a, true, jElapsedRealtime2, (List) arrayList);
                    }
                    InputStream inputStream = (InputStream) gVarD.f10557K;
                    if (inputStream == null) {
                        inputStream = null;
                    }
                    if (inputStream != null) {
                        int i9 = gVarD.f10555I;
                        C3 c8 = (C3) this.f21780I;
                        G3 g8 = new G3(c8, i9);
                        try {
                            bArrB = c8.b(1024);
                            while (true) {
                                try {
                                    int i10 = inputStream.read(bArrB);
                                    if (i10 == -1) {
                                        break;
                                    }
                                    g8.write(bArrB, 0, i10);
                                } catch (Throwable th) {
                                    th = th;
                                    try {
                                        inputStream.close();
                                    } catch (IOException unused) {
                                        B3.c("Error occurred when closing InputStream", new Object[0]);
                                    }
                                    c8.a(bArrB);
                                    g8.close();
                                    throw th;
                                }
                            }
                            byteArray = g8.toByteArray();
                            try {
                                inputStream.close();
                            } catch (IOException unused2) {
                                B3.c("Error occurred when closing InputStream", new Object[0]);
                            }
                            c8.a(bArrB);
                            g8.close();
                        } catch (Throwable th2) {
                            th = th2;
                            bArrB = null;
                        }
                    } else {
                        byteArray = new byte[0];
                    }
                    try {
                        long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                        if (B3.f12095a || jElapsedRealtime3 > 3000) {
                            Object[] objArr = new Object[5];
                            objArr[0] = abstractC2118v3;
                            objArr[1] = Long.valueOf(jElapsedRealtime3);
                            objArr[2] = byteArray != null ? Integer.valueOf(byteArray.length) : "null";
                            objArr[3] = Integer.valueOf(i8);
                            objArr[4] = Integer.valueOf(rVar.f4920I);
                            B3.a("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
                        }
                        if (i8 < 200 || i8 > 299) {
                            throw new IOException();
                        }
                        return new C2066u3(i8, byteArray, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listUnmodifiableList);
                    } catch (IOException e8) {
                        e = e8;
                        bArr = byteArray;
                        gVar = gVarD;
                    }
                } catch (IOException e9) {
                    e = e9;
                    gVar = gVarD;
                    bArr = null;
                }
            } catch (IOException e10) {
                e = e10;
                gVar = null;
            }
            if (e instanceof SocketTimeoutException) {
                c2218x2 = new C2218x("socket", new C2014t3());
            } else {
                boolean z7 = e instanceof MalformedURLException;
                String str2 = abstractC2118v3.f21431I;
                if (z7) {
                    throw new RuntimeException("Bad URL ".concat(String.valueOf(str2)), e);
                }
                if (gVar == null) {
                    throw new C1755o3(e);
                }
                int i11 = gVar.f10554H;
                B3.b("Unexpected response code %d for %s", Integer.valueOf(i11), str2);
                if (bArr != null) {
                    List<C1859q3> listUnmodifiableList2 = Collections.unmodifiableList((List) gVar.f10556J);
                    SystemClock.elapsedRealtime();
                    if (listUnmodifiableList2 != null) {
                        if (listUnmodifiableList2.isEmpty()) {
                            Collections.emptyMap();
                        } else {
                            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                            for (C1859q3 c1859q4 : listUnmodifiableList2) {
                                treeMap.put(c1859q4.f20528a, c1859q4.f20529b);
                            }
                        }
                    }
                    if (listUnmodifiableList2 != null) {
                        Collections.unmodifiableList(listUnmodifiableList2);
                    }
                    if (i11 != 401 && i11 != 403) {
                        if (i11 < 400 || i11 > 499) {
                            throw new C2014t3();
                        }
                        throw new C1755o3();
                    }
                    c2218x = new C2218x("auth", new C1651m3());
                } else {
                    c2218x = new C2218x("network", new C2014t3());
                }
                c2218x2 = c2218x;
            }
            int i12 = rVar.f4919H;
            try {
                C2274y3 c2274y3 = (C2274y3) c2218x2.f21780I;
                int i13 = rVar.f4920I + 1;
                rVar.f4920I = i13;
                rVar.f4919H = i12 + i12;
                if (i13 > 1) {
                    throw c2274y3;
                }
                abstractC2118v3.d(((String) c2218x2.f21779H) + "-retry [timeout=" + i12 + "]");
            } catch (C2274y3 e11) {
                abstractC2118v3.d(((String) c2218x2.f21779H) + "-timeout-giveup [timeout=" + i12 + "]");
                throw e11;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:128:0x026f  */
    /* JADX WARN: Code duplicated, block: B:129:0x0279  */
    /* JADX WARN: Code duplicated, block: B:131:0x0282  */
    /* JADX WARN: Code duplicated, block: B:132:0x028b  */
    /* JADX WARN: Code duplicated, block: B:134:0x0293  */
    /* JADX WARN: Code duplicated, block: B:136:0x029b  */
    /* JADX WARN: Code duplicated, block: B:137:0x029e  */
    /* JADX WARN: Code duplicated, block: B:139:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:140:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:142:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:146:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:149:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:151:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:153:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:154:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:156:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:157:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:159:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:161:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:162:0x0302  */
    /* JADX WARN: Code duplicated, block: B:164:0x030b  */
    /* JADX WARN: Code duplicated, block: B:166:0x0313  */
    /* JADX WARN: Code duplicated, block: B:167:0x0317  */
    /* JADX WARN: Code duplicated, block: B:169:0x031f  */
    /* JADX WARN: Code duplicated, block: B:171:0x032f  */
    /* JADX WARN: Code duplicated, block: B:172:0x0349  */
    /* JADX WARN: Code duplicated, block: B:175:0x035a  */
    /* JADX WARN: Code duplicated, block: B:178:0x0363  */
    /* JADX WARN: Code duplicated, block: B:179:0x0365  */
    /* JADX WARN: Code duplicated, block: B:182:0x036e  */
    /* JADX WARN: Code duplicated, block: B:183:0x0370  */
    /* JADX WARN: Code duplicated, block: B:186:0x0379  */
    /* JADX WARN: Code duplicated, block: B:190:0x0383  */
    /* JADX WARN: Code duplicated, block: B:192:0x0389  */
    /* JADX WARN: Code duplicated, block: B:193:0x038e  */
    /* JADX WARN: Code duplicated, block: B:215:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:235:0x037d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:96:0x01ff  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:171:0x032f, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v59 */
    @Override // com.google.android.gms.internal.ads.W1
    public final void d(byte[] bArr, int i8, int i9, p149t0.d dVar) {
        C2013t2 c2013t2C;
        String strTrim;
        String str;
        String strSubstring;
        String string;
        Matcher matcher;
        String strGroup;
        byte b8;
        int i10;
        boolean z7;
        ((C1534jr) this.f21779H).h(i8 + i9, bArr);
        ((C1534jr) this.f21779H).j(i8);
        ArrayList arrayList = new ArrayList();
        try {
            C1534jr c1534jr = (C1534jr) this.f21779H;
            int i11 = c1534jr.f19516b;
            Charset charset = StandardCharsets.UTF_8;
            String strI = c1534jr.I(charset);
            String str2 = null;
            if (strI == null || !strI.startsWith("WEBVTT")) {
                c1534jr.j(i11);
                throw C0800Ka.a("Expected WEBVTT. Got ".concat(String.valueOf(c1534jr.I(charset))), null);
            }
            while (!TextUtils.isEmpty(((C1534jr) this.f21779H).I(StandardCharsets.UTF_8))) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                C1534jr c1534jr2 = (C1534jr) this.f21779H;
                boolean z8 = false;
                int i12 = -1;
                byte b9 = -1;
                int i13 = 0;
                while (true) {
                    int i14 = 1;
                    if (b9 == -1) {
                        i13 = c1534jr2.f19516b;
                        String strI2 = c1534jr2.I(StandardCharsets.UTF_8);
                        if (strI2 == null) {
                            b9 = 0;
                        } else if ("STYLE".equals(strI2)) {
                            b9 = 2;
                        } else {
                            b9 = strI2.startsWith("NOTE") ? (byte) 1 : (byte) 3;
                        }
                    } else {
                        c1534jr2.j(i13);
                        if (b9 == 0) {
                            a7.b.o(new C2325z2(arrayList2), dVar);
                            return;
                        }
                        if (b9 == 1) {
                            while (!TextUtils.isEmpty(((C1534jr) this.f21779H).I(StandardCharsets.UTF_8))) {
                            }
                        } else {
                            if (b9 != 2) {
                                C1534jr c1534jr3 = (C1534jr) this.f21779H;
                                Pattern pattern = AbstractC2273y2.f21987a;
                                Charset charset2 = StandardCharsets.UTF_8;
                                String strI3 = c1534jr3.I(charset2);
                                if (strI3 == null) {
                                    c2013t2C = null;
                                } else {
                                    Pattern pattern2 = AbstractC2273y2.f21987a;
                                    Matcher matcher2 = pattern2.matcher(strI3);
                                    if (matcher2.matches()) {
                                        c2013t2C = AbstractC2273y2.c(null, matcher2, c1534jr3, arrayList);
                                    } else {
                                        String strI4 = c1534jr3.I(charset2);
                                        if (strI4 != null) {
                                            Matcher matcher3 = pattern2.matcher(strI4);
                                            if (matcher3.matches()) {
                                                c2013t2C = AbstractC2273y2.c(strI3.trim(), matcher3, c1534jr3, arrayList);
                                            } else {
                                                c2013t2C = null;
                                            }
                                        } else {
                                            c2013t2C = null;
                                        }
                                    }
                                }
                                if (c2013t2C != null) {
                                    arrayList2.add(c2013t2C);
                                }
                            } else {
                                if (!arrayList2.isEmpty()) {
                                    throw new IllegalArgumentException("A style block was found after the first cue.");
                                }
                                ((C1534jr) this.f21779H).I(StandardCharsets.UTF_8);
                                C1909r2 c1909r2 = (C1909r2) this.f21780I;
                                C1534jr c1534jr4 = (C1534jr) this.f21779H;
                                StringBuilder sb = c1909r2.f20674b;
                                sb.setLength(0);
                                int i15 = c1534jr4.f19516b;
                                while (!TextUtils.isEmpty(c1534jr4.I(StandardCharsets.UTF_8))) {
                                    z8 = false;
                                    i14 = 1;
                                }
                                byte[] bArr2 = c1534jr4.f19515a;
                                int i16 = c1534jr4.f19516b;
                                C1534jr c1534jr5 = c1909r2.f20673a;
                                c1534jr5.h(i16, bArr2);
                                c1534jr5.j(i15);
                                ArrayList arrayList3 = new ArrayList();
                                ?? r7 = z8;
                                while (true) {
                                    C1909r2.b(c1534jr5);
                                    if (c1534jr5.o() >= 5 && "::cue".equals(c1534jr5.b(5, StandardCharsets.UTF_8))) {
                                        int i17 = c1534jr5.f19516b;
                                        String strA = C1909r2.a(c1534jr5, sb);
                                        if (strA == null) {
                                            str = str2;
                                        } else if ("{".equals(strA)) {
                                            c1534jr5.j(i17);
                                            str = HttpUrl.FRAGMENT_ENCODE_SET;
                                        } else {
                                            if ("(".equals(strA)) {
                                                int i18 = c1534jr5.f19516b;
                                                int i19 = c1534jr5.f19517c;
                                                boolean z9 = false;
                                                while (i18 < i19 && !z9) {
                                                    int i20 = i18 + 1;
                                                    boolean z10 = ((char) c1534jr5.f19515a[i18]) == ')';
                                                    i18 = i20;
                                                    z9 = z10;
                                                }
                                                strTrim = c1534jr5.b((i18 - 1) - c1534jr5.f19516b, StandardCharsets.UTF_8).trim();
                                            } else {
                                                strTrim = str2;
                                            }
                                            str = strTrim;
                                            if (!")".equals(C1909r2.a(c1534jr5, sb))) {
                                                str = str2;
                                            }
                                        }
                                    } else {
                                        str = str2;
                                    }
                                    if (str != 0 && "{".equals(C1909r2.a(c1534jr5, sb))) {
                                        C1961s2 c1961s2 = new C1961s2();
                                        c1961s2.f20839a = HttpUrl.FRAGMENT_ENCODE_SET;
                                        c1961s2.f20840b = HttpUrl.FRAGMENT_ENCODE_SET;
                                        c1961s2.f20841c = Collections.emptySet();
                                        c1961s2.f20842d = HttpUrl.FRAGMENT_ENCODE_SET;
                                        c1961s2.f20843e = str2;
                                        c1961s2.f20845g = r7;
                                        c1961s2.f20847i = r7;
                                        c1961s2.f20848j = i12;
                                        c1961s2.f20849k = i12;
                                        c1961s2.f20850l = i12;
                                        c1961s2.f20851m = i12;
                                        c1961s2.f20853o = i12;
                                        c1961s2.f20854p = r7;
                                        if (!HttpUrl.FRAGMENT_ENCODE_SET.equals(str)) {
                                            int iIndexOf = str.indexOf(91);
                                            if (iIndexOf != i12) {
                                                Matcher matcher4 = C1909r2.f20671c.matcher(str.substring(iIndexOf));
                                                if (matcher4.matches()) {
                                                    strSubstring = str;
                                                    String strGroup2 = matcher4.group(i14);
                                                    strGroup2.getClass();
                                                    c1961s2.f20842d = strGroup2;
                                                }
                                                strSubstring = str;
                                                strSubstring = str.substring(r7, iIndexOf);
                                            }
                                            strSubstring = str;
                                            int i21 = Et.f13234a;
                                            String[] strArrSplit = strSubstring.split("\\.", i12);
                                            String str3 = strArrSplit[r7];
                                            int iIndexOf2 = str3.indexOf(35);
                                            if (iIndexOf2 != i12) {
                                                c1961s2.f20840b = str3.substring(r7, iIndexOf2);
                                                c1961s2.f20839a = str3.substring(iIndexOf2 + 1);
                                            } else {
                                                c1961s2.f20840b = str3;
                                            }
                                            int length = strArrSplit.length;
                                            if (length > i14) {
                                                c1961s2.f20841c = new HashSet(Arrays.asList((String[]) Arrays.copyOfRange(strArrSplit, i14, length)));
                                            }
                                            str2 = null;
                                        }
                                        boolean z11 = false;
                                        while (!z11) {
                                            int i22 = c1534jr5.f19516b;
                                            String strA2 = C1909r2.a(c1534jr5, sb);
                                            boolean z12 = strA2 == null || "}".equals(strA2);
                                            if (!z12) {
                                                c1534jr5.j(i22);
                                                C1909r2.b(c1534jr5);
                                                String strC = C1909r2.c(c1534jr5, sb);
                                                if (!HttpUrl.FRAGMENT_ENCODE_SET.equals(strC) && ":".equals(C1909r2.a(c1534jr5, sb))) {
                                                    C1909r2.b(c1534jr5);
                                                    StringBuilder sb2 = new StringBuilder();
                                                    boolean z13 = false;
                                                    while (true) {
                                                        if (z13) {
                                                            string = sb2.toString();
                                                        } else {
                                                            int i23 = c1534jr5.f19516b;
                                                            boolean z14 = z13;
                                                            String strA3 = C1909r2.a(c1534jr5, sb);
                                                            if (strA3 == null) {
                                                                string = null;
                                                            } else if ("}".equals(strA3) || ";".equals(strA3)) {
                                                                c1534jr5.j(i23);
                                                                z13 = true;
                                                            } else {
                                                                sb2.append(strA3);
                                                                z13 = z14;
                                                            }
                                                        }
                                                    }
                                                    if (string != null && !HttpUrl.FRAGMENT_ENCODE_SET.equals(string)) {
                                                        int i24 = c1534jr5.f19516b;
                                                        String strA4 = C1909r2.a(c1534jr5, sb);
                                                        if (";".equals(strA4)) {
                                                            if ("color".equals(strC)) {
                                                                c1961s2.f20844f = AbstractC0841Ml.a(string, true);
                                                                c1961s2.f20845g = true;
                                                            } else if ("background-color".equals(strC)) {
                                                                c1961s2.f20846h = AbstractC0841Ml.a(string, true);
                                                                c1961s2.f20847i = true;
                                                            } else if ("ruby-position".equals(strC)) {
                                                                if ("over".equals(string)) {
                                                                    c1961s2.f20853o = 1;
                                                                } else if ("under".equals(string)) {
                                                                    c1961s2.f20853o = 2;
                                                                }
                                                            } else if ("text-combine-upright".equals(strC)) {
                                                                if ("all".equals(string)) {
                                                                    z7 = true;
                                                                } else {
                                                                    z7 = true;
                                                                }
                                                                c1961s2.f20854p = z7;
                                                            } else if ("text-decoration".equals(strC)) {
                                                                if ("underline".equals(string)) {
                                                                    c1961s2.f20848j = 1;
                                                                }
                                                            } else if ("font-family".equals(strC)) {
                                                                c1961s2.f20843e = p113o3.r.m(string);
                                                            } else if ("font-weight".equals(strC)) {
                                                                if ("bold".equals(string)) {
                                                                    c1961s2.f20849k = 1;
                                                                }
                                                            } else if ("font-style".equals(strC)) {
                                                                if ("italic".equals(string)) {
                                                                    c1961s2.f20850l = 1;
                                                                }
                                                            } else if ("font-size".equals(strC)) {
                                                                matcher = C1909r2.f20672d.matcher(p113o3.r.m(string));
                                                                if (matcher.matches()) {
                                                                    strGroup = matcher.group(2);
                                                                    strGroup.getClass();
                                                                    switch (strGroup.hashCode()) {
                                                                        case 37:
                                                                            if (!strGroup.equals("%")) {
                                                                                b8 = 0;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 3;
                                                                                    String strGroup3 = matcher.group(i10);
                                                                                    strGroup3.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup3);
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 2;
                                                                                    String strGroup4 = matcher.group(i10);
                                                                                    strGroup4.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup4);
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 1;
                                                                                    String strGroup5 = matcher.group(i10);
                                                                                    strGroup5.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup5);
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            break;
                                                                        case 3240:
                                                                            if (!strGroup.equals("em")) {
                                                                                b8 = 1;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 3;
                                                                                    String strGroup6 = matcher.group(i10);
                                                                                    strGroup6.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup6);
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 2;
                                                                                    String strGroup7 = matcher.group(i10);
                                                                                    strGroup7.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup7);
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 1;
                                                                                    String strGroup8 = matcher.group(i10);
                                                                                    strGroup8.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup8);
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            break;
                                                                        case 3592:
                                                                            if (!strGroup.equals("px")) {
                                                                                b8 = 2;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 3;
                                                                                    String strGroup9 = matcher.group(i10);
                                                                                    strGroup9.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup9);
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 2;
                                                                                    String strGroup10 = matcher.group(i10);
                                                                                    strGroup10.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup10);
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 1;
                                                                                    String strGroup11 = matcher.group(i10);
                                                                                    strGroup11.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup11);
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            break;
                                                                    }
                                                                    b8 = -1;
                                                                    switch (b8) {
                                                                        case 0:
                                                                            i10 = 1;
                                                                            c1961s2.f20851m = 3;
                                                                            String strGroup12 = matcher.group(i10);
                                                                            strGroup12.getClass();
                                                                            c1961s2.f20852n = Float.parseFloat(strGroup12);
                                                                            break;
                                                                        case 1:
                                                                            i10 = 1;
                                                                            c1961s2.f20851m = 2;
                                                                            String strGroup13 = matcher.group(i10);
                                                                            strGroup13.getClass();
                                                                            c1961s2.f20852n = Float.parseFloat(strGroup13);
                                                                            break;
                                                                        case 2:
                                                                            i10 = 1;
                                                                            c1961s2.f20851m = 1;
                                                                            String strGroup14 = matcher.group(i10);
                                                                            strGroup14.getClass();
                                                                            c1961s2.f20852n = Float.parseFloat(strGroup14);
                                                                            break;
                                                                        default:
                                                                            throw new IllegalStateException();
                                                                    }
                                                                } else {
                                                                    Zo.f("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                                                }
                                                            }
                                                        } else if ("}".equals(strA4)) {
                                                            c1534jr5.j(i24);
                                                            if ("color".equals(strC)) {
                                                                c1961s2.f20844f = AbstractC0841Ml.a(string, true);
                                                                c1961s2.f20845g = true;
                                                            } else if ("background-color".equals(strC)) {
                                                                c1961s2.f20846h = AbstractC0841Ml.a(string, true);
                                                                c1961s2.f20847i = true;
                                                            } else if ("ruby-position".equals(strC)) {
                                                                if ("over".equals(string)) {
                                                                    c1961s2.f20853o = 1;
                                                                } else if ("under".equals(string)) {
                                                                    c1961s2.f20853o = 2;
                                                                }
                                                            } else if ("text-combine-upright".equals(strC)) {
                                                                if ("all".equals(string) || string.startsWith("digits")) {
                                                                    z7 = true;
                                                                } else {
                                                                    z7 = false;
                                                                }
                                                                c1961s2.f20854p = z7;
                                                            } else if ("text-decoration".equals(strC)) {
                                                                if ("underline".equals(string)) {
                                                                    c1961s2.f20848j = 1;
                                                                }
                                                            } else if ("font-family".equals(strC)) {
                                                                c1961s2.f20843e = p113o3.r.m(string);
                                                            } else if ("font-weight".equals(strC)) {
                                                                if ("bold".equals(string)) {
                                                                    c1961s2.f20849k = 1;
                                                                }
                                                            } else if ("font-style".equals(strC)) {
                                                                if ("italic".equals(string)) {
                                                                    c1961s2.f20850l = 1;
                                                                }
                                                            } else if ("font-size".equals(strC)) {
                                                                matcher = C1909r2.f20672d.matcher(p113o3.r.m(string));
                                                                if (matcher.matches()) {
                                                                    Zo.f("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                                                } else {
                                                                    strGroup = matcher.group(2);
                                                                    strGroup.getClass();
                                                                    switch (strGroup.hashCode()) {
                                                                        case 37:
                                                                            if (!strGroup.equals("%")) {
                                                                                b8 = 0;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 3;
                                                                                    String strGroup15 = matcher.group(i10);
                                                                                    strGroup15.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup15);
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 2;
                                                                                    String strGroup16 = matcher.group(i10);
                                                                                    strGroup16.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup16);
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 1;
                                                                                    String strGroup17 = matcher.group(i10);
                                                                                    strGroup17.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup17);
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            break;
                                                                        case 3240:
                                                                            if (!strGroup.equals("em")) {
                                                                                b8 = 1;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 3;
                                                                                    String strGroup18 = matcher.group(i10);
                                                                                    strGroup18.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup18);
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 2;
                                                                                    String strGroup19 = matcher.group(i10);
                                                                                    strGroup19.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup19);
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 1;
                                                                                    String strGroup110 = matcher.group(i10);
                                                                                    strGroup110.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup110);
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            break;
                                                                        case 3592:
                                                                            if (!strGroup.equals("px")) {
                                                                                b8 = 2;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 3;
                                                                                    String strGroup111 = matcher.group(i10);
                                                                                    strGroup111.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup111);
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 2;
                                                                                    String strGroup112 = matcher.group(i10);
                                                                                    strGroup112.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup112);
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    c1961s2.f20851m = 1;
                                                                                    String strGroup113 = matcher.group(i10);
                                                                                    strGroup113.getClass();
                                                                                    c1961s2.f20852n = Float.parseFloat(strGroup113);
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            break;
                                                                    }
                                                                    b8 = -1;
                                                                    switch (b8) {
                                                                        case 0:
                                                                            i10 = 1;
                                                                            c1961s2.f20851m = 3;
                                                                            String strGroup114 = matcher.group(i10);
                                                                            strGroup114.getClass();
                                                                            c1961s2.f20852n = Float.parseFloat(strGroup114);
                                                                            break;
                                                                        case 1:
                                                                            i10 = 1;
                                                                            c1961s2.f20851m = 2;
                                                                            String strGroup115 = matcher.group(i10);
                                                                            strGroup115.getClass();
                                                                            c1961s2.f20852n = Float.parseFloat(strGroup115);
                                                                            break;
                                                                        case 2:
                                                                            i10 = 1;
                                                                            c1961s2.f20851m = 1;
                                                                            String strGroup116 = matcher.group(i10);
                                                                            strGroup116.getClass();
                                                                            c1961s2.f20852n = Float.parseFloat(strGroup116);
                                                                            break;
                                                                        default:
                                                                            throw new IllegalStateException();
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            str2 = strA2;
                                            z11 = z12;
                                        }
                                        if ("}".equals(str2)) {
                                            arrayList3.add(c1961s2);
                                        }
                                        r7 = 0;
                                        i12 = -1;
                                        str2 = null;
                                        i14 = 1;
                                    }
                                }
                                arrayList.addAll(arrayList3);
                            }
                            str2 = null;
                        }
                    }
                }
            }
        } catch (C0800Ka e8) {
            throw new IllegalArgumentException(e8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00f6  */
    @Override // com.google.android.gms.internal.ads.D
    public final C e(M m7, long j8) {
        C c8;
        int i8;
        long jZzf = m7.zzf();
        int iMin = (int) Math.min(20000L, m7.zzd() - jZzf);
        ((C1534jr) this.f21780I).g(iMin);
        m7.g(0, ((C1534jr) this.f21780I).f19515a, iMin);
        int i9 = -1;
        long j9 = -9223372036854775807L;
        int i10 = -1;
        while (true) {
            C1534jr c1534jr = (C1534jr) this.f21780I;
            if (c1534jr.o() < 4) {
                if (j9 == -9223372036854775807L) {
                    return C.f12527d;
                }
                c8 = new C(-2, j9, jZzf + ((long) i9));
                break;
            }
            if (p010b1.a.i(c1534jr.f19516b, c1534jr.f19515a) != 442) {
                c1534jr.k(1);
            } else {
                c1534jr.k(4);
                long jE = R2.e(c1534jr);
                if (jE != -9223372036854775807L) {
                    long jB = ((Ys) this.f21779H).b(jE);
                    if (jB > j8) {
                        if (j9 != -9223372036854775807L) {
                            c8 = new C(0, -9223372036854775807L, jZzf + ((long) i10));
                            break;
                        }
                        return new C(-1, jB, jZzf);
                    }
                    if (100000 + jB > j8) {
                        c8 = new C(0, -9223372036854775807L, jZzf + ((long) c1534jr.f19516b));
                        break;
                    }
                    i10 = c1534jr.f19516b;
                    j9 = jB;
                }
                int i11 = c1534jr.f19517c;
                if (c1534jr.o() >= 10) {
                    c1534jr.k(9);
                    int iW = c1534jr.w() & 7;
                    if (c1534jr.o() >= iW) {
                        c1534jr.k(iW);
                        if (c1534jr.o() >= 4) {
                            if (p010b1.a.i(c1534jr.f19516b, c1534jr.f19515a) == 443) {
                                c1534jr.k(4);
                                int iA = c1534jr.A();
                                if (c1534jr.o() >= iA) {
                                    c1534jr.k(iA);
                                    while (c1534jr.o() >= 4) {
                                        i8 = p010b1.a.i(c1534jr.f19516b, c1534jr.f19515a);
                                        if (i8 == 442) {
                                            break;
                                        }
                                        break;
                                    }
                                }
                                c1534jr.j(i11);
                            } else {
                                while (c1534jr.o() >= 4) {
                                    i8 = p010b1.a.i(c1534jr.f19516b, c1534jr.f19515a);
                                    if (i8 == 442 || i8 == 441 || (i8 >>> 8) != 1) {
                                        break;
                                    }
                                    c1534jr.k(4);
                                    if (c1534jr.o() < 2) {
                                        c1534jr.j(i11);
                                        break;
                                    }
                                    c1534jr.j(Math.min(c1534jr.f19517c, c1534jr.f19516b + c1534jr.A()));
                                }
                            }
                        } else {
                            c1534jr.j(i11);
                        }
                    } else {
                        c1534jr.j(i11);
                    }
                } else {
                    c1534jr.j(i11);
                }
                i9 = c1534jr.f19516b;
            }
        }
        return c8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1162cg
    public final void g(String str, int i8, String str2, boolean z7) {
        switch (this.f21778G) {
            case 27:
                C1010Yl c1010Yl = (C1010Yl) this.f21779H;
                Map map = (Map) this.f21780I;
                c1010Yl.getClass();
                HashMap map2 = new HashMap();
                map2.put("messageType", "htmlLoaded");
                map2.put("id", (String) map.get("id"));
                c1010Yl.f17639b.b(map2);
                break;
            default:
                C1117bm c1117bm = (C1117bm) this.f21779H;
                Map map3 = (Map) this.f21780I;
                c1117bm.getClass();
                HashMap map4 = new HashMap();
                map4.put("messageType", "validatorHtmlLoaded");
                map4.put("id", (String) map3.get("id"));
                c1117bm.f18083b.b(map4);
                break;
        }
    }

    public final L h(Object... objArr) {
        Constructor constructorF;
        synchronized (((AtomicBoolean) this.f21780I)) {
            if (!((AtomicBoolean) this.f21780I).get()) {
                try {
                    try {
                        constructorF = ((C1561kH) ((G) this.f21779H)).f();
                    } catch (Exception e8) {
                        throw new RuntimeException("Error instantiating extension", e8);
                    }
                } catch (ClassNotFoundException unused) {
                    ((AtomicBoolean) this.f21780I).set(true);
                    constructorF = null;
                }
            }
            constructorF = null;
        }
        if (constructorF == null) {
            return null;
        }
        try {
            return (L) constructorF.newInstance(objArr);
        } catch (Exception e9) {
            throw new IllegalStateException("Unexpected error creating extractor", e9);
        }
    }

    public final void i(C1151cK c1151cK) {
        synchronized (c1151cK) {
        }
        Handler handler = (Handler) this.f21779H;
        if (handler != null) {
            handler.post(new RunnableC2166w(this, c1151cK, 1));
        }
    }

    public Set j(C0979Wi c0979Wi) {
        return Collections.singleton(new C0825Lk(c0979Wi, AbstractC1988se.f20911f));
    }

    public Set k(C0979Wi c0979Wi) {
        return Collections.singleton(new C0825Lk(c0979Wi, AbstractC1988se.f20911f));
    }

    public final void l(String str) {
        switch (this.f21778G) {
            case 0:
                int i8 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) this.f21780I).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1019, new C1669mL(13, 0));
                break;
            default:
                try {
                    JSONObject jSONObjectPut = new JSONObject().put("message", str).put("action", (String) this.f21780I);
                    InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) this.f21779H;
                    if (interfaceC0715Ef != null) {
                        interfaceC0715Ef.b(jSONObjectPut, "onError");
                    }
                } catch (JSONException e8) {
                    p120p3.h.e("Error occurred while dispatching error event.", e8);
                    return;
                }
                break;
        }
    }

    public final void m(int i8, int i9, int i10, int i11, float f8, int i12) {
        try {
            ((InterfaceC0715Ef) this.f21779H).b(new JSONObject().put("width", i8).put("height", i9).put("maxSizeWidth", i10).put("maxSizeHeight", i11).put("density", f8).put("rotation", i12), "onScreenInfoChanged");
        } catch (JSONException e8) {
            p120p3.h.e("Error occurred while obtaining screen information.", e8);
        }
    }

    public final void n(int i8, int i9, int i10, int i11) {
        try {
            ((InterfaceC0715Ef) this.f21779H).b(new JSONObject().put("x", i8).put("y", i9).put("width", i10).put("height", i11), "onSizeChanged");
        } catch (JSONException e8) {
            p120p3.h.e("Error occurred while dispatching size change.", e8);
        }
    }

    public final void o(String str) {
        try {
            ((InterfaceC0715Ef) this.f21779H).b(new JSONObject().put("state", str), "onStateChanged");
        } catch (JSONException e8) {
            p120p3.h.e("Error occurred while dispatching state change.", e8);
        }
    }

    public final void p(C2043th c2043th) {
        Handler handler = (Handler) this.f21779H;
        if (handler != null) {
            handler.post(new RunnableC0755Ha(1, this, c2043th));
        }
    }

    public final String toString() {
        String string;
        switch (this.f21778G) {
            case 11:
                try {
                    ((Base64OutputStream) this.f21780I).close();
                } catch (IOException e8) {
                    p120p3.h.e("HashManager: Unable to convert to Base64.", e8);
                }
                try {
                    try {
                        ((ByteArrayOutputStream) this.f21779H).close();
                        string = ((ByteArrayOutputStream) this.f21779H).toString();
                        break;
                    } catch (IOException e9) {
                        p120p3.h.e("HashManager: Unable to convert to Base64.", e9);
                        string = HttpUrl.FRAGMENT_ENCODE_SET;
                    }
                    return string;
                } finally {
                    this.f21779H = null;
                    this.f21780I = null;
                }
            default:
                return super.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.VB
    /* JADX INFO: renamed from: zza */
    public final InterfaceC1556kC mo5zza() {
        switch (this.f21778G) {
            case 17:
                C2145vf c2145vf = (C2145vf) this.f21779H;
                VB vb = (VB) this.f21780I;
                c2145vf.getClass();
                InterfaceC1556kC interfaceC1556kCMo5zza = vb.mo5zza();
                K4 k8 = new K4(c2145vf, 28);
                return new C1937rf(c2145vf.f21529G, interfaceC1556kCMo5zza, c2145vf.f21542T, c2145vf.f21543U, c2145vf, k8);
            default:
                AtomicInteger atomicInteger = C2145vf.f21527a0;
                InterfaceC1556kC interfaceC1556kCMo5zza2 = ((VB) this.f21779H).mo5zza();
                byte[] bArr = (byte[]) this.f21780I;
                return new C1989sf(new C2177wA(bArr), bArr.length, interfaceC1556kCMo5zza2);
        }
    }

    public void zzb() {
        byte[] bArr = Et.f13239f;
        int length = bArr.length;
        ((C1534jr) this.f21780I).h(0, bArr);
    }

    public void zzc() {
        switch (this.f21778G) {
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                PA pa = ViewTreeObserverOnGlobalLayoutListenerC0912Rl.f16337V;
                Map mapZzm = ((InterfaceViewOnClickListenerC1220dm) this.f21779H).zzm();
                if (mapZzm != null) {
                    int i8 = pa.f15342J;
                    int i9 = 0;
                    while (i9 < i8) {
                        Object obj = mapZzm.get((String) pa.get(i9));
                        i9++;
                        if (obj != null) {
                            ((InterfaceViewOnClickListenerC1220dm) this.f21779H).onClick((ViewGroup) this.f21780I);
                            break;
                        }
                    }
                    break;
                }
                break;
            default:
                C0721El c0721El = ((BinderC0812Km) this.f21780I).f14402J;
                if (c0721El != null) {
                    c0721El.e((String) this.f21779H);
                }
                break;
        }
    }

    public C2218x(Context context) {
        this.f21778G = 10;
        this.f21780I = context;
        this.f21779H = null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        C2040te c2040te;
        switch (this.f21778G) {
            case 16:
                ((InterfaceC2144ve) this.f21779H).mo0zza(obj);
                return;
            case 19:
                C2095uh c2095uh = (C2095uh) this.f21780I;
                String str = (String) this.f21779H;
                String str2 = (String) obj;
                C1127bw c1127bw = c2095uh.f21353N;
                List listC = c2095uh.c();
                c1127bw.a(c2095uh.f21352M.b(c2095uh.f21350K, c2095uh.f21351L, false, str, str2, listC));
                return;
            case 24:
                ((C0721El) this.f21780I).f13187k.p((InterfaceC0715Ef) obj);
                C0721El c0721El = (C0721El) this.f21780I;
                C0781Il c0781Il = c0721El.f13187k;
                synchronized (c0781Il) {
                    c2040te = c0781Il.f14034n;
                }
                C1689mq c1689mqX = c0721El.x((String) this.f21779H, true);
                if (c1689mqX != null && c2040te != null) {
                    c2040te.b(c1689mqX);
                    return;
                } else {
                    if (c2040te != null) {
                        c2040te.cancel(false);
                        return;
                    }
                    return;
                }
            default:
                int i8 = C0721El.f13179G;
                ((C0721El) this.f21780I).t((View) this.f21779H, (C1689mq) obj);
                return;
        }
    }

    public C2218x(X2 x7) {
        this.f21778G = 7;
        this.f21780I = x7;
        this.f21779H = new C1286f0(new byte[4], 4);
    }

    @Override // com.google.android.gms.internal.ads.E3
    /* JADX INFO: renamed from: zza */
    public final File mo6zza() {
        if (((File) this.f21779H) == null) {
            this.f21779H = new File(((Context) this.f21780I).getCacheDir(), "volley");
        }
        return (File) this.f21779H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2092ue
    public final void zza() {
        p113o3.I.k("callJs > getEngine: Promise rejected");
        ((C2040te) this.f21779H).c(new C0129t("Unable to obtain a JavascriptEngine."));
        ((C0725Fa) this.f21780I).s();
    }

    public C2218x(P8 p8) {
        this.f21778G = 15;
        this.f21779H = new ArrayList();
        try {
            this.f21780I = p8.zzg();
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            this.f21780I = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        try {
            for (Object obj : p8.zzh()) {
                T8 t8Z3 = obj instanceof IBinder ? K8.z3((IBinder) obj) : null;
                if (t8Z3 != null) {
                    ((List) this.f21779H).add(new C1000Yb(t8Z3));
                }
            }
        } catch (RemoteException e9) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        switch (this.f21778G) {
            case 16:
                ((InterfaceC2092ue) this.f21780I).zza();
                break;
            case 19:
                C2095uh c2095uh = (C2095uh) this.f21780I;
                C1127bw c1127bw = c2095uh.f21353N;
                List listC = c2095uh.c();
                String str = (String) this.f21779H;
                c1127bw.a(c2095uh.f21352M.b(c2095uh.f21350K, c2095uh.f21351L, false, str, null, listC));
                break;
            case 24:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15705Q4)).booleanValue()) {
                    p083k3.l.f25980A.f25987g.h("omid native display exp", th);
                }
                break;
            default:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15705Q4)).booleanValue()) {
                    p083k3.l.f25980A.f25987g.h("omid native display exp", th);
                }
                break;
        }
    }

    public C2218x(C0721El c0721El) {
        this.f21778G = 24;
        this.f21779H = "Google";
        this.f21780I = c0721El;
    }

    public C2218x(BinderC0812Km binderC0812Km) {
        this.f21778G = 29;
        this.f21779H = "_videoMediaView";
        this.f21780I = binderC0812Km;
    }

    public /* synthetic */ C2218x(Object obj, Object obj2, int i8) {
        this.f21778G = i8;
        this.f21779H = obj;
        this.f21780I = obj2;
    }

    public /* synthetic */ C2218x(Object obj, Object obj2, int i8, int i9) {
        this.f21778G = i8;
        this.f21779H = obj2;
        this.f21780I = obj;
    }

    public /* synthetic */ C2218x(String str, C2274y3 c2274y3) {
        this.f21778G = 9;
        this.f21779H = str;
        this.f21780I = c2274y3;
    }

    public C2218x(int i8) {
        this.f21778G = i8;
        if (i8 != 4) {
            if (i8 == 5) {
                this.f21779H = new C1534jr();
                this.f21780I = new C1909r2();
            } else if (i8 != 11) {
                this.f21779H = new ByteArrayOutputStream(IMediaList.Event.ItemAdded);
                this.f21780I = new DataOutputStream((ByteArrayOutputStream) this.f21779H);
            } else {
                this.f21779H = new ByteArrayOutputStream(4096);
                this.f21780I = new Base64OutputStream((ByteArrayOutputStream) this.f21779H, 10);
            }
        }
    }

    public C2218x(Handler handler, SurfaceHolderCallbackC1979sK surfaceHolderCallbackC1979sK) {
        this.f21778G = 0;
        this.f21779H = handler;
        this.f21780I = surfaceHolderCallbackC1979sK;
    }

    public C2218x(C2272y1 c2272y1) {
        this.f21778G = 8;
        C3 c8 = new C3();
        this.f21779H = c2272y1;
        this.f21780I = c8;
    }

    public C2218x(W7 w7) {
        this.f21778G = 12;
        this.f21780I = w7;
        this.f21779H = new HashMap();
    }

    public /* synthetic */ C2218x(Ys ys) {
        this.f21778G = 6;
        this.f21779H = ys;
        this.f21780I = new C1534jr();
    }

    public C2218x(C1561kH c1561kH) {
        this.f21778G = 1;
        this.f21779H = c1561kH;
        this.f21780I = new AtomicBoolean(false);
    }

    @Override // com.google.android.gms.internal.ads.U2
    public final void a(Ys ys, N n7, A1.I i8) {
    }
}
