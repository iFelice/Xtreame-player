package com.google.android.gms.internal.ads;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.api.Service;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import p021c4.C0621y;
import p039f.AbstractC2987b;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ha, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0755Ha implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13755G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f13756H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f13757I;

    public /* synthetic */ RunnableC0755Ha(int i8, Object obj, Object obj2) {
        this.f13755G = i8;
        this.f13756H = obj;
        this.f13757I = obj2;
    }

    private final void a() {
        Q5 q7 = (Q5) this.f13757I;
        View view = (View) this.f13756H;
        q7.getClass();
        try {
            M5 m7 = new M5(q7.f15562L, q7.f15563M, q7.f15564N, q7.f15565O, q7.f15566P, q7.f15567Q, q7.f15568R, q7.f15571U);
            Application applicationJ = p083k3.l.f25980A.f25986f.j();
            if (applicationJ != null && !TextUtils.isEmpty(q7.f15569S)) {
                String str = (String) view.getTag(applicationJ.getResources().getIdentifier((String) C3099q.f26624d.f26627c.a(Q7.f15716S), "id", applicationJ.getPackageName()));
                if (str != null && str.equals(q7.f15569S)) {
                    return;
                }
            }
            N.r rVarB = q7.b(view, m7);
            m7.c();
            if (rVarB.f4919H == 0 && rVarB.f4920I == 0) {
                return;
            }
            int i8 = rVarB.f4920I;
            if (i8 != 0) {
                if (i8 == 0) {
                }
                q7.f15560J.c(m7);
            } else if (m7.f14634k == 0) {
                return;
            }
            C1294f8 c1294f8 = q7.f15560J;
            synchronized (c1294f8.f18728J) {
                try {
                    if (((List) c1294f8.f18727I).contains(m7)) {
                        return;
                    }
                    q7.f15560J.c(m7);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e8) {
            p120p3.h.e("Exception in fetchContentOnUIThread", e8);
            p083k3.l.f25980A.f25987g.i("ContentFetchTask.fetchContent", e8);
        }
    }

    private final void b() {
        C0728Fd c0728Fd = (C0728Fd) this.f13756H;
        Bitmap bitmap = (Bitmap) this.f13757I;
        c0728Fd.getClass();
        VG vg = XG.f17401H;
        WG wg = new WG();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, wg);
        synchronized (c0728Fd.f13376h) {
            CI ci = c0728Fd.f13369a;
            C1047aJ c1047aJA = C1150cJ.A();
            XG xgK = wg.k();
            c1047aJA.d();
            C1150cJ.C((C1150cJ) c1047aJA.f20255H, xgK);
            c1047aJA.d();
            C1150cJ.B((C1150cJ) c1047aJA.f20255H);
            c1047aJA.d();
            C1150cJ.D((C1150cJ) c1047aJA.f20255H);
            C1150cJ c1150cJ = (C1150cJ) c1047aJA.b();
            ci.d();
            C1823pJ.K((C1823pJ) ci.f20255H, c1150cJ);
        }
    }

    /* JADX WARN: Code duplicated, block: B:112:0x02c4  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        C1654m6 c1654m6;
        MediaFormat format;
        Runnable runnable;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        View view;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        R8 r8A;
        Drawable drawable;
        View viewF;
        int i8 = 4;
        int i9 = 2;
        DataOutputStream dataOutputStream = null;
        dataOutputStream = null;
        int i10 = 0;
        switch (this.f13755G) {
            case 0:
                C2244xa c2244xa = (C2244xa) this.f13757I;
                c2244xa.z("/result", M9.f14671o);
                c2244xa.f21879G.destroy();
                return;
            case 1:
                C2218x c2218x = (C2218x) this.f13756H;
                C2043th c2043th = (C2043th) this.f13757I;
                c2218x.getClass();
                int i11 = Et.f13234a;
                p178x.e eVar = ((SurfaceHolderCallbackC1979sK) c2218x.f21780I).f20880G.f21493k;
                eVar.p(25, new Xu(c2043th, 25));
                eVar.o();
                return;
            case 2:
                C2218x c2218x2 = (C2218x) this.f13756H;
                c2218x2.getClass();
                int i12 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) c2218x2.f21780I).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1030, new C1669mL(5, i10));
                return;
            case 3:
                ((C2218x) this.f13756H).l((String) this.f13757I);
                return;
            case 4:
                try {
                    ((C1703n3) this.f13757I).f20061H.put((AbstractC2118v3) this.f13756H);
                    return;
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return;
                }
            case 5:
                a();
                return;
            case 6:
                C1965s6 c1965s6 = (C1965s6) this.f13756H;
                C1706n6 c1706n6 = (C1706n6) this.f13757I;
                try {
                    C1810p6 c1810p6 = (C1810p6) c1706n6.getService();
                    if (c1706n6.d()) {
                        C1758o6 c1758o6 = c1965s6.f20866a;
                        Parcel parcelJ0 = c1810p6.j0();
                        A5.c(parcelJ0, c1758o6);
                        Parcel parcelN2 = c1810p6.n2(2, parcelJ0);
                        c1654m6 = (C1654m6) A5.a(parcelN2, C1654m6.CREATOR);
                        parcelN2.recycle();
                    } else {
                        C1758o6 c1758o7 = c1965s6.f20866a;
                        Parcel parcelJ1 = c1810p6.j0();
                        A5.c(parcelJ1, c1758o7);
                        Parcel parcelN3 = c1810p6.n2(1, parcelJ1);
                        c1654m6 = (C1654m6) A5.a(parcelN3, C1654m6.CREATOR);
                        parcelN3.recycle();
                    }
                    if (!c1654m6.o()) {
                        c1965s6.f20867b.c(new RuntimeException("No entry contents."));
                        C2222x3.d(c1965s6.f20868c);
                        return;
                    }
                    C1913r6 c1913r6 = new C1913r6(c1965s6, c1654m6.l());
                    int i13 = c1913r6.read();
                    if (i13 == -1) {
                        throw new IOException("Unable to read from cache.");
                    }
                    c1913r6.unread(i13);
                    c1965s6.f20867b.b(new C2069u6(c1913r6, c1654m6.n(), c1654m6.q(), c1654m6.i(), c1654m6.p()));
                    return;
                } catch (RemoteException e8) {
                    e = e8;
                    p120p3.h.e("Unable to obtain a cache service instance.", e);
                    c1965s6.f20867b.c(e);
                    C2222x3.d(c1965s6.f20868c);
                    return;
                } catch (IOException e9) {
                    e = e9;
                    p120p3.h.e("Unable to obtain a cache service instance.", e);
                    c1965s6.f20867b.c(e);
                    C2222x3.d(c1965s6.f20868c);
                    return;
                }
            case 7:
                if (((C1965s6) this.f13756H).f20867b.isCancelled()) {
                    ((Future) this.f13757I).cancel(true);
                    return;
                }
                return;
            case 8:
                boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15578A4)).booleanValue();
                J2.t tVar = (J2.t) this.f13756H;
                Context context = (Context) this.f13757I;
                if (zBooleanValue) {
                    try {
                        tVar.f4126I = (D5) com.google.android.gms.internal.measurement.H1.G(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", new C1561kH(16));
                        ((B5) ((D5) tVar.f4126I)).z3(new R3.b(context));
                        tVar.f4125H = true;
                        return;
                    } catch (RemoteException | NullPointerException | p120p3.j unused2) {
                        p120p3.h.b("Cannot dynamite load clearcut");
                        return;
                    }
                }
                return;
            case 9:
                C0785Ja c0785Ja = (C0785Ja) this.f13756H;
                C0770Ia c0770Ia = (C0770Ia) this.f13757I;
                c0785Ja.getClass();
                p083k3.l.f25980A.f25990j.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                ArrayList arrayList = new ArrayList();
                try {
                    p113o3.I.k("loadJavascriptEngine > Before createJavascriptEngine");
                    C2244xa c2244xa2 = new C2244xa(c0785Ja.f14157b, c0785Ja.f14159d);
                    p113o3.I.k("loadJavascriptEngine > After createJavascriptEngine");
                    p113o3.I.k("loadJavascriptEngine > Before setting new engine loaded listener");
                    p151t2.c cVar = new p151t2.c();
                    cVar.f30273I = c0785Ja;
                    cVar.f30274J = arrayList;
                    cVar.f30271G = jCurrentTimeMillis;
                    cVar.f30275K = c0770Ia;
                    cVar.f30272H = c2244xa2;
                    c2244xa2.f21879G.zzN().f17464N = new K4(cVar, 17);
                    p113o3.I.k("loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded");
                    c2244xa2.C("/jsLoaded", new C0680Ca(c0785Ja, jCurrentTimeMillis, c0770Ia, c2244xa2));
                    O1.J j8 = new O1.J();
                    C0695Da c0695Da = new C0695Da(c0785Ja, c2244xa2, j8);
                    j8.f5274H = c0695Da;
                    p113o3.I.k("loadJavascriptEngine > Before registering GmsgHandler for /requestReload");
                    c2244xa2.C("/requestReload", c0695Da);
                    String str = c0785Ja.f14158c;
                    p113o3.I.k("loadJavascriptEngine > javascriptPath: ".concat(String.valueOf(str)));
                    if (str.endsWith(".js")) {
                        p113o3.I.k("loadJavascriptEngine > Before newEngine.loadJavascript");
                        p113o3.I.k("loadJavascript on adWebView from path: ".concat(str));
                        C2244xa.a(new RunnableC2088ua(c2244xa2, "<!DOCTYPE html><html><head><script src=\"" + str + "\"></script></head><body></body></html>", 3));
                        p113o3.I.k("loadJavascriptEngine > After newEngine.loadJavascript");
                    } else if (str.startsWith("<html>")) {
                        p113o3.I.k("loadJavascriptEngine > Before newEngine.loadHtml");
                        p113o3.I.k("loadHtml on adWebView from html");
                        C2244xa.a(new RunnableC2088ua(c2244xa2, str, i9));
                        p113o3.I.k("loadJavascriptEngine > After newEngine.loadHtml");
                    } else {
                        p113o3.I.k("loadJavascriptEngine > Before newEngine.loadHtmlWrapper");
                        p113o3.I.k("loadHtmlWrapper on adWebView from path: ".concat(str));
                        C2244xa.a(new RunnableC2088ua(c2244xa2, str, i10));
                        p113o3.I.k("loadJavascriptEngine > After newEngine.loadHtmlWrapper");
                    }
                    p113o3.I.k("loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed");
                    p113o3.O.f27924l.postDelayed(new RunnableC2348za(c0785Ja, c0770Ia, c2244xa2, arrayList, jCurrentTimeMillis, 1), ((Integer) C3099q.f26624d.f26627c.a(Q7.f15795c)).intValue());
                    return;
                } catch (Throwable th) {
                    p120p3.h.e("Error creating webview.", th);
                    J7 j9 = Q7.f15785a7;
                    C3099q c3099q = C3099q.f26624d;
                    if (((Boolean) c3099q.f26627c.a(j9)).booleanValue()) {
                        c0770Ia.q("SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine", th);
                        return;
                    } else if (((Boolean) c3099q.f26627c.a(Q7.f15803c7)).booleanValue()) {
                        p083k3.l.f25980A.f25987g.h("SdkJavascriptFactory.loadJavascriptEngine", th);
                        c0770Ia.p();
                        return;
                    } else {
                        p083k3.l.f25980A.f25987g.i("SdkJavascriptFactory.loadJavascriptEngine", th);
                        c0770Ia.p();
                        return;
                    }
                }
            case 10:
                F2.G g8 = p083k3.l.f25980A.f25982b;
                F2.G.M(((zzbsd) this.f13757I).f22241a, (AdOverlayInfoParcel) this.f13756H, true);
                return;
            case 11:
                ((p120p3.k) this.f13756H).c((String) this.f13757I);
                return;
            case 12:
                OutputStream outputStream = (OutputStream) this.f13756H;
                byte[] bArr = (byte[]) this.f13757I;
                try {
                    try {
                        DataOutputStream dataOutputStream2 = new DataOutputStream(outputStream);
                        try {
                            dataOutputStream2.writeInt(bArr.length);
                            dataOutputStream2.write(bArr);
                            AbstractC2987b.e(dataOutputStream2);
                            return;
                        } catch (IOException e10) {
                            e = e10;
                            dataOutputStream = dataOutputStream2;
                            p120p3.h.e("Error transporting the ad response", e);
                            p083k3.l.f25980A.f25987g.i("LargeParcelTeleporter.pipeData.1", e);
                            if (dataOutputStream == null) {
                                AbstractC2987b.e(outputStream);
                                return;
                            } else {
                                AbstractC2987b.e(dataOutputStream);
                                return;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            dataOutputStream = dataOutputStream2;
                            if (dataOutputStream == null) {
                                AbstractC2987b.e(outputStream);
                            } else {
                                AbstractC2987b.e(dataOutputStream);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException e11) {
                    e = e11;
                }
                break;
            case 13:
                b();
                return;
            case 14:
                Object obj = this.f13757I;
                try {
                    ((C2040te) obj).b(p075j3.b.a((Context) this.f13756H));
                    return;
                } catch (J3.g | J3.h | IOException | IllegalStateException e12) {
                    ((C2040te) obj).c(e12);
                    p120p3.h.e("Exception while getting advertising Id info", e12);
                    return;
                }
            case 15:
                TextureViewSurfaceTextureListenerC0669Be textureViewSurfaceTextureListenerC0669Be = (TextureViewSurfaceTextureListenerC0669Be) this.f13757I;
                MediaPlayer mediaPlayer = (MediaPlayer) this.f13756H;
                HashMap map = TextureViewSurfaceTextureListenerC0669Be.f12384b0;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue() && textureViewSurfaceTextureListenerC0669Be.f12385I != null && mediaPlayer != null) {
                    try {
                        MediaPlayer.TrackInfo[] trackInfo = mediaPlayer.getTrackInfo();
                        if (trackInfo != null) {
                            HashMap map2 = new HashMap();
                            while (i10 < trackInfo.length) {
                                MediaPlayer.TrackInfo trackInfo2 = trackInfo[i10];
                                if (trackInfo2 != null) {
                                    int trackType = trackInfo2.getTrackType();
                                    if (trackType == 1) {
                                        MediaFormat format2 = trackInfo2.getFormat();
                                        if (format2 != null) {
                                            if (format2.containsKey("frame-rate")) {
                                                try {
                                                    map2.put("frameRate", String.valueOf(format2.getFloat("frame-rate")));
                                                } catch (ClassCastException unused3) {
                                                    map2.put("frameRate", String.valueOf(format2.getInteger("frame-rate")));
                                                }
                                            }
                                            if (format2.containsKey("bitrate")) {
                                                Integer numValueOf = Integer.valueOf(format2.getInteger("bitrate"));
                                                textureViewSurfaceTextureListenerC0669Be.f12400a0 = numValueOf;
                                                map2.put("bitRate", String.valueOf(numValueOf));
                                            }
                                            if (format2.containsKey("width") && format2.containsKey("height")) {
                                                map2.put("resolution", format2.getInteger("width") + "x" + format2.getInteger("height"));
                                            }
                                            if (format2.containsKey("mime")) {
                                                map2.put("videoMime", format2.getString("mime"));
                                            }
                                            if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                                                map2.put("videoCodec", format2.getString("codecs-string"));
                                            }
                                            break;
                                        }
                                    } else if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                                        if (format.containsKey("mime")) {
                                            map2.put("audioMime", format.getString("mime"));
                                        }
                                        if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                                            map2.put("audioCodec", format.getString("codecs-string"));
                                        }
                                    }
                                }
                                i10++;
                            }
                            if (!map2.isEmpty()) {
                                textureViewSurfaceTextureListenerC0669Be.f12385I.w("onMetadataEvent", map2);
                            }
                        }
                    } catch (RuntimeException e13) {
                        p083k3.l.f25980A.f25987g.i("AdMediaPlayerView.reportMetadata", e13);
                    }
                }
                InterfaceC0684Ce interfaceC0684Ce = textureViewSurfaceTextureListenerC0669Be.f12398V;
                if (interfaceC0684Ce != null) {
                    ((C0744Ge) interfaceC0684Ce).g();
                    return;
                }
                return;
            case 16:
                AtomicInteger atomicInteger = C2145vf.f21527a0;
                ((InterfaceC0863Oe) this.f13756H).w("onGcacheInfoEvent", (Map) this.f13757I);
                return;
            case 17:
                C0864Of c0864Of = new C0864Of((C0892Qf) this.f13756H, i10);
                C1637lq c1637lq = (C1637lq) this.f13757I;
                synchronized (c1637lq) {
                    Bx bx = c1637lq.f19858f;
                    if (bx != null && c1637lq.f19856d != null) {
                        p083k3.l.f25980A.f26002v.getClass();
                        C0621y.k(new RunnableC1170co(i8, bx, c0864Of));
                        c1637lq.f19858f = null;
                        c1637lq.f19856d.H0(null);
                    }
                    break;
                }
                return;
            case 18:
                ((BinderC0948Uf) this.f13756H).f16857G.w("pubVideoCmd", (Map) this.f13757I);
                return;
            case 19:
                C0962Vf c0962Vf = (C0962Vf) this.f13756H;
                String str2 = (String) this.f13757I;
                c0962Vf.getClass();
                Uri uri = Uri.parse(str2);
                AbstractC0990Xf abstractC0990Xf = ((ViewTreeObserverOnGlobalLayoutListenerC0920Sf) c0962Vf.f17075b.f14478G).f16465T;
                if (abstractC0990Xf == null) {
                    p120p3.h.d("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    return;
                } else {
                    abstractC0990Xf.Y(uri);
                    return;
                }
            case 20:
                boolean zBooleanValue2 = ((Boolean) C3099q.f26624d.f26627c.a(Q7.D9)).booleanValue();
                p004a3.b bVar = (p004a3.b) this.f13756H;
                Throwable th4 = (Throwable) this.f13757I;
                if (zBooleanValue2) {
                    C1784oh c1784oh = (C1784oh) bVar.f8652J;
                    c1784oh.f20311i = C0667Bc.e(c1784oh.f20303a);
                    ((C1784oh) bVar.f8652J).f20311i.b("AttributionReporting.registerSourceAndPingClickUrl", th4);
                } else {
                    C1784oh c1784oh2 = (C1784oh) bVar.f8652J;
                    c1784oh2.f20310h = C0667Bc.a(c1784oh2.f20303a);
                    ((C1784oh) bVar.f8652J).f20310h.b("AttributionReportingSampled.registerSourceAndPingClickUrl", th4);
                }
                ((C1488ix) bVar.f8650H).a((String) bVar.f8651I, null);
                return;
            case 21:
                ((C1488ix) ((p004a3.b) this.f13756H).f8650H).a((String) this.f13757I, null);
                return;
            case 22:
                ((C0702Dh) this.f13756H).f12844G.g((JSONObject) this.f13757I, "AFMA_updateActiveView");
                return;
            case 23:
                C1525ji c1525ji = (C1525ji) this.f13756H;
                Runnable runnable2 = (Runnable) this.f13757I;
                c1525ji.getClass();
                try {
                    InterfaceC2280y9 interfaceC2280y9 = c1525ji.f19477j;
                    R3.b bVar2 = new R3.b(runnable2);
                    C2176w9 c2176w9 = (C2176w9) interfaceC2280y9;
                    Parcel parcelJ2 = c2176w9.j0();
                    A5.e(parcelJ2, bVar2);
                    Parcel parcelN4 = c2176w9.n2(2, parcelJ2);
                    boolean z7 = parcelN4.readInt() != 0;
                    parcelN4.recycle();
                    if (z7 || (runnable = (Runnable) ((RunnableC1474ii) runnable2).f19314G.getAndSet(null)) == null) {
                        return;
                    }
                    runnable.run();
                    return;
                } catch (RemoteException unused4) {
                    Runnable runnable3 = (Runnable) ((RunnableC1474ii) runnable2).f19314G.getAndSet(null);
                    if (runnable3 != null) {
                        runnable3.run();
                        return;
                    }
                    return;
                }
            case 24:
                try {
                    ((InterfaceC1942rk) this.f13756H).mo0zza(this.f13757I);
                    return;
                } catch (Throwable th5) {
                    p083k3.l.f25980A.f25987g.h("EventEmitter.notify", th5);
                    p113o3.I.l("Event emitter exception.", th5);
                    return;
                }
            case 25:
                C0926Sl c0926Sl = (C0926Sl) this.f13756H;
                ViewGroup viewGroup5 = (ViewGroup) this.f13757I;
                C0781Il c0781Il = c0926Sl.f16511d;
                if (c0781Il.G() != null) {
                    boolean z8 = viewGroup5 != null;
                    int iD = c0781Il.D();
                    Yv yv = c0926Sl.f16509b;
                    p113o3.K k8 = c0926Sl.f16508a;
                    if (iD == 2 || c0781Il.D() == 1) {
                        ((p113o3.L) k8).j(yv.f17679f, String.valueOf(c0781Il.D()), z8);
                        return;
                    } else {
                        if (c0781Il.D() == 6) {
                            p113o3.L l4 = (p113o3.L) k8;
                            l4.j(yv.f17679f, "2", z8);
                            l4.j(yv.f17679f, "1", z8);
                            return;
                        }
                        return;
                    }
                }
                return;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                C0926Sl c0926Sl2 = (C0926Sl) this.f13756H;
                InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm = (InterfaceViewOnClickListenerC1220dm) this.f13757I;
                C0811Kl c0811Kl = c0926Sl2.f16510c;
                if (c0811Kl.e() || c0811Kl.d()) {
                    String[] strArr = {"1098", "3011"};
                    int i14 = 0;
                    while (true) {
                        if (i14 >= 2) {
                            viewGroup = null;
                        } else {
                            View viewN2 = interfaceViewOnClickListenerC1220dm.n2(strArr[i14]);
                            if (viewN2 == null || !(viewN2 instanceof ViewGroup)) {
                                i14++;
                            } else {
                                viewGroup = (ViewGroup) viewN2;
                            }
                        }
                    }
                } else {
                    viewGroup = null;
                }
                Context context2 = interfaceViewOnClickListenerC1220dm.zzf().getContext();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                C0781Il c0781Il2 = c0926Sl2.f16511d;
                if (c0781Il2.F() != null) {
                    viewF = c0781Il2.F();
                    M8 m8 = c0926Sl2.f16516i;
                    if (m8 != null && viewGroup == null) {
                        C0926Sl.b(layoutParams, m8.f14647K);
                        viewF.setLayoutParams(layoutParams);
                        viewGroup3 = null;
                        view = viewF;
                    }
                } else if (c0781Il2.L() instanceof H8) {
                    H8 h8 = (H8) c0781Il2.L();
                    if (viewGroup == null) {
                        viewGroup2 = viewGroup;
                        C0926Sl.b(layoutParams, h8.f13727N);
                        viewGroup2 = null;
                    }
                    viewGroup2 = viewGroup;
                    I8 i15 = new I8(context2);
                    com.bumptech.glide.c.h(h8);
                    ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(I8.f13854H, null, null));
                    shapeDrawable.getPaint().setColor(h8.f13723J);
                    i15.setLayoutParams(layoutParams);
                    i15.setBackground(shapeDrawable);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                    String str3 = h8.f13720G;
                    if (!TextUtils.isEmpty(str3)) {
                        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                        TextView textView = new TextView(context2);
                        textView.setLayoutParams(layoutParams3);
                        textView.setId(1195835393);
                        textView.setTypeface(Typeface.DEFAULT);
                        textView.setText(str3);
                        textView.setTextColor(h8.f13724K);
                        textView.setTextSize(h8.f13725L);
                        p120p3.d dVar = C3097p.f26618f.f26619a;
                        textView.setPadding(p120p3.d.o(context2, 4), 0, p120p3.d.l(context2.getResources().getDisplayMetrics(), 4), 0);
                        i15.addView(textView);
                        layoutParams2.addRule(1, textView.getId());
                    }
                    ImageView imageView = new ImageView(context2);
                    imageView.setLayoutParams(layoutParams2);
                    imageView.setId(1195835394);
                    ArrayList arrayList2 = h8.f13721H;
                    if (arrayList2 != null && arrayList2.size() > 1) {
                        i15.f13855G = new AnimationDrawable();
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            try {
                                i15.f13855G.addFrame((Drawable) R3.b.v0(((K8) it.next()).zzf()), h8.f13726M);
                            } catch (Exception e14) {
                                p120p3.h.e("Error while getting drawable.", e14);
                            }
                        }
                        imageView.setBackground(i15.f13855G);
                    } else if (arrayList2.size() == 1) {
                        try {
                            imageView.setImageDrawable((Drawable) R3.b.v0(((K8) arrayList2.get(0)).zzf()));
                        } catch (Exception e15) {
                            p120p3.h.e("Error while getting drawable.", e15);
                        }
                    }
                    i15.addView(imageView);
                    i15.setContentDescription((CharSequence) C3099q.f26624d.f26627c.a(Q7.f15577A3));
                    view = i15;
                    viewGroup3 = viewGroup2;
                } else {
                    view = null;
                    viewGroup3 = viewGroup;
                }
                if (view != null) {
                    if (view.getParent() instanceof ViewGroup) {
                        ((ViewGroup) view.getParent()).removeView(view);
                    }
                    if (viewGroup3 != null) {
                        viewGroup3.removeAllViews();
                        viewGroup3.addView(view);
                    } else {
                        p067i3.e eVar2 = new p067i3.e(interfaceViewOnClickListenerC1220dm.zzf().getContext());
                        eVar2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        eVar2.addView(view);
                        FrameLayout frameLayoutZzh = interfaceViewOnClickListenerC1220dm.zzh();
                        if (frameLayoutZzh != null) {
                            frameLayoutZzh.addView(eVar2);
                        }
                    }
                    interfaceViewOnClickListenerC1220dm.j0(interfaceViewOnClickListenerC1220dm.zzk(), view);
                }
                PA pa = ViewTreeObserverOnGlobalLayoutListenerC0912Rl.f16337V;
                int i16 = pa.f15342J;
                int i17 = 0;
                while (true) {
                    if (i17 < i16) {
                        View viewN3 = interfaceViewOnClickListenerC1220dm.n2((String) pa.get(i17));
                        i17++;
                        if (viewN3 instanceof ViewGroup) {
                            viewGroup4 = (ViewGroup) viewN3;
                        }
                    } else {
                        viewGroup4 = null;
                    }
                }
                c0926Sl2.f16515h.execute(new RunnableC0755Ha(25, c0926Sl2, viewGroup4));
                if (viewGroup4 == null) {
                    return;
                }
                int i18 = 26;
                if (c0926Sl2.c(viewGroup4, true)) {
                    if (c0781Il2.R() != null) {
                        c0781Il2.R().M0(new C2218x(i18, interfaceViewOnClickListenerC1220dm, viewGroup4));
                        return;
                    }
                    return;
                }
                J7 j10 = Q7.o9;
                C3099q c3099q2 = C3099q.f26624d;
                if (((Boolean) c3099q2.f26627c.a(j10)).booleanValue() && c0926Sl2.c(viewGroup4, false)) {
                    if (c0781Il2.P() != null) {
                        c0781Il2.P().M0(new C2218x(i18, interfaceViewOnClickListenerC1220dm, viewGroup4));
                        return;
                    }
                    return;
                }
                viewGroup4.removeAllViews();
                View viewZzf = interfaceViewOnClickListenerC1220dm.zzf();
                Context context3 = viewZzf != null ? viewZzf.getContext() : null;
                if (context3 == null || (r8A = c0926Sl2.f16517j.a()) == null) {
                    return;
                }
                try {
                    R3.a aVarZzi = r8A.zzi();
                    if (aVarZzi == null || (drawable = (Drawable) R3.b.v0(aVarZzi)) == null) {
                        return;
                    }
                    ImageView imageView2 = new ImageView(context3);
                    imageView2.setImageDrawable(drawable);
                    R3.a aVarZzj = interfaceViewOnClickListenerC1220dm.zzj();
                    if (aVarZzj == null) {
                        imageView2.setScaleType(C0926Sl.f16507k);
                    } else if (((Boolean) c3099q2.f26627c.a(Q7.f15643I5)).booleanValue()) {
                        imageView2.setScaleType((ImageView.ScaleType) R3.b.v0(aVarZzj));
                    } else {
                        imageView2.setScaleType(C0926Sl.f16507k);
                    }
                    imageView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    viewGroup4.addView(imageView2);
                    return;
                } catch (RemoteException unused5) {
                    p120p3.h.g("Could not get main image drawable");
                    return;
                }
                break;
            case 27:
                ((AbstractC0798Jn) this.f13756H).f14206d.c((String) this.f13757I);
                return;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                C1273eo c1273eo = (C1273eo) this.f13756H;
                C2040te c2040te = (C2040te) this.f13757I;
                c1273eo.getClass();
                c1273eo.f18595i.execute(new RunnableC1026Zn(i10, c2040te));
                return;
            default:
                try {
                    ((InterfaceC1517ja) this.f13757I).r2(((C1273eo) this.f13756H).a());
                    return;
                } catch (RemoteException e16) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e16);
                    return;
                }
        }
    }

    public RunnableC0755Ha(Context context, C2040te c2040te) {
        this.f13755G = 14;
        this.f13756H = context;
        this.f13757I = c2040te;
    }

    public /* synthetic */ RunnableC0755Ha(C0785Ja c0785Ja, C0770Ia c0770Ia) {
        this.f13755G = 9;
        this.f13756H = c0785Ja;
        this.f13757I = c0770Ia;
    }

    public /* synthetic */ RunnableC0755Ha(Object obj, Object obj2, int i8) {
        this.f13755G = i8;
        this.f13756H = obj2;
        this.f13757I = obj;
    }
}
