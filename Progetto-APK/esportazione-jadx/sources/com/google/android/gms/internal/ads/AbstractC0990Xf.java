package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toolbar;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.videolan.libvlc.media.MediaPlayer;
import p090l3.C3099q;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Xf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0990Xf extends WebViewClient implements InterfaceC3067a, InterfaceC0869Ok {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final /* synthetic */ int f17456l0 = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0715Ef f17457G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2173w6 f17458H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final HashMap f17459I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f17460J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public InterfaceC3067a f17461K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public p105n3.m f17462L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public InterfaceC1162cg f17463M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public InterfaceC1214dg f17464N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public F9 f17465O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public G9 f17466P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public InterfaceC0869Ok f17467Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f17468R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f17469S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f17470T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f17471U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public String f17472V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f17473W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f17474X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f17475Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public p105n3.c f17476Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public C0986Xb f17477a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public p083k3.b f17478b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public C0930Tb f17479c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public InterfaceC0758Hd f17480d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f17481e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f17482f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f17483g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f17484h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final HashSet f17485i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final BinderC1431hq f17486j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ViewOnAttachStateChangeListenerC0730Ff f17487k0;

    public AbstractC0990Xf(C0892Qf c0892Qf, C2173w6 c2173w6, boolean z7, BinderC1431hq binderC1431hq) {
        C0986Xb c0986Xb = new C0986Xb(c0892Qf, c0892Qf.f16040G.D(), new I7(c0892Qf.getContext()));
        this.f17459I = new HashMap();
        this.f17460J = new Object();
        this.f17470T = 0;
        this.f17471U = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f17472V = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f17458H = c2173w6;
        this.f17457G = c0892Qf;
        this.f17473W = z7;
        this.f17477a0 = c0986Xb;
        this.f17479c0 = null;
        this.f17485i0 = new HashSet(Arrays.asList(((String) C3099q.f26624d.f26627c.a(Q7.f15863j5)).split(",")));
        this.f17486j0 = binderC1431hq;
    }

    public static final boolean G(boolean z7, InterfaceC0715Ef interfaceC0715Ef) {
        return (!z7 || interfaceC0715Ef.l().b() || interfaceC0715Ef.q0().equals("interstitial_mb")) ? false : true;
    }

    public static WebResourceResponse z() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15598D0)).booleanValue()) {
            return new WebResourceResponse(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    public final WebResourceResponse C(String str, Map map) throws IOException {
        InterfaceC0715Ef interfaceC0715Ef = this.f17457G;
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(264);
            int i8 = 0;
            while (true) {
                i8++;
                if (i8 > 20) {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException("Too many redirects (20)");
                }
                URLConnection uRLConnectionOpenConnection = url.openConnection();
                uRLConnectionOpenConnection.setConnectTimeout(10000);
                uRLConnectionOpenConnection.setReadTimeout(10000);
                for (Map.Entry entry : map.entrySet()) {
                    uRLConnectionOpenConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                    throw new IOException("Invalid protocol.");
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                p083k3.l.f25980A.f25983c.y(interfaceC0715Ef.getContext(), interfaceC0715Ef.zzn().f28196G, httpURLConnection, 60000);
                p120p3.g gVar = new p120p3.g();
                WebResourceResponse webResourceResponse = null;
                gVar.a(httpURLConnection, null);
                int responseCode = httpURLConnection.getResponseCode();
                gVar.b(httpURLConnection, responseCode);
                if (responseCode < 300 || responseCode >= 400) {
                    String contentType = httpURLConnection.getContentType();
                    boolean zIsEmpty = TextUtils.isEmpty(contentType);
                    String strTrim = HttpUrl.FRAGMENT_ENCODE_SET;
                    String strTrim2 = zIsEmpty ? HttpUrl.FRAGMENT_ENCODE_SET : contentType.split(";")[0].trim();
                    String contentType2 = httpURLConnection.getContentType();
                    if (!TextUtils.isEmpty(contentType2)) {
                        String[] strArrSplit = contentType2.split(";");
                        if (strArrSplit.length != 1) {
                            for (int i9 = 1; i9 < strArrSplit.length; i9++) {
                                if (strArrSplit[i9].trim().startsWith("charset")) {
                                    String[] strArrSplit2 = strArrSplit[i9].trim().split("=");
                                    if (strArrSplit2.length > 1) {
                                        strTrim = strArrSplit2[1].trim();
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    String str2 = strTrim;
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    HashMap map2 = new HashMap(headerFields.size());
                    for (Map.Entry<String, List<String>> entry2 : headerFields.entrySet()) {
                        if (entry2.getKey() != null && entry2.getValue() != null && !entry2.getValue().isEmpty()) {
                            map2.put(entry2.getKey(), entry2.getValue().get(0));
                        }
                    }
                    F2.G g8 = p083k3.l.f25980A.f25985e;
                    int responseCode2 = httpURLConnection.getResponseCode();
                    String responseMessage = httpURLConnection.getResponseMessage();
                    InputStream inputStream = httpURLConnection.getInputStream();
                    g8.getClass();
                    webResourceResponse = new WebResourceResponse(strTrim2, str2, responseCode2, responseMessage, map2, inputStream);
                } else {
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null) {
                        throw new IOException("Missing Location header in redirect");
                    }
                    if (!headerField.startsWith("tel:")) {
                        URL url2 = new URL(url, headerField);
                        String protocol = url2.getProtocol();
                        if (protocol == null) {
                            p120p3.h.g("Protocol is null");
                            webResourceResponse = z();
                        } else if (protocol.equals("http") || protocol.equals("https")) {
                            p120p3.h.b("Redirecting to " + headerField);
                            httpURLConnection.disconnect();
                            url = url2;
                        } else {
                            p120p3.h.g("Unsupported scheme: " + protocol);
                            webResourceResponse = z();
                        }
                    }
                }
                TrafficStats.clearThreadStatsTag();
                return webResourceResponse;
            }
        } catch (Throwable th) {
            TrafficStats.clearThreadStatsTag();
            throw th;
        }
    }

    public final void E(Map map, List list, String str) {
        if (p113o3.I.m()) {
            p113o3.I.k("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                p113o3.I.k("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((N9) it.next()).f(this.f17457G, map);
        }
    }

    public final void F(View view, InterfaceC0758Hd interfaceC0758Hd, int i8) throws Throwable {
        boolean z7;
        Bitmap bitmapCreateBitmap;
        C0728Fd c0728Fd = (C0728Fd) interfaceC0758Hd;
        boolean z8 = c0728Fd.f13375g.f13563I;
        if (!z8 || (z7 = c0728Fd.f13378j) || i8 <= 0) {
            return;
        }
        if (z8 && !z7) {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            Bitmap bitmap = null;
            if (view != null) {
                try {
                    boolean zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
                    view.setDrawingCacheEnabled(true);
                    Bitmap drawingCache = view.getDrawingCache();
                    bitmapCreateBitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
                    try {
                        view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
                    } catch (RuntimeException e8) {
                        e = e8;
                        p120p3.h.e("Fail to capture the web view", e);
                    }
                } catch (RuntimeException e9) {
                    e = e9;
                    bitmapCreateBitmap = null;
                }
                if (bitmapCreateBitmap == null) {
                    try {
                        int width = view.getWidth();
                        int height = view.getHeight();
                        if (width == 0 || height == 0) {
                            p120p3.h.g("Width or height of view is zero");
                        } else {
                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                            Canvas canvas = new Canvas(bitmapCreateBitmap2);
                            view.layout(0, 0, width, height);
                            view.draw(canvas);
                            bitmap = bitmapCreateBitmap2;
                        }
                    } catch (RuntimeException e10) {
                        p120p3.h.e("Fail to capture the webview", e10);
                    }
                } else {
                    bitmap = bitmapCreateBitmap;
                }
            }
            if (bitmap == null) {
                S3.e.w("Failed to capture the webview bitmap.");
            } else {
                c0728Fd.f13378j = true;
                RunnableC0755Ha runnableC0755Ha = new RunnableC0755Ha(13, c0728Fd, bitmap);
                if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                    runnableC0755Ha.run();
                } else {
                    AbstractC1988se.f20906a.execute(runnableC0755Ha);
                }
            }
        }
        if (!c0728Fd.f13375g.f13563I || c0728Fd.f13378j) {
            return;
        }
        p113o3.O.f27924l.postDelayed(new RunnableC1368gf(this, view, c0728Fd, i8), 100L);
    }

    public final void H() {
        synchronized (this.f17460J) {
        }
    }

    public final void J() {
        synchronized (this.f17460J) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x02bd A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #12 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000e, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x0049, B:18:0x0065, B:20:0x007f, B:22:0x0096, B:23:0x0099, B:25:0x009c, B:28:0x00b6, B:31:0x00be, B:34:0x00cc, B:37:0x00e0, B:53:0x0143, B:106:0x02bd, B:93:0x020c, B:86:0x01e6, B:85:0x01bb, B:94:0x0238, B:95:0x0266, B:36:0x00d7, B:96:0x0267, B:98:0x0272, B:100:0x0278, B:102:0x02ab, B:108:0x02d0, B:110:0x02d6, B:112:0x02e4), top: B:121:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:110:0x02d6 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #12 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000e, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x0049, B:18:0x0065, B:20:0x007f, B:22:0x0096, B:23:0x0099, B:25:0x009c, B:28:0x00b6, B:31:0x00be, B:34:0x00cc, B:37:0x00e0, B:53:0x0143, B:106:0x02bd, B:93:0x020c, B:86:0x01e6, B:85:0x01bb, B:94:0x0238, B:95:0x0266, B:36:0x00d7, B:96:0x0267, B:98:0x0272, B:100:0x0278, B:102:0x02ab, B:108:0x02d0, B:110:0x02d6, B:112:0x02e4), top: B:121:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:114:0x02e9 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x009b  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a5 A[Catch: all -> 0x01ae, TryCatch #4 {all -> 0x01ae, blocks: (B:89:0x01ef, B:91:0x0201, B:92:0x0208, B:78:0x0193, B:80:0x01a5, B:84:0x01b1), top: B:118:0x00e0 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0201 A[Catch: all -> 0x01ae, TryCatch #4 {all -> 0x01ae, blocks: (B:89:0x01ef, B:91:0x0201, B:92:0x0208, B:78:0x0193, B:80:0x01a5, B:84:0x01b1), top: B:118:0x00e0 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final WebResourceResponse K(String str, Map map) throws Throwable {
        int i8;
        InputStream inputStream;
        InputStream c1453iB;
        boolean z7;
        boolean z8;
        boolean z9;
        InputStream inputStream2;
        String str2;
        InterfaceC0715Ef interfaceC0715Ef = this.f17457G;
        try {
            HashMap map2 = new HashMap();
            if (interfaceC0715Ef.f() != null) {
                map2 = interfaceC0715Ef.f().f15291w0;
            }
            String strD = com.bumptech.glide.c.D(str, interfaceC0715Ef.getContext(), this.f17484h0, map2);
            if (!strD.equals(str)) {
                return C(strD, map);
            }
            C1758o6 c1758o6I = C1758o6.i(Uri.parse(str));
            if (c1758o6I != null) {
                HashMap map3 = new HashMap();
                map3.put("Access-Control-Allow-Origin", "*");
                Uri uri = Uri.parse(str);
                if (uri.getQueryParameterNames().contains("range")) {
                    List listS = Xu.j(new C2061tz('-')).s(uri.getQueryParameter("range"));
                    if (listS.size() == 2) {
                        int i9 = Integer.parseInt((String) listS.get(0));
                        int i10 = Integer.parseInt((String) listS.get(1)) + 1;
                        if (i9 > 0) {
                            c1758o6I.f20241N = i9;
                        }
                        i8 = i10 - i9;
                    } else {
                        i8 = -1;
                    }
                } else {
                    i8 = -1;
                }
                J7 j8 = Q7.f15759X3;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    String strZzr = interfaceC0715Ef.zzr();
                    if (strZzr == null) {
                        strZzr = HttpUrl.FRAGMENT_ENCODE_SET;
                    }
                    c1758o6I.f20242O = strZzr;
                    c1758o6I.f20243P = interfaceC0715Ef.zzf();
                    boolean z10 = c1758o6I.f20240M;
                    O7 o7 = c3099q.f26627c;
                    try {
                        long jLongValue = (z10 ? (Long) o7.a(Q7.f15774Z3) : (Long) o7.a(Q7.f15766Y3)).longValue();
                        p083k3.l lVar = p083k3.l.f25980A;
                        lVar.f25990j.getClass();
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        C1862q6 c1862q6E = C1561kH.e(interfaceC0715Ef.getContext(), c1758o6I);
                        try {
                            C2069u6 c2069u6 = (C2069u6) c1862q6E.f21082G.get(jLongValue, TimeUnit.MILLISECONDS);
                            try {
                                try {
                                    map3.put("X-Afma-Gcache-HasAdditionalMetadataFromReadV2", Boolean.toString(c2069u6.f21201b));
                                    map3.put("X-Afma-Gcache-IsGcacheHit", Boolean.toString(c2069u6.f21202c));
                                    map3.put("X-Afma-Gcache-IsDownloaded", Boolean.toString(c2069u6.f21204e));
                                    map3.put("X-Afma-Gcache-CachedBytes", Long.toString(c2069u6.f21203d));
                                    InputStream inputStream3 = c2069u6.f21200a;
                                    if (i8 != -1) {
                                        long j9 = i8;
                                        try {
                                            int i11 = AbstractC1503jB.f19444a;
                                            c1453iB = new C1453iB(inputStream3, j9, 0);
                                        } catch (InterruptedException e8) {
                                            e = e8;
                                            inputStream2 = inputStream3;
                                            z9 = true;
                                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15800c4)).booleanValue()) {
                                                p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest.gcache", e);
                                            }
                                            c1862q6E.cancel(true);
                                            Thread.currentThread().interrupt();
                                            p083k3.l.f25980A.f25990j.getClass();
                                            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                            p113o3.O.f27924l.post(new RunnableC0933Te(this, z9, jElapsedRealtime2, 2));
                                            str2 = "Cache connection took " + jElapsedRealtime2 + "ms";
                                            p113o3.I.k(str2);
                                            inputStream = inputStream2;
                                        } catch (ExecutionException e9) {
                                            e = e9;
                                            inputStream2 = inputStream3;
                                            z8 = true;
                                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15800c4)).booleanValue()) {
                                                p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest.gcache", e);
                                            }
                                            c1862q6E.cancel(true);
                                            p083k3.l.f25980A.f25990j.getClass();
                                            long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                            p113o3.O.f27924l.post(new RunnableC0933Te(this, z8, jElapsedRealtime3, 2));
                                            str2 = "Cache connection took " + jElapsedRealtime3 + "ms";
                                            p113o3.I.k(str2);
                                            inputStream = inputStream2;
                                        } catch (TimeoutException e10) {
                                            e = e10;
                                            inputStream2 = inputStream3;
                                            z8 = true;
                                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15800c4)).booleanValue()) {
                                                p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest.gcache", e);
                                            }
                                            c1862q6E.cancel(true);
                                            p083k3.l.f25980A.f25990j.getClass();
                                            long jElapsedRealtime4 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                            p113o3.O.f27924l.post(new RunnableC0933Te(this, z8, jElapsedRealtime4, 2));
                                            str2 = "Cache connection took " + jElapsedRealtime4 + "ms";
                                            p113o3.I.k(str2);
                                            inputStream = inputStream2;
                                        }
                                    } else {
                                        c1453iB = inputStream3;
                                    }
                                    lVar.f25990j.getClass();
                                    long jElapsedRealtime5 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                    p113o3.O.f27924l.post(new RunnableC0933Te(this, true, jElapsedRealtime5, 2));
                                    p113o3.I.k("Cache connection took " + jElapsedRealtime5 + "ms");
                                    inputStream = c1453iB;
                                } catch (InterruptedException e11) {
                                    e = e11;
                                    z9 = true;
                                    inputStream2 = null;
                                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15800c4)).booleanValue()) {
                                        p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest.gcache", e);
                                    }
                                    c1862q6E.cancel(true);
                                    Thread.currentThread().interrupt();
                                    p083k3.l.f25980A.f25990j.getClass();
                                    long jElapsedRealtime6 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                    p113o3.O.f27924l.post(new RunnableC0933Te(this, z9, jElapsedRealtime6, 2));
                                    str2 = "Cache connection took " + jElapsedRealtime6 + "ms";
                                    p113o3.I.k(str2);
                                    inputStream = inputStream2;
                                    if (inputStream != null) {
                                        return new WebResourceResponse(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, "OK", map3, inputStream);
                                    }
                                    if (p120p3.g.c()) {
                                        return null;
                                    }
                                    return null;
                                } catch (ExecutionException e12) {
                                    e = e12;
                                    z8 = true;
                                    inputStream2 = null;
                                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15800c4)).booleanValue()) {
                                        p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest.gcache", e);
                                    }
                                    c1862q6E.cancel(true);
                                    p083k3.l.f25980A.f25990j.getClass();
                                    long jElapsedRealtime7 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                    p113o3.O.f27924l.post(new RunnableC0933Te(this, z8, jElapsedRealtime7, 2));
                                    str2 = "Cache connection took " + jElapsedRealtime7 + "ms";
                                    p113o3.I.k(str2);
                                    inputStream = inputStream2;
                                    if (inputStream != null) {
                                        return new WebResourceResponse(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, "OK", map3, inputStream);
                                    }
                                    if (p120p3.g.c()) {
                                        return null;
                                    }
                                    return null;
                                } catch (TimeoutException e13) {
                                    e = e13;
                                    z8 = true;
                                    inputStream2 = null;
                                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15800c4)).booleanValue()) {
                                        p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest.gcache", e);
                                    }
                                    c1862q6E.cancel(true);
                                    p083k3.l.f25980A.f25990j.getClass();
                                    long jElapsedRealtime8 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                    p113o3.O.f27924l.post(new RunnableC0933Te(this, z8, jElapsedRealtime8, 2));
                                    str2 = "Cache connection took " + jElapsedRealtime8 + "ms";
                                    p113o3.I.k(str2);
                                    inputStream = inputStream2;
                                    if (inputStream != null) {
                                        return new WebResourceResponse(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, "OK", map3, inputStream);
                                    }
                                    if (p120p3.g.c()) {
                                        return null;
                                    }
                                    return null;
                                }
                            } catch (Throwable th) {
                                th = th;
                                z7 = 1;
                                p083k3.l.f25980A.f25990j.getClass();
                                long jElapsedRealtime9 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                p113o3.O.f27924l.post(new RunnableC0933Te(this, z7, jElapsedRealtime9, 2));
                                p113o3.I.k("Cache connection took " + jElapsedRealtime9 + "ms");
                                throw th;
                            }
                        } catch (InterruptedException e14) {
                            e = e14;
                            z9 = false;
                        } catch (ExecutionException e15) {
                            e = e15;
                            z8 = false;
                            inputStream2 = null;
                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15800c4)).booleanValue()) {
                                p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest.gcache", e);
                            }
                            c1862q6E.cancel(true);
                            p083k3.l.f25980A.f25990j.getClass();
                            long jElapsedRealtime10 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                            p113o3.O.f27924l.post(new RunnableC0933Te(this, z8, jElapsedRealtime10, 2));
                            str2 = "Cache connection took " + jElapsedRealtime10 + "ms";
                            p113o3.I.k(str2);
                            inputStream = inputStream2;
                            if (inputStream != null) {
                                return new WebResourceResponse(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, "OK", map3, inputStream);
                            }
                            if (p120p3.g.c()) {
                                return null;
                            }
                            return null;
                        } catch (TimeoutException e16) {
                            e = e16;
                            z8 = false;
                            inputStream2 = null;
                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15800c4)).booleanValue()) {
                                p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest.gcache", e);
                            }
                            c1862q6E.cancel(true);
                            p083k3.l.f25980A.f25990j.getClass();
                            long jElapsedRealtime11 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                            p113o3.O.f27924l.post(new RunnableC0933Te(this, z8, jElapsedRealtime11, 2));
                            str2 = "Cache connection took " + jElapsedRealtime11 + "ms";
                            p113o3.I.k(str2);
                            inputStream = inputStream2;
                            if (inputStream != null) {
                                return new WebResourceResponse(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, "OK", map3, inputStream);
                            }
                            if (p120p3.g.c()) {
                                return null;
                            }
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            z7 = 0;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        z7 = c1758o6I;
                    }
                } else {
                    C1654m6 c1654m6F = p083k3.l.f25980A.f25989i.f(c1758o6I);
                    if (c1654m6F == null || !c1654m6F.o()) {
                        inputStream = null;
                    } else {
                        map3.put("X-Afma-Gcache-HasAdditionalMetadataFromReadV2", Boolean.toString(c1654m6F.n()));
                        map3.put("X-Afma-Gcache-IsGcacheHit", Boolean.toString(c1654m6F.q()));
                        map3.put("X-Afma-Gcache-IsDownloaded", Boolean.toString(c1654m6F.p()));
                        map3.put("X-Afma-Gcache-CachedBytes", Long.toString(c1654m6F.i()));
                        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStreamL = c1654m6F.l();
                        if (i8 != -1) {
                            long j10 = i8;
                            int i12 = AbstractC1503jB.f19444a;
                            c1453iB = new C1453iB(autoCloseInputStreamL, j10, 0);
                            inputStream = c1453iB;
                        } else {
                            inputStream = autoCloseInputStreamL;
                        }
                    }
                }
                if (inputStream != null) {
                    return new WebResourceResponse(HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, "OK", map3, inputStream);
                }
            }
            if (p120p3.g.c() || !((Boolean) AbstractC1760o8.f20245b.l()).booleanValue()) {
                return null;
            }
            return C(str, map);
        } catch (Exception e17) {
            e = e17;
            p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest", e);
            return z();
        } catch (NoClassDefFoundError e18) {
            e = e18;
            p083k3.l.f25980A.f25987g.i("AdWebViewClient.interceptRequest", e);
            return z();
        }
    }

    public final void M() {
        InterfaceC1162cg interfaceC1162cg = this.f17463M;
        InterfaceC0715Ef interfaceC0715Ef = this.f17457G;
        if (interfaceC1162cg != null && ((this.f17481e0 && this.f17483g0 <= 0) || this.f17482f0 || this.f17469S)) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue() && interfaceC0715Ef.zzm() != null) {
                S3.e.v((W7) interfaceC0715Ef.zzm().f21780I, interfaceC0715Ef.zzk(), "awfllc");
            }
            InterfaceC1162cg interfaceC1162cg2 = this.f17463M;
            boolean z7 = false;
            if (!this.f17482f0 && !this.f17469S) {
                z7 = true;
            }
            interfaceC1162cg2.g(this.f17471U, this.f17470T, this.f17472V, z7);
            this.f17463M = null;
        }
        interfaceC0715Ef.u0();
    }

    public final void O() {
        InterfaceC0758Hd interfaceC0758Hd = this.f17480d0;
        if (interfaceC0758Hd != null) {
            ((C0728Fd) interfaceC0758Hd).b();
            this.f17480d0 = null;
        }
        ViewOnAttachStateChangeListenerC0730Ff viewOnAttachStateChangeListenerC0730Ff = this.f17487k0;
        if (viewOnAttachStateChangeListenerC0730Ff != null) {
            ((View) this.f17457G).removeOnAttachStateChangeListener(viewOnAttachStateChangeListenerC0730Ff);
        }
        synchronized (this.f17460J) {
            try {
                this.f17459I.clear();
                this.f17461K = null;
                this.f17462L = null;
                this.f17463M = null;
                this.f17464N = null;
                this.f17465O = null;
                this.f17466P = null;
                this.f17468R = false;
                this.f17473W = false;
                this.f17474X = false;
                this.f17476Z = null;
                this.f17478b0 = null;
                this.f17477a0 = null;
                C0930Tb c0930Tb = this.f17479c0;
                if (c0930Tb != null) {
                    c0930Tb.q(true);
                    this.f17479c0 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q0() {
        InterfaceC0758Hd interfaceC0758Hd = this.f17480d0;
        if (interfaceC0758Hd != null) {
            InterfaceC0715Ef interfaceC0715Ef = this.f17457G;
            WebView webViewH0 = interfaceC0715Ef.h0();
            WeakHashMap weakHashMap = N.N.f4843a;
            if (webViewH0.isAttachedToWindow()) {
                F(webViewH0, interfaceC0758Hd, 10);
                return;
            }
            ViewOnAttachStateChangeListenerC0730Ff viewOnAttachStateChangeListenerC0730Ff = this.f17487k0;
            if (viewOnAttachStateChangeListenerC0730Ff != null) {
                ((View) interfaceC0715Ef).removeOnAttachStateChangeListener(viewOnAttachStateChangeListenerC0730Ff);
            }
            ViewOnAttachStateChangeListenerC0730Ff viewOnAttachStateChangeListenerC0730Ff2 = new ViewOnAttachStateChangeListenerC0730Ff(this, interfaceC0758Hd);
            this.f17487k0 = viewOnAttachStateChangeListenerC0730Ff2;
            ((View) interfaceC0715Ef).addOnAttachStateChangeListener(viewOnAttachStateChangeListenerC0730Ff2);
        }
    }

    public final void R0(p105n3.f fVar, boolean z7, boolean z8) {
        InterfaceC0715Ef interfaceC0715Ef = this.f17457G;
        boolean zJ0 = interfaceC0715Ef.j0();
        boolean z9 = G(zJ0, interfaceC0715Ef) || z8;
        S0(new AdOverlayInfoParcel(fVar, z9 ? null : this.f17461K, zJ0 ? null : this.f17462L, this.f17476Z, interfaceC0715Ef.zzn(), interfaceC0715Ef, z9 || !z7 ? null : this.f17467Q));
    }

    public final void S0(AdOverlayInfoParcel adOverlayInfoParcel) {
        p105n3.f fVar;
        C0930Tb c0930Tb = this.f17479c0;
        boolean z7 = false;
        if (c0930Tb != null) {
            synchronized (c0930Tb.f16669R) {
                z7 = c0930Tb.f16676Y != null;
            }
        }
        F2.G g8 = p083k3.l.f25980A.f25982b;
        F2.G.M(this.f17457G.getContext(), adOverlayInfoParcel, !z7);
        InterfaceC0758Hd interfaceC0758Hd = this.f17480d0;
        if (interfaceC0758Hd != null) {
            String str = adOverlayInfoParcel.f11648R;
            if (str == null && (fVar = adOverlayInfoParcel.f11637G) != null) {
                str = fVar.f27495H;
            }
            ((C0728Fd) interfaceC0758Hd).c(str);
        }
    }

    public final void Y(Uri uri) {
        p113o3.I.k("Received GMSG: ".concat(String.valueOf(uri)));
        HashMap map = this.f17459I;
        String path = uri.getPath();
        List list = (List) map.get(path);
        if (path == null || list == null) {
            p113o3.I.k("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15864j6)).booleanValue() || p083k3.l.f25980A.f25987g.c() == null) {
                return;
            }
            AbstractC1988se.f20906a.execute(new RunnableC0878Pf((path == null || path.length() < 2) ? "null" : path.substring(1), 17));
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        J7 j8 = Q7.f15854i5;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && this.f17485i0.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) c3099q.f26627c.a(Q7.f15872k5)).intValue()) {
                p113o3.I.k("Parsing gmsg query params on BG thread: ".concat(path));
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                o4.getClass();
                RunnableFutureC2023tC runnableFutureC2023tC = new RunnableFutureC2023tC(new p019c2.h(uri, 3));
                o4.f27935k.execute(runnableFutureC2023tC);
                Cw.h2(runnableFutureC2023tC, new C2246xc(this, list, path, uri), AbstractC1988se.f20910e);
                return;
            }
        }
        p113o3.O o7 = p083k3.l.f25980A.f25983c;
        E(p113o3.O.l(uri), list, path);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void onLoadResource(WebView webView, String str) {
        p113o3.I.k("Loading resource: ".concat(String.valueOf(str)));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            Y(uri);
        }
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final void onPageFinished(WebView webView, String str) {
        Toolbar toolbar;
        synchronized (this.f17460J) {
            try {
                if (this.f17457G.a0()) {
                    p113o3.I.k("Blank page loaded, 1...");
                    this.f17457G.A();
                    return;
                }
                this.f17481e0 = true;
                InterfaceC1214dg interfaceC1214dg = this.f17464N;
                if (interfaceC1214dg != null) {
                    interfaceC1214dg.mo7zza();
                    this.f17464N = null;
                }
                M();
                if (this.f17457G.B() != null) {
                    if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.gb)).booleanValue() || (toolbar = this.f17457G.B().f27530b0) == null) {
                        return;
                    }
                    toolbar.setSubtitle(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void onReceivedError(WebView webView, int i8, String str, String str2) {
        this.f17469S = true;
        this.f17470T = i8;
        this.f17471U = str;
        this.f17472V = str2;
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean zDidCrash = renderProcessGoneDetail.didCrash();
        return this.f17457G.C0(renderProcessGoneDetail.rendererPriorityAtExit(), zDidCrash);
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return K(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        p113o3.I.k("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri uriA = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriA.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriA.getHost())) {
            Y(uriA);
        } else {
            boolean z7 = this.f17468R;
            InterfaceC0715Ef interfaceC0715Ef = this.f17457G;
            if (z7 && webView == interfaceC0715Ef.h0()) {
                String scheme = uriA.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    InterfaceC3067a interfaceC3067a = this.f17461K;
                    if (interfaceC3067a != null) {
                        interfaceC3067a.x();
                        InterfaceC0758Hd interfaceC0758Hd = this.f17480d0;
                        if (interfaceC0758Hd != null) {
                            ((C0728Fd) interfaceC0758Hd).c(str);
                        }
                        this.f17461K = null;
                    }
                    InterfaceC0869Ok interfaceC0869Ok = this.f17467Q;
                    if (interfaceC0869Ok != null) {
                        interfaceC0869Ok.q();
                        this.f17467Q = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (interfaceC0715Ef.h0().willNotDraw()) {
                p120p3.h.g("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            } else {
                try {
                    H4 h4T = interfaceC0715Ef.T();
                    Zv zvA0 = interfaceC0715Ef.A0();
                    if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.lb)).booleanValue() || zvA0 == null) {
                        if (h4T != null && h4T.c(uriA)) {
                            uriA = h4T.a(uriA, interfaceC0715Ef.getContext(), (View) interfaceC0715Ef, interfaceC0715Ef.zzi());
                        }
                    } else if (h4T != null && h4T.c(uriA)) {
                        uriA = zvA0.a(uriA, interfaceC0715Ef.getContext(), (View) interfaceC0715Ef, interfaceC0715Ef.zzi());
                    }
                } catch (I4 unused) {
                    p120p3.h.g("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                p083k3.b bVar = this.f17478b0;
                if (bVar == null || bVar.b()) {
                    R0(new p105n3.f("android.intent.action.VIEW", uriA.toString(), null, null, null, null, null, null), true, false);
                } else {
                    bVar.a(str);
                }
            }
        }
        return true;
    }

    public final void m(String str, N9 n9) {
        synchronized (this.f17460J) {
            try {
                List copyOnWriteArrayList = (List) this.f17459I.get(str);
                if (copyOnWriteArrayList == null) {
                    copyOnWriteArrayList = new CopyOnWriteArrayList();
                    this.f17459I.put(str, copyOnWriteArrayList);
                }
                copyOnWriteArrayList.add(n9);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n(boolean z7) {
        synchronized (this.f17460J) {
            this.f17475Y = z7;
        }
    }

    public final void o(C1784oh c1784oh, C1172cq c1172cq, C1488ix c1488ix) {
        s("/click");
        if (c1172cq != null && c1488ix != null) {
            m("/click", new C0927Sm(this.f17467Q, c1784oh, c1488ix, c1172cq));
        } else {
            m("/click", new C0968Vl(1, this.f17467Q, c1784oh));
        }
    }

    public final void p(C1784oh c1784oh, C1172cq c1172cq, C0738Fn c0738Fn) {
        s("/open");
        m("/open", new U9(this.f17478b0, this.f17479c0, c1172cq, c0738Fn, c1784oh));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void q() {
        InterfaceC0869Ok interfaceC0869Ok = this.f17467Q;
        if (interfaceC0869Ok != null) {
            interfaceC0869Ok.q();
        }
    }

    public final void s(String str) {
        synchronized (this.f17460J) {
            try {
                List list = (List) this.f17459I.get(str);
                if (list == null) {
                    return;
                }
                list.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean t() {
        boolean z7;
        synchronized (this.f17460J) {
            z7 = this.f17475Y;
        }
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void u() {
        InterfaceC0869Ok interfaceC0869Ok = this.f17467Q;
        if (interfaceC0869Ok != null) {
            interfaceC0869Ok.u();
        }
    }

    public final boolean v() {
        boolean z7;
        synchronized (this.f17460J) {
            z7 = this.f17473W;
        }
        return z7;
    }

    public final void v0(int i8, int i9) {
        C0986Xb c0986Xb = this.f17477a0;
        if (c0986Xb != null) {
            c0986Xb.q(i8, i9);
        }
        C0930Tb c0930Tb = this.f17479c0;
        if (c0930Tb != null) {
            synchronized (c0930Tb.f16669R) {
                c0930Tb.f16663L = i8;
                c0930Tb.f16664M = i9;
            }
        }
    }

    public final boolean w() {
        boolean z7;
        synchronized (this.f17460J) {
            z7 = this.f17474X;
        }
        return z7;
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        InterfaceC3067a interfaceC3067a = this.f17461K;
        if (interfaceC3067a != null) {
            interfaceC3067a.x();
        }
    }

    public final void y(InterfaceC3067a interfaceC3067a, F9 f9, p105n3.m mVar, G9 g9, p105n3.c cVar, boolean z7, P9 p9, p083k3.b bVar, C0864Of c0864Of, InterfaceC0758Hd interfaceC0758Hd, C1172cq c1172cq, C1488ix c1488ix, C0738Fn c0738Fn, O9 o9, InterfaceC0869Ok interfaceC0869Ok, E9 e9, E9 e10, O9 o10, C1784oh c1784oh) {
        InterfaceC0715Ef interfaceC0715Ef = this.f17457G;
        p083k3.b bVar2 = bVar == null ? new p083k3.b(interfaceC0715Ef.getContext(), interfaceC0758Hd) : bVar;
        this.f17479c0 = new C0930Tb(interfaceC0715Ef, c0864Of);
        this.f17480d0 = interfaceC0758Hd;
        J7 j8 = Q7.f15654K0;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            m("/adMetadata", new E9(f9, 0));
        }
        int i8 = 1;
        if (g9 != null) {
            m("/appEvent", new E9(g9, i8));
        }
        m("/backButton", M9.f14666j);
        m("/refresh", M9.f14667k);
        m("/canOpenApp", M9.f14658b);
        m("/canOpenURLs", M9.f14657a);
        m("/canOpenIntents", M9.f14659c);
        m("/close", M9.f14660d);
        m("/customClose", M9.f14661e);
        m("/instrument", M9.f14670n);
        m("/delayPageLoaded", M9.f14672p);
        m("/delayPageClosed", M9.f14673q);
        m("/getLocationInfo", M9.f14674r);
        m("/log", M9.f14663g);
        m("/mraid", new R9(bVar2, this.f17479c0, c0864Of));
        C0986Xb c0986Xb = this.f17477a0;
        if (c0986Xb != null) {
            m("/mraidLoaded", c0986Xb);
        }
        p083k3.b bVar3 = bVar2;
        m("/open", new U9(bVar2, this.f17479c0, c1172cq, c0738Fn, c1784oh));
        m("/precache", new H9(27));
        m("/touch", M9.f14665i);
        m("/video", M9.f14668l);
        m("/videoMeta", M9.f14669m);
        if (c1172cq == null || c1488ix == null) {
            m("/click", new C0968Vl(1, interfaceC0869Ok, c1784oh));
            m("/httpTrack", M9.f14662f);
        } else {
            m("/click", new C0927Sm(interfaceC0869Ok, c1784oh, c1488ix, c1172cq));
            m("/httpTrack", new C0968Vl(5, c1488ix, c1172cq));
        }
        int i9 = 2;
        if (p083k3.l.f25980A.f26003w.e(interfaceC0715Ef.getContext())) {
            HashMap map = new HashMap();
            if (interfaceC0715Ef.f() != null) {
                map = interfaceC0715Ef.f().f15291w0;
            }
            m("/logScionEvent", new C0968Vl(i9, interfaceC0715Ef.getContext(), map));
        }
        if (p9 != null) {
            m("/setInterstitialProperties", new E9(p9, i9));
        }
        O7 o7 = c3099q.f26627c;
        if (o9 != null && ((Boolean) o7.a(Q7.h8)).booleanValue()) {
            m("/inspectorNetworkExtras", o9);
        }
        if (((Boolean) o7.a(Q7.A8)).booleanValue() && e9 != null) {
            m("/shareSheet", e9);
        }
        if (((Boolean) o7.a(Q7.F8)).booleanValue() && e10 != null) {
            m("/inspectorOutOfContextTest", e10);
        }
        if (((Boolean) o7.a(Q7.J8)).booleanValue() && o10 != null) {
            m("/inspectorStorage", o10);
        }
        if (((Boolean) o7.a(Q7.Oa)).booleanValue()) {
            m("/bindPlayStoreOverlay", M9.f14677u);
            m("/presentPlayStoreOverlay", M9.f14678v);
            m("/expandPlayStoreOverlay", M9.f14679w);
            m("/collapsePlayStoreOverlay", M9.f14680x);
            m("/closePlayStoreOverlay", M9.f14681y);
        }
        if (((Boolean) o7.a(Q7.f15773Z2)).booleanValue()) {
            m("/setPAIDPersonalizationEnabled", M9.f14654A);
            m("/resetPAID", M9.f14682z);
        }
        if (((Boolean) o7.a(Q7.fb)).booleanValue() && interfaceC0715Ef.f() != null && interfaceC0715Ef.f().f15281r0) {
            m("/writeToLocalStorage", M9.f14655B);
            m("/clearLocalStorageKeys", M9.f14656C);
        }
        this.f17461K = interfaceC3067a;
        this.f17462L = mVar;
        this.f17465O = f9;
        this.f17466P = g9;
        this.f17476Z = cVar;
        this.f17478b0 = bVar3;
        this.f17467Q = interfaceC0869Ok;
        this.f17468R = z7;
    }
}
