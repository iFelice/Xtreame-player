package D0;

import B0.AbstractC0067q;
import B0.C0053i;
import B0.C0055j;
import B0.C0072w;
import B0.C0073x;
import B0.InterfaceC0046e0;
import B0.RunnableC0052h0;
import C0.C0082g;
import android.content.Context;
import android.media.AudioTrack;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import org.videolan.libvlc.interfaces.IMediaList;
import p039f.RunnableC3004t;
import p086l.C3061x;
import p094m0.C3121d;
import p094m0.C3122e;
import p094m0.C3135s;
import p094m0.C3136t;
import p117p0.AbstractC3169g;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class V extends K0.r implements InterfaceC0046e0 {

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public final Context f1869W0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public final C0124n f1870X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public final InterfaceC0131v f1871Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public final K0.i f1872Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public int f1873a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public boolean f1874b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public boolean f1875c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public C3136t f1876d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public C3136t f1877e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public long f1878f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public boolean f1879g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public boolean f1880h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public boolean f1881i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public int f1882j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public boolean f1883k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public long f1884l1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V(Context context, p117p0.C c8, C0082g c0082g, Handler handler, B0.L l4, S s7) {
        super(1, c8, c0082g, false, 44100.0f);
        K0.i iVar = Build.VERSION.SDK_INT >= 35 ? new K0.i() : null;
        this.f1869W0 = context.getApplicationContext();
        this.f1871Y0 = s7;
        this.f1872Z0 = iVar;
        this.f1882j1 = -1000;
        this.f1870X0 = new C0124n(handler, l4);
        this.f1884l1 = -9223372036854775807L;
        s7.f1854u = new U(this);
    }

    @Override // K0.r
    public final void A() {
        this.f1871Y0.getClass();
    }

    @Override // K0.r
    public final void C() {
        ((S) this.f1871Y0).f1807O = true;
    }

    @Override // K0.r
    public final boolean F(long j8, long j9, K0.l lVar, ByteBuffer byteBuffer, int i8, int i9, int i10, long j10, boolean z7, boolean z8, C3136t c3136t) throws C0072w {
        byteBuffer.getClass();
        this.f1884l1 = -9223372036854775807L;
        if (this.f1877e1 != null && (i9 & 2) != 0) {
            lVar.getClass();
            lVar.f(i8);
            return true;
        }
        InterfaceC0131v interfaceC0131v = this.f1871Y0;
        if (z7) {
            if (lVar != null) {
                lVar.f(i8);
            }
            this.f4400N0.f969f += i10;
            ((S) interfaceC0131v).f1807O = true;
            return true;
        }
        try {
            if (!((S) interfaceC0131v).n(j10, i10, byteBuffer)) {
                this.f1884l1 = j10;
                return false;
            }
            if (lVar != null) {
                lVar.f(i8);
            }
            this.f4400N0.f968e += i10;
            return true;
        } catch (r e8) {
            throw createRendererException(e8, this.f1876d1, e8.f1971H, (!this.f4442w0 || getConfiguration().f702a == 0) ? 5001 : 5004);
        } catch (C0130u e9) {
            throw createRendererException(e9, c3136t, e9.f1974H, (!this.f4442w0 || getConfiguration().f702a == 0) ? 5002 : 5003);
        }
    }

    @Override // K0.r
    public final void I() throws C0072w {
        try {
            ((S) this.f1871Y0).w();
            long j8 = this.f4388H0;
            if (j8 != -9223372036854775807L) {
                this.f1884l1 = j8;
            }
        } catch (C0130u e8) {
            throw createRendererException(e8, e8.f1975I, e8.f1974H, this.f4442w0 ? 5003 : 5002);
        }
    }

    @Override // K0.r
    public final boolean T(C3136t c3136t) {
        if (getConfiguration().f702a != 0) {
            int iY = Y(c3136t);
            if ((iY & IMediaList.Event.ItemAdded) != 0) {
                if (getConfiguration().f702a == 2 || (iY & 1024) != 0) {
                    return true;
                }
                if (c3136t.f27019J == 0 && c3136t.f27020K == 0) {
                    return true;
                }
            }
        }
        return ((S) this.f1871Y0).G(c3136t);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0057  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a6  */
    @Override // K0.r
    public final int U(K0.s sVar, C3136t c3136t) {
        int iY;
        d0 d0VarF;
        K0.o oVar;
        boolean z7;
        if (!p094m0.O.k(c3136t.f27041o)) {
            return A0.O.o(0, 0, 0, 0);
        }
        boolean z8 = true;
        int i8 = c3136t.f27025P;
        boolean z9 = i8 != 0;
        boolean z10 = i8 == 0 || i8 == 2;
        int i9 = 8;
        InterfaceC0131v interfaceC0131v = this.f1871Y0;
        if (z10) {
            if (z9) {
                List listD = K0.z.d("audio/raw", false, false);
                if ((listD.isEmpty() ? null : (K0.o) listD.get(0)) == null) {
                    iY = 0;
                }
            }
            iY = Y(c3136t);
            if (((S) interfaceC0131v).G(c3136t)) {
                return A0.O.o(4, 8, 32, iY);
            }
        } else {
            iY = 0;
        }
        String str = c3136t.f27041o;
        if ("audio/raw".equals(str) && !((S) interfaceC0131v).G(c3136t)) {
            return A0.O.o(1, 0, 0, 0);
        }
        S s7 = (S) interfaceC0131v;
        if (!s7.G(p117p0.M.B(2, c3136t.f27016G, c3136t.f27017H))) {
            return A0.O.o(1, 0, 0, 0);
        }
        if (str == null) {
            d0VarF = d0.f31844K;
        } else if (s7.G(c3136t)) {
            List listD2 = K0.z.d("audio/raw", false, false);
            K0.o oVar2 = listD2.isEmpty() ? null : (K0.o) listD2.get(0);
            if (oVar2 != null) {
                d0VarF = z4.H.x(oVar2);
            } else {
                d0VarF = K0.z.f(sVar, c3136t, false, false);
            }
        } else {
            d0VarF = K0.z.f(sVar, c3136t, false, false);
        }
        if (d0VarF.isEmpty()) {
            return A0.O.o(1, 0, 0, 0);
        }
        if (!z10) {
            return A0.O.o(2, 0, 0, 0);
        }
        K0.o oVar3 = (K0.o) d0VarF.get(0);
        boolean zE = oVar3.e(c3136t);
        if (!zE) {
            int i10 = 1;
            while (true) {
                if (i10 >= d0VarF.f31846J) {
                    oVar = oVar3;
                    z8 = zE;
                    z7 = true;
                    break;
                }
                oVar = (K0.o) d0VarF.get(i10);
                if (oVar.e(c3136t)) {
                    z7 = false;
                    break;
                }
                i10++;
            }
        } else {
            oVar = oVar3;
            z8 = zE;
            z7 = true;
            break;
        }
        int i11 = z8 ? 4 : 3;
        if (z8 && oVar.f(c3136t)) {
            i9 = 16;
        }
        return (oVar.f4361g ? 64 : 0) | i11 | i9 | 32 | (z7 ? 128 : 0) | iY;
    }

    public final int Y(C3136t c3136t) {
        C0118h c0118hJ = ((S) this.f1871Y0).j(c3136t);
        if (!c0118hJ.f1939a) {
            return 0;
        }
        int i8 = c0118hJ.f1940b ? 1536 : IMediaList.Event.ItemAdded;
        return c0118hJ.f1941c ? i8 | 2048 : i8;
    }

    public final int Z(C3136t c3136t, K0.o oVar) {
        int i8;
        if (!"OMX.google.raw.decoder".equals(oVar.f4355a) || (i8 = Build.VERSION.SDK_INT) >= 24 || (i8 == 23 && p117p0.M.P(this.f1869W0))) {
            return c3136t.f27042p;
        }
        return -1;
    }

    public final void a0() {
        isEnded();
        long jI = ((S) this.f1871Y0).i();
        if (jI != Long.MIN_VALUE) {
            if (!this.f1879g1) {
                jI = Math.max(this.f1878f1, jI);
            }
            this.f1878f1 = jI;
            this.f1879g1 = false;
        }
    }

    @Override // K0.r
    public final C0055j b(K0.o oVar, C3136t c3136t, C3136t c3136t2) {
        C0055j c0055jB = oVar.b(c3136t, c3136t2);
        boolean z7 = this.f4413U == null && T(c3136t2);
        int i8 = c0055jB.f997e;
        if (z7) {
            i8 |= 32768;
        }
        if (Z(c3136t2, oVar) > this.f1873a1) {
            i8 |= 64;
        }
        int i9 = i8;
        return new C0055j(oVar.f4355a, c3136t, c3136t2, i9 != 0 ? 0 : c0055jB.f996d, i9);
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // B0.InterfaceC0046e0
    public final p094m0.S getPlaybackParameters() {
        return ((S) this.f1871Y0).f1798F;
    }

    @Override // B0.InterfaceC0046e0
    public final long getPositionUs() {
        if (getState() == 2) {
            a0();
        }
        return this.f1878f1;
    }

    @Override // B0.AbstractC0051h, B0.y0
    public final void handleMessage(int i8, Object obj) {
        K0.i iVar;
        InterfaceC0131v interfaceC0131v = this.f1871Y0;
        if (i8 == 2) {
            obj.getClass();
            float fFloatValue = ((Float) obj).floatValue();
            S s7 = (S) interfaceC0131v;
            if (s7.f1810R != fFloatValue) {
                s7.f1810R = fFloatValue;
                if (s7.q()) {
                    s7.f1858y.setVolume(s7.f1810R);
                    return;
                }
                return;
            }
            return;
        }
        if (i8 == 3) {
            C3121d c3121d = (C3121d) obj;
            c3121d.getClass();
            ((S) interfaceC0131v).z(c3121d);
            return;
        }
        if (i8 == 6) {
            C3122e c3122e = (C3122e) obj;
            c3122e.getClass();
            ((S) interfaceC0131v).C(c3122e);
            return;
        }
        if (i8 == 12) {
            if (Build.VERSION.SDK_INT >= 23) {
                ((S) interfaceC0131v).F(AbstractC0067q.g(obj));
                return;
            }
            return;
        }
        if (i8 == 16) {
            obj.getClass();
            this.f1882j1 = ((Integer) obj).intValue();
            K0.l lVar = this.f4420a0;
            if (lVar != null && Build.VERSION.SDK_INT >= 35) {
                Bundle bundle = new Bundle();
                bundle.putInt("importance", Math.max(0, -this.f1882j1));
                lVar.d(bundle);
                return;
            }
            return;
        }
        if (i8 == 9) {
            obj.getClass();
            S s8 = (S) interfaceC0131v;
            s8.f1799G = ((Boolean) obj).booleanValue();
            K k8 = new K(s8.H() ? p094m0.S.f26785d : s8.f1798F, -9223372036854775807L, -9223372036854775807L);
            if (s8.q()) {
                s8.f1796D = k8;
                return;
            } else {
                s8.f1797E = k8;
                return;
            }
        }
        if (i8 != 10) {
            if (i8 == 11) {
                B0.S s9 = (B0.S) obj;
                s9.getClass();
                this.f4415V = s9;
                return;
            }
            return;
        }
        obj.getClass();
        int iIntValue = ((Integer) obj).intValue();
        ((S) interfaceC0131v).A(iIntValue);
        if (Build.VERSION.SDK_INT < 35 || (iVar = this.f1872Z0) == null) {
            return;
        }
        iVar.d(iIntValue);
    }

    @Override // B0.InterfaceC0046e0
    public final boolean hasSkippedSilenceSinceLastCall() {
        boolean z7 = this.f1881i1;
        this.f1881i1 = false;
        return z7;
    }

    @Override // B0.AbstractC0051h
    public final boolean isEnded() {
        if (this.f4392J0) {
            S s7 = (S) this.f1871Y0;
            if (!s7.q() || (s7.f1814V && !s7.o())) {
                return true;
            }
        }
        return false;
    }

    @Override // K0.r, B0.AbstractC0051h
    public final boolean isReady() {
        return ((S) this.f1871Y0).o() || super.isReady();
    }

    @Override // K0.r
    public final float l(float f8, C3136t c3136t, C3136t[] c3136tArr) {
        int iMax = -1;
        for (C3136t c3136t2 : c3136tArr) {
            int i8 = c3136t2.f27017H;
            if (i8 != -1) {
                iMax = Math.max(iMax, i8);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f8 * iMax;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    @Override // K0.r
    public final ArrayList m(K0.s sVar, C3136t c3136t, boolean z7) {
        d0 d0VarF;
        if (c3136t.f27041o == null) {
            d0VarF = d0.f31844K;
        } else if (((S) this.f1871Y0).G(c3136t)) {
            List listD = K0.z.d("audio/raw", false, false);
            K0.o oVar = listD.isEmpty() ? null : (K0.o) listD.get(0);
            if (oVar != null) {
                d0VarF = z4.H.x(oVar);
            } else {
                d0VarF = K0.z.f(sVar, c3136t, z7, false);
            }
        } else {
            d0VarF = K0.z.f(sVar, c3136t, z7, false);
        }
        HashMap map = K0.z.f4454a;
        ArrayList arrayList = new ArrayList(d0VarF);
        Collections.sort(arrayList, new K0.t(new C0073x(c3136t, 18), 0));
        return arrayList;
    }

    @Override // K0.r
    public final long n(long j8, long j9) {
        boolean z7 = this.f1884l1 != -9223372036854775807L;
        if (!this.f1883k1) {
            return (z7 || this.f4392J0) ? 1000000L : 10000L;
        }
        long jH = ((S) this.f1871Y0).h();
        if (!z7 || jH == -9223372036854775807L) {
            return 10000L;
        }
        float fMin = Math.min(jH, this.f1884l1 - j8);
        float f8 = getPlaybackParameters() != null ? getPlaybackParameters().f26786a : 1.0f;
        ((p117p0.G) getClock()).getClass();
        return Math.max(10000L, ((long) ((fMin / f8) / 2.0f)) - (p117p0.M.R(SystemClock.elapsedRealtime()) - j9));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0065  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d8  */
    @Override // K0.r
    public final C3061x o(K0.o oVar, C3136t c3136t, MediaCrypto mediaCrypto, float f8) {
        boolean z7;
        C3136t[] streamFormats = getStreamFormats();
        int iZ = Z(c3136t, oVar);
        if (streamFormats.length != 1) {
            for (C3136t c3136t2 : streamFormats) {
                if (oVar.b(c3136t, c3136t2).f996d != 0) {
                    iZ = Math.max(iZ, Z(c3136t2, oVar));
                }
            }
        }
        this.f1873a1 = iZ;
        int i8 = Build.VERSION.SDK_INT;
        String str = oVar.f4355a;
        if (i8 < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(Build.MANUFACTURER)) {
            String str2 = Build.DEVICE;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = false;
        }
        this.f1874b1 = z7;
        this.f1875c1 = str.equals("OMX.google.opus.decoder") || str.equals("c2.android.opus.decoder") || str.equals("OMX.google.vorbis.decoder") || str.equals("c2.android.vorbis.decoder");
        int i9 = this.f1873a1;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", oVar.f4357c);
        int i10 = c3136t.f27016G;
        mediaFormat.setInteger("channel-count", i10);
        int i11 = c3136t.f27017H;
        mediaFormat.setInteger("sample-rate", i11);
        J6.r.q(mediaFormat, c3136t.f27044r);
        J6.r.o(mediaFormat, "max-input-size", i9);
        if (i8 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f8 != -1.0f) {
                if (i8 == 23) {
                    String str3 = Build.MODEL;
                    if (!"ZTE B2017G".equals(str3) && !"AXON 7 mini".equals(str3)) {
                        mediaFormat.setFloat("operating-rate", f8);
                    }
                } else {
                    mediaFormat.setFloat("operating-rate", f8);
                }
            }
        }
        String str4 = c3136t.f27041o;
        if ("audio/ac4".equals(str4)) {
            Pair pairB = AbstractC3169g.b(c3136t);
            if (pairB != null) {
                J6.r.o(mediaFormat, "profile", ((Integer) pairB.first).intValue());
                J6.r.o(mediaFormat, "level", ((Integer) pairB.second).intValue());
            }
            if (i8 <= 28) {
                mediaFormat.setInteger("ac4-is-sync", 1);
            }
        }
        if (i8 >= 24) {
            if (((S) this.f1871Y0).k(p117p0.M.B(4, i10, i11)) == 2) {
                mediaFormat.setInteger("pcm-encoding", 4);
            }
        }
        if (i8 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i8 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.f1882j1));
        }
        this.f1877e1 = (!"audio/raw".equals(oVar.f4356b) || "audio/raw".equals(str4)) ? null : c3136t;
        return new C3061x(oVar, mediaFormat, c3136t, null, mediaCrypto, this.f1872Z0);
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void onDisabled() {
        C0124n c0124n = this.f1870X0;
        this.f1880h1 = true;
        this.f1876d1 = null;
        this.f1884l1 = -9223372036854775807L;
        try {
            ((S) this.f1871Y0).g();
            try {
                super.onDisabled();
            } finally {
                c0124n.a(this.f4400N0);
            }
        } catch (Throwable th) {
            try {
                super.onDisabled();
                throw th;
            } finally {
                c0124n.a(this.f4400N0);
            }
        }
    }

    @Override // B0.AbstractC0051h
    public final void onEnabled(boolean z7, boolean z8) {
        C0053i c0053i = new C0053i();
        this.f4400N0 = c0053i;
        C0124n c0124n = this.f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0119i(c0124n, c0053i, 0));
        }
        boolean z9 = getConfiguration().f703b;
        InterfaceC0131v interfaceC0131v = this.f1871Y0;
        if (z9) {
            S s7 = (S) interfaceC0131v;
            H1.i(s7.f1818Z);
            if (!s7.f1828e0) {
                s7.f1828e0 = true;
                s7.g();
            }
        } else {
            S s8 = (S) interfaceC0131v;
            if (s8.f1828e0) {
                s8.f1828e0 = false;
                s8.g();
            }
        }
        S s9 = (S) interfaceC0131v;
        s9.f1853t = getPlayerId();
        s9.f1835i.f2000I = getClock();
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void onPositionReset(long j8, boolean z7) throws C0072w {
        super.onPositionReset(j8, z7);
        ((S) this.f1871Y0).g();
        this.f1878f1 = j8;
        this.f1884l1 = -9223372036854775807L;
        this.f1881i1 = false;
        this.f1879g1 = true;
    }

    @Override // B0.AbstractC0051h
    public final void onRelease() {
        K0.i iVar;
        B0.r rVar;
        C0116f c0116f = ((S) this.f1871Y0).f1793A;
        if (c0116f != null && c0116f.f1934j) {
            c0116f.f1931g = null;
            int i8 = Build.VERSION.SDK_INT;
            Context context = c0116f.f1925a;
            if (i8 >= 23 && (rVar = c0116f.f1928d) != null) {
                p102n0.c.f(context).unregisterAudioDeviceCallback(rVar);
            }
            context.unregisterReceiver(c0116f.f1929e);
            C0115e c0115e = c0116f.f1930f;
            if (c0115e != null) {
                c0115e.f1922b.unregisterContentObserver(c0115e);
            }
            c0116f.f1934j = false;
        }
        if (Build.VERSION.SDK_INT < 35 || (iVar = this.f1872Z0) == null) {
            return;
        }
        iVar.b();
    }

    @Override // K0.r, B0.AbstractC0051h
    public final void onReset() {
        InterfaceC0131v interfaceC0131v = this.f1871Y0;
        this.f1881i1 = false;
        this.f1884l1 = -9223372036854775807L;
        try {
            super.onReset();
        } finally {
            if (this.f1880h1) {
                this.f1880h1 = false;
                ((S) interfaceC0131v).y();
            }
        }
    }

    @Override // B0.AbstractC0051h
    public final void onStarted() {
        ((S) this.f1871Y0).u();
        this.f1883k1 = true;
    }

    @Override // B0.AbstractC0051h
    public final void onStopped() {
        a0();
        this.f1883k1 = false;
        ((S) this.f1871Y0).t();
    }

    @Override // K0.r
    public final void p(p171w0.g gVar) {
        C3136t c3136t;
        J j8;
        if (Build.VERSION.SDK_INT < 29 || (c3136t = gVar.f30902G) == null || !Objects.equals(c3136t.f27041o, "audio/opus") || !this.f4442w0) {
            return;
        }
        ByteBuffer byteBuffer = gVar.f30907L;
        byteBuffer.getClass();
        C3136t c3136t2 = gVar.f30902G;
        c3136t2.getClass();
        if (byteBuffer.remaining() == 8) {
            int i8 = (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000);
            S s7 = (S) this.f1871Y0;
            AudioTrack audioTrack = s7.f1858y;
            if (audioTrack == null || !S.r(audioTrack) || (j8 = s7.f1856w) == null || !j8.f1773k) {
                return;
            }
            s7.f1858y.setOffloadDelayPadding(c3136t2.f27019J, i8);
        }
    }

    @Override // B0.InterfaceC0046e0
    public final void setPlaybackParameters(p094m0.S s7) {
        ((S) this.f1871Y0).E(s7);
    }

    @Override // K0.r
    public final void v(Exception exc) {
        p117p0.x.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        C0124n c0124n = this.f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0120j(c0124n, exc, 0));
        }
    }

    @Override // K0.r
    public final void w(String str, long j8, long j9) {
        C0124n c0124n = this.f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0121k(c0124n, str, j8, j9, 0));
        }
    }

    @Override // K0.r
    public final void x(String str) {
        C0124n c0124n = this.f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC3004t(23, c0124n, str));
        }
    }

    @Override // K0.r
    public final C0055j y(B0.Z z7) throws C0072w {
        C3136t c3136t = z7.f904b;
        c3136t.getClass();
        this.f1876d1 = c3136t;
        C0055j c0055jY = super.y(z7);
        C0124n c0124n = this.f1870X0;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0052h0(c0124n, c3136t, c0055jY, 2));
        }
        return c0055jY;
    }

    @Override // K0.r
    public final void z(C3136t c3136t, MediaFormat mediaFormat) throws C0072w {
        int iA;
        int i8;
        C3136t c3136t2 = this.f1877e1;
        int[] iArrQ = null;
        if (c3136t2 != null) {
            c3136t = c3136t2;
        } else if (this.f4420a0 != null) {
            mediaFormat.getClass();
            if ("audio/raw".equals(c3136t.f27041o)) {
                iA = c3136t.f27018I;
            } else if (Build.VERSION.SDK_INT < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                iA = mediaFormat.containsKey("v-bits-per-sample") ? p117p0.M.A(mediaFormat.getInteger("v-bits-per-sample"), ByteOrder.LITTLE_ENDIAN) : 2;
            } else {
                iA = mediaFormat.getInteger("pcm-encoding");
            }
            C3135s c3135s = new C3135s();
            c3135s.f26996n = p094m0.O.p("audio/raw");
            c3135s.f26975H = iA;
            c3135s.f26976I = c3136t.f27019J;
            c3135s.f26977J = c3136t.f27020K;
            c3135s.f26993k = c3136t.f27038l;
            c3135s.f26994l = c3136t.f27039m;
            c3135s.f26983a = c3136t.f27027a;
            c3135s.f26984b = c3136t.f27028b;
            c3135s.f26985c = z4.H.s(c3136t.f27029c);
            c3135s.f26986d = c3136t.f27030d;
            c3135s.f26987e = c3136t.f27031e;
            c3135s.f26988f = c3136t.f27032f;
            c3135s.f26973F = mediaFormat.getInteger("channel-count");
            c3135s.f26974G = mediaFormat.getInteger("sample-rate");
            C3136t c3136t3 = new C3136t(c3135s);
            boolean z7 = this.f1874b1;
            int i9 = c3136t3.f27016G;
            if (z7 && i9 == 6 && (i8 = c3136t.f27016G) < 6) {
                iArrQ = new int[i8];
                for (int i10 = 0; i10 < i8; i10++) {
                    iArrQ[i10] = i10;
                }
            } else if (this.f1875c1) {
                iArrQ = H1.q(i9);
            }
            c3136t = c3136t3;
        }
        try {
            int i11 = Build.VERSION.SDK_INT;
            InterfaceC0131v interfaceC0131v = this.f1871Y0;
            if (i11 >= 29) {
                boolean z8 = true;
                if (!this.f4442w0 || getConfiguration().f702a == 0) {
                    S s7 = (S) interfaceC0131v;
                    s7.getClass();
                    if (i11 < 29) {
                        z8 = false;
                    }
                    H1.i(z8);
                    s7.f1841l = 0;
                } else {
                    int i12 = getConfiguration().f702a;
                    S s8 = (S) interfaceC0131v;
                    s8.getClass();
                    H1.i(i11 >= 29);
                    s8.f1841l = i12;
                }
            }
            ((S) interfaceC0131v).d(c3136t, iArrQ);
        } catch (C0127q e8) {
            throw createRendererException(e8, e8.f1969G, 5001);
        }
    }

    @Override // B0.AbstractC0051h
    public final InterfaceC0046e0 getMediaClock() {
        return this;
    }
}
