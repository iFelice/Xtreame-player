package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.We, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class TextureViewSurfaceTextureListenerC0975We extends AbstractC0699De implements TextureView.SurfaceTextureListener, InterfaceC0759He {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final InterfaceC0863Oe f17263I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0877Pe f17264J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C0849Ne f17265K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public InterfaceC0684Ce f17266L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Surface f17267M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public C2145vf f17268N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f17269O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String[] f17270P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f17271Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f17272R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public C0834Me f17273S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f17274T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f17275U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f17276V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f17277W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f17278a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public float f17279b0;

    public TextureViewSurfaceTextureListenerC0975We(Context context, C0849Ne c0849Ne, InterfaceC0863Oe interfaceC0863Oe, C0877Pe c0877Pe, boolean z7) {
        super(context);
        this.f17272R = 1;
        this.f17263I = interfaceC0863Oe;
        this.f17264J = c0877Pe;
        this.f17274T = z7;
        this.f17265K = c0849Ne;
        setSurfaceTextureListener(this);
        c0877Pe.a(this);
    }

    public static String D(String str, Exception exc) {
        return str + MqttTopic.TOPIC_LEVEL_SEPARATOR + exc.getClass().getCanonicalName() + ":" + exc.getMessage();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void A(int i8) {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            C1886qf c1886qf = c2145vf.f21530H;
            synchronized (c1886qf) {
                c1886qf.f20593d = ((long) i8) * 1000;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void B(int i8) {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            C1886qf c1886qf = c2145vf.f21530H;
            synchronized (c1886qf) {
                c1886qf.f20594e = ((long) i8) * 1000;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void C(int i8) {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            C1886qf c1886qf = c2145vf.f21530H;
            synchronized (c1886qf) {
                c1886qf.f20592c = ((long) i8) * 1000;
            }
        }
    }

    public final void E() {
        if (this.f17275U) {
            return;
        }
        this.f17275U = true;
        p113o3.O.f27924l.post(new RunnableC0919Se(this, 7));
        zzn();
        C0877Pe c0877Pe = this.f17264J;
        if (c0877Pe.f15403i && !c0877Pe.f15404j) {
            S3.e.v(c0877Pe.f15399e, c0877Pe.f15398d, "vfr2");
            c0877Pe.f15404j = true;
        }
        if (this.f17276V) {
            t();
        }
    }

    public final void F(Integer num, boolean z7) {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null && !z7) {
            c2145vf.f21545W = num;
            return;
        }
        if (this.f17269O == null || this.f17267M == null) {
            return;
        }
        if (z7) {
            if (!J()) {
                p120p3.h.g("No valid ExoPlayerAdapter exists when switch source.");
                return;
            } else {
                c2145vf.f21535M.k();
                G();
            }
        }
        if (this.f17269O.startsWith("cache:")) {
            AbstractC1522jf abstractC1522jfE = this.f17263I.e(this.f17269O);
            if (abstractC1522jfE instanceof C1730nf) {
                C1730nf c1730nf = (C1730nf) abstractC1522jfE;
                synchronized (c1730nf) {
                    c1730nf.f20178M = true;
                    c1730nf.notify();
                }
                C2145vf c2145vf2 = c1730nf.f20175J;
                c2145vf2.f21538P = null;
                c1730nf.f20175J = null;
                this.f17268N = c2145vf2;
                c2145vf2.f21545W = num;
                if (c2145vf2.f21535M == null) {
                    p120p3.h.g("Precached video player has been released.");
                    return;
                }
            } else {
                if (!(abstractC1522jfE instanceof C1678mf)) {
                    p120p3.h.g("Stream cache miss: ".concat(String.valueOf(this.f17269O)));
                    return;
                }
                C1678mf c1678mf = (C1678mf) abstractC1522jfE;
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                InterfaceC0863Oe interfaceC0863Oe = this.f17263I;
                o4.w(interfaceC0863Oe.getContext(), interfaceC0863Oe.zzn().f28196G);
                ByteBuffer byteBufferU = c1678mf.u();
                boolean z8 = c1678mf.f19978T;
                String str = c1678mf.f19968J;
                if (str == null) {
                    p120p3.h.g("Stream cache URL is null.");
                    return;
                }
                InterfaceC0863Oe interfaceC0863Oe2 = this.f17263I;
                C2145vf c2145vf3 = new C2145vf(interfaceC0863Oe2.getContext(), this.f17265K, interfaceC0863Oe2, num);
                p120p3.h.f("ExoPlayerAdapter initialized.");
                this.f17268N = c2145vf3;
                c2145vf3.o(new Uri[]{Uri.parse(str)}, byteBufferU, z8);
            }
        } else {
            InterfaceC0863Oe interfaceC0863Oe3 = this.f17263I;
            C2145vf c2145vf4 = new C2145vf(interfaceC0863Oe3.getContext(), this.f17265K, interfaceC0863Oe3, num);
            p120p3.h.f("ExoPlayerAdapter initialized.");
            this.f17268N = c2145vf4;
            p113o3.O o7 = p083k3.l.f25980A.f25983c;
            InterfaceC0863Oe interfaceC0863Oe4 = this.f17263I;
            o7.w(interfaceC0863Oe4.getContext(), interfaceC0863Oe4.zzn().f28196G);
            Uri[] uriArr = new Uri[this.f17270P.length];
            int i8 = 0;
            while (true) {
                String[] strArr = this.f17270P;
                if (i8 >= strArr.length) {
                    break;
                }
                uriArr[i8] = Uri.parse(strArr[i8]);
                i8++;
            }
            C2145vf c2145vf5 = this.f17268N;
            c2145vf5.getClass();
            c2145vf5.o(uriArr, ByteBuffer.allocate(0), false);
        }
        this.f17268N.f21538P = this;
        H(this.f17267M);
        C1049aL c1049aL = this.f17268N.f21535M;
        if (c1049aL != null) {
            int iZzf = c1049aL.zzf();
            this.f17272R = iZzf;
            if (iZzf == 3) {
                E();
            }
        }
    }

    public final void G() {
        if (this.f17268N != null) {
            H(null);
            C2145vf c2145vf = this.f17268N;
            if (c2145vf != null) {
                c2145vf.f21538P = null;
                C1049aL c1049aL = c2145vf.f21535M;
                if (c1049aL != null) {
                    c1049aL.b(c2145vf);
                    c2145vf.f21535M.n();
                    c2145vf.f21535M = null;
                    C2145vf.f21528b0.decrementAndGet();
                }
                this.f17268N = null;
            }
            this.f17272R = 1;
            this.f17271Q = false;
            this.f17275U = false;
            this.f17276V = false;
        }
    }

    public final void H(Surface surface) {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf == null) {
            p120p3.h.g("Trying to set surface before player is initialized.");
            return;
        }
        try {
            C1049aL c1049aL = c2145vf.f21535M;
            if (c1049aL != null) {
                c1049aL.i(surface);
            }
        } catch (IOException e8) {
            p120p3.h.h(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
    }

    public final boolean I() {
        return J() && this.f17272R != 1;
    }

    public final boolean J() {
        C2145vf c2145vf = this.f17268N;
        return (c2145vf == null || c2145vf.f21535M == null || this.f17271Q) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void a(int i8) {
        C2145vf c2145vf;
        if (this.f17272R != i8) {
            this.f17272R = i8;
            if (i8 == 3) {
                E();
                return;
            }
            if (i8 != 4) {
                return;
            }
            if (this.f17265K.f14920a && (c2145vf = this.f17268N) != null) {
                c2145vf.p(false);
            }
            this.f17264J.f15407m = false;
            C0905Re c0905Re = this.f12836H;
            c0905Re.f16274d = false;
            c0905Re.a();
            p113o3.O.f27924l.post(new RunnableC0919Se(this, 6));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void b(long j8, boolean z7) {
        if (this.f17263I != null) {
            AbstractC1988se.f20910e.execute(new RunnableC0933Te(this, z7, j8, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void c(Exception exc) {
        String strD = D("onLoadException", exc);
        p120p3.h.g("ExoPlayerAdapter exception: ".concat(strD));
        p083k3.l.f25980A.f25987g.h("AdExoPlayerView.onException", exc);
        p113o3.O.f27924l.post(new RunnableC0947Ue(this, strD, 0));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void d(int i8) {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            C1886qf c1886qf = c2145vf.f21530H;
            synchronized (c1886qf) {
                c1886qf.f20591b = ((long) i8) * 1000;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void e(String str, Exception exc) {
        C2145vf c2145vf;
        String strD = D(str, exc);
        p120p3.h.g("ExoPlayerAdapter error: ".concat(strD));
        int i8 = 1;
        this.f17271Q = true;
        if (this.f17265K.f14920a && (c2145vf = this.f17268N) != null) {
            c2145vf.p(false);
        }
        p113o3.O.f27924l.post(new RunnableC0947Ue(this, strD, i8));
        p083k3.l.f25980A.f25987g.h("AdExoPlayerView.onError", exc);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void f(int i8) {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            Iterator it = c2145vf.f21548Z.iterator();
            while (it.hasNext()) {
                C1834pf c1834pf = (C1834pf) ((WeakReference) it.next()).get();
                if (c1834pf != null) {
                    c1834pf.f20466r = i8;
                    for (Socket socket : c1834pf.f20467s) {
                        if (!socket.isClosed()) {
                            try {
                                socket.setReceiveBufferSize(c1834pf.f20466r);
                            } catch (SocketException e8) {
                                p120p3.h.h("Failed to update receive buffer size.", e8);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void g(String str, String[] strArr, Integer num) {
        if (str == null) {
            return;
        }
        if (strArr == null) {
            this.f17270P = new String[]{str};
        } else {
            this.f17270P = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.f17269O;
        boolean z7 = false;
        if (this.f17265K.f14930k && str2 != null && !str.equals(str2) && this.f17272R == 4) {
            z7 = true;
        }
        this.f17269O = str;
        F(num, z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void h() {
        p113o3.O.f27924l.post(new RunnableC0919Se(this, 0));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void i(int i8, int i9) {
        this.f17277W = i8;
        this.f17278a0 = i9;
        float f8 = i9 > 0 ? i8 / i9 : 1.0f;
        if (this.f17279b0 != f8) {
            this.f17279b0 = f8;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int j() {
        if (I()) {
            return (int) this.f17268N.f21535M.zzk();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int k() {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            return c2145vf.f21540R;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int l() {
        if (I()) {
            return (int) this.f17268N.f21535M.e();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int m() {
        return this.f17278a0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int n() {
        return this.f17277W;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long o() {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            return c2145vf.s();
        }
        return -1L;
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f8 = this.f17279b0;
        if (f8 != 0.0f && this.f17273S == null) {
            float f9 = measuredWidth;
            float f10 = f9 / measuredHeight;
            if (f8 > f10) {
                measuredHeight = (int) (f9 / f8);
            }
            if (f8 < f10) {
                measuredWidth = (int) (measuredHeight * f8);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        C0834Me c0834Me = this.f17273S;
        if (c0834Me != null) {
            c0834Me.b(measuredWidth, measuredHeight);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i8, int i9) {
        C2145vf c2145vf;
        float f8;
        int i10;
        SurfaceTexture surfaceTexture2;
        if (this.f17274T) {
            C0834Me c0834Me = new C0834Me(getContext());
            this.f17273S = c0834Me;
            c0834Me.f14726S = i8;
            c0834Me.f14725R = i9;
            c0834Me.f14728U = surfaceTexture;
            c0834Me.start();
            C0834Me c0834Me2 = this.f17273S;
            if (c0834Me2.f14728U == null) {
                surfaceTexture2 = null;
            } else {
                try {
                    c0834Me2.f14733Z.await();
                } catch (InterruptedException unused) {
                }
                surfaceTexture2 = c0834Me2.f14727T;
            }
            if (surfaceTexture2 != null) {
                surfaceTexture = surfaceTexture2;
            } else {
                this.f17273S.c();
                this.f17273S = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.f17267M = surface;
        if (this.f17268N == null) {
            F(null, false);
        } else {
            H(surface);
            if (!this.f17265K.f14920a && (c2145vf = this.f17268N) != null) {
                c2145vf.p(true);
            }
        }
        int i11 = this.f17277W;
        if (i11 == 0 || (i10 = this.f17278a0) == 0) {
            f8 = i9 > 0 ? i8 / i9 : 1.0f;
            if (this.f17279b0 != f8) {
                this.f17279b0 = f8;
                requestLayout();
            }
        } else {
            f8 = i10 > 0 ? i11 / i10 : 1.0f;
            if (this.f17279b0 != f8) {
                this.f17279b0 = f8;
                requestLayout();
            }
        }
        p113o3.O.f27924l.post(new RunnableC0919Se(this, 5));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        s();
        C0834Me c0834Me = this.f17273S;
        if (c0834Me != null) {
            c0834Me.c();
            this.f17273S = null;
        }
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            if (c2145vf != null) {
                c2145vf.p(false);
            }
            Surface surface = this.f17267M;
            if (surface != null) {
                surface.release();
            }
            this.f17267M = null;
            H(null);
        }
        p113o3.O.f27924l.post(new RunnableC0919Se(this, 3));
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i8, int i9) {
        C0834Me c0834Me = this.f17273S;
        if (c0834Me != null) {
            c0834Me.b(i8, i9);
        }
        p113o3.O.f27924l.post(new RunnableC0654Ae(this, i8, i9, 1));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f17264J.d(this);
        this.f12835G.a(surfaceTexture, this.f17266L);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i8) {
        p113o3.I.k("AdExoPlayerView3 window visibility changed to " + i8);
        p113o3.O.f27924l.post(new androidx.leanback.widget.C(this, i8, 6));
        super.onWindowVisibilityChanged(i8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long p() {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf == null) {
            return -1L;
        }
        if (c2145vf.f21547Y == null || !c2145vf.f21547Y.f20758o) {
            return c2145vf.f21539Q;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long q() {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            return c2145vf.n();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final String r() {
        return "ExoPlayer/2".concat(true != this.f17274T ? HttpUrl.FRAGMENT_ENCODE_SET : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void s() {
        C2145vf c2145vf;
        if (I()) {
            if (this.f17265K.f14920a && (c2145vf = this.f17268N) != null) {
                c2145vf.p(false);
            }
            this.f17268N.f21535M.h(false);
            this.f17264J.f15407m = false;
            C0905Re c0905Re = this.f12836H;
            c0905Re.f16274d = false;
            c0905Re.a();
            p113o3.O.f27924l.post(new RunnableC0919Se(this, 4));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void t() {
        C2145vf c2145vf;
        int i8 = 1;
        if (!I()) {
            this.f17276V = true;
            return;
        }
        if (this.f17265K.f14920a && (c2145vf = this.f17268N) != null) {
            c2145vf.p(true);
        }
        this.f17268N.f21535M.h(true);
        this.f17264J.b();
        C0905Re c0905Re = this.f12836H;
        c0905Re.f16274d = true;
        c0905Re.a();
        this.f12835G.f14175c = true;
        p113o3.O.f27924l.post(new RunnableC0919Se(this, i8));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void u(int i8) {
        if (I()) {
            long j8 = i8;
            C1049aL c1049aL = this.f17268N.f21535M;
            c1049aL.a(c1049aL.zzd(), j8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void v(InterfaceC0684Ce interfaceC0684Ce) {
        this.f17266L = interfaceC0684Ce;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void w(String str) {
        if (str != null) {
            g(str, null, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void x() {
        if (J()) {
            this.f17268N.f21535M.k();
            G();
        }
        C0877Pe c0877Pe = this.f17264J;
        c0877Pe.f15407m = false;
        C0905Re c0905Re = this.f12836H;
        c0905Re.f16274d = false;
        c0905Re.a();
        c0877Pe.c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void y(float f8, float f9) {
        C0834Me c0834Me = this.f17273S;
        if (c0834Me != null) {
            c0834Me.d(f8, f9);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final Integer z() {
        C2145vf c2145vf = this.f17268N;
        if (c2145vf != null) {
            return c2145vf.f21545W;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0891Qe
    public final void zzn() {
        p113o3.O.f27924l.post(new RunnableC0919Se(this, 2));
    }
}
