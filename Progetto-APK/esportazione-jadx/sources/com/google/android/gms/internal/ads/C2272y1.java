package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.Build;
import android.os.StrictMode;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableRow;
import android.widget.TextView;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.y1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2272y1 implements InterfaceC1131c0, MH, O1, InterfaceC2148vi, InterfaceC1374gl, QB, InterfaceC1119bo, InterfaceC2241xM, WM {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final C2272y1 f21980G = new C2272y1();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C2272y1 f21981H = new C2272y1();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C2272y1 f21982I = new C2272y1();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final byte[] f21983J = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final byte[] f21984K = {-110, -13, -34, 70, -83, 43, 97, 21, -44, 16, -54, -125, -28, -57, -125, -127, -7, 17, 102, -69, 116, -121, -79, 43, -13, 120, 58, 55, -29, -108, 95, 83};

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final C2272y1 f21985L = new C2272y1();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final C2272y1 f21986M = new C2272y1();

    public /* synthetic */ C2272y1(float f8) {
    }

    public static p016c.g d(AbstractC2118v3 abstractC2118v3, Map map) {
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(abstractC2118v3.c());
        URL url = new URL(abstractC2118v3.f21431I);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int i8 = abstractC2118v3.f21440R.f4919H;
        httpURLConnection.setConnectTimeout(i8);
        httpURLConnection.setReadTimeout(i8);
        boolean z7 = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        "https".equals(url.getProtocol());
        try {
            for (String str : map2.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) map2.get(str));
            }
            if (abstractC2118v3.f21430H != 0) {
                httpURLConnection.setRequestMethod("POST");
                byte[] bArrM = abstractC2118v3.m();
                if (bArrM != null) {
                    httpURLConnection.setDoOutput(true);
                    if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                    }
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(bArrM);
                    dataOutputStream.close();
                }
            } else {
                httpURLConnection.setRequestMethod("GET");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if ((responseCode >= 100 && responseCode < 200) || responseCode == 204 || responseCode == 304) {
                p016c.g gVar = new p016c.g(responseCode, h(httpURLConnection.getHeaderFields()), -1, (p143s2.e) null);
                httpURLConnection.disconnect();
                return gVar;
            }
            try {
                return new p016c.g(responseCode, h(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new p143s2.e(httpURLConnection, 1));
            } catch (Throwable th) {
                th = th;
                z7 = true;
                if (!z7) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static final InterfaceC0715Ef e(final Context context, final A2.i iVar, final p120p3.a aVar, final p083k3.a aVar2, final C0864Of c0864Of, final H4 h8, final C2173w6 c2173w6, final C1242e8 c1242e8, final BinderC1431hq binderC1431hq, final Ov ov, final Qv qv, final Zv zv, final String str, final boolean z7, final boolean z8) throws C0835Mf {
        Q7.a(context);
        try {
            Gz gz = new Gz() { // from class: com.google.android.gms.internal.ads.If
                @Override // com.google.android.gms.internal.ads.Gz
                public final Object zza() {
                    A2.i iVar2 = iVar;
                    String str2 = str;
                    boolean z9 = z7;
                    C2173w6 c2173w7 = c2173w6;
                    boolean z10 = z8;
                    H4 h9 = h8;
                    Ov ov2 = ov;
                    C1242e8 c1242e9 = c1242e8;
                    p083k3.h hVar = c0864Of;
                    Qv qv2 = qv;
                    Context context2 = context;
                    p120p3.a aVar3 = aVar;
                    p083k3.a aVar4 = aVar2;
                    Zv zv2 = zv;
                    BinderC1431hq binderC1431hq2 = binderC1431hq;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i8 = ViewTreeObserverOnGlobalLayoutListenerC0920Sf.f16444H0;
                        C1265eg c1265eg = new C1265eg(context2);
                        c1265eg.setBaseContext(context2);
                        C0892Qf c0892Qf = new C0892Qf(new ViewTreeObserverOnGlobalLayoutListenerC0920Sf(c1265eg, iVar2, str2, z9, h9, c1242e9, aVar3, hVar, aVar4, c2173w7, ov2, qv2, zv2));
                        p083k3.l.f25980A.f25985e.getClass();
                        c0892Qf.setWebViewClient(new C1004Yf(c0892Qf, c2173w7, z10, binderC1431hq2));
                        c0892Qf.setWebChromeClient(new C0700Df(c0892Qf));
                        return c0892Qf;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                return (InterfaceC0715Ef) gz.zza();
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        } catch (Throwable th) {
            throw new C0835Mf("Webview initialization failed.", th);
        }
    }

    public static /* bridge */ C1408hI f(Object obj) {
        AbstractC1873qH abstractC1873qH = (AbstractC1873qH) obj;
        C1408hI c1408hI = abstractC1873qH.zzt;
        if (c1408hI != C1408hI.f19078f) {
            return c1408hI;
        }
        C1408hI c1408hIB = C1408hI.b();
        abstractC1873qH.zzt = c1408hIB;
        return c1408hIB;
    }

    public static boolean g(File file) throws GeneralSecurityException {
        try {
            X509Certificate[][] x509CertificateArrM = U4.a.m(file.getAbsolutePath());
            if (x509CertificateArrM.length != 1) {
                throw new GeneralSecurityException("APK has more than one signature.");
            }
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(x509CertificateArrM[0][0].getEncoded());
            if (Arrays.equals(f21983J, bArrDigest)) {
                return true;
            }
            return !"user".equals(Build.TYPE) && Arrays.equals(f21984K, bArrDigest);
        } catch (C1547k3 e8) {
            throw new GeneralSecurityException("Package is not signed", e8);
        } catch (IOException e9) {
            e = e9;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        } catch (RuntimeException e10) {
            e = e10;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        }
    }

    public static ArrayList h(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new C1859q3((String) entry.getKey(), (String) it.next()));
                }
            }
        }
        return arrayList;
    }

    public static TextView i(Context context, String str, int i8, int i9, float f8, String str2) {
        TextView textView = new TextView(context);
        textView.setTag(str2);
        j(textView, -2, -2);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, f8, textView.getResources().getDisplayMetrics());
        textView.setLayoutParams(marginLayoutParams);
        textView.setTextAppearance(context, i8);
        textView.setTextColor(i9);
        textView.setText(str);
        return textView;
    }

    public static void j(View view, int i8, int i9) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams);
        layoutParams2.height = i8;
        layoutParams2.width = i9;
        view.setLayoutParams(layoutParams2);
    }

    public static void k(Object obj) {
        C1408hI c1408hI = ((AbstractC1873qH) obj).zzt;
        if (c1408hI.f19083e) {
            c1408hI.f19083e = false;
        }
    }

    public static boolean l(int i8, C1251eH c1251eH, Object obj) throws AH {
        int i9 = c1251eH.f18498b;
        int i10 = i9 >>> 3;
        int i11 = i9 & 7;
        AbstractC1200dH abstractC1200dH = c1251eH.f18497a;
        if (i11 == 0) {
            c1251eH.q(0);
            ((C1408hI) obj).c(i10 << 3, Long.valueOf(abstractC1200dH.r()));
            return true;
        }
        if (i11 == 1) {
            c1251eH.q(1);
            ((C1408hI) obj).c((i10 << 3) | 1, Long.valueOf(abstractC1200dH.q()));
            return true;
        }
        if (i11 == 2) {
            c1251eH.q(2);
            ((C1408hI) obj).c((i10 << 3) | 2, abstractC1200dH.v());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw new C2340zH();
            }
            c1251eH.q(5);
            ((C1408hI) obj).c(5 | (i10 << 3), Integer.valueOf(abstractC1200dH.k()));
            return true;
        }
        C1408hI c1408hIB = C1408hI.b();
        int i12 = i10 << 3;
        int i13 = i8 + 1;
        if (i13 >= 100) {
            throw new AH("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (c1251eH.t() != Integer.MAX_VALUE && l(i13, c1251eH, c1408hIB)) {
        }
        if ((i12 | 4) != c1251eH.f18498b) {
            throw new AH("Protocol message end-group tag did not match expected tag.");
        }
        if (c1408hIB.f19083e) {
            c1408hIB.f19083e = false;
        }
        ((C1408hI) obj).c(i12 | 3, c1408hIB);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.O1
    public long a(M m7) {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.QB
    public D4.b zza() {
        return Cw.N1(null);
    }

    @Override // com.google.android.gms.internal.ads.MH
    public LH zzb(Class cls) {
        if (!AbstractC1873qH.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (LH) AbstractC1873qH.p(cls.asSubclass(AbstractC1873qH.class)).x(3, null);
        } catch (Exception e8) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.MH
    public boolean zzc(Class cls) {
        return AbstractC1873qH.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.O1
    public Y zze() {
        return new P(-9223372036854775807L, 0L);
    }

    public C2272y1(Context context) {
        new C0871Om(context);
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map.clear();
        map2.clear();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2148vi
    /* JADX INFO: renamed from: zza, reason: collision with other method in class */
    public p090l3.B0 mo9zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
    public void zza(Object obj) {
        int i8 = C2135vK.f21463U;
        C2032tL c2032tL = (C2032tL) ((InterfaceC1152cL) obj);
        c2032tL.i(c2032tL.l(), 22, new C1669mL((AbstractC1617lL) null));
    }

    @Override // com.google.android.gms.internal.ads.O1
    public void b(long j8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1374gl
    public void c(boolean z7, Context context, C2201wj c2201wj) {
    }
}
