package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1358gK implements DK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CO f18925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f18926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f18927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f18928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f18929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f18930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f18931g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f18932h;

    public C1358gK() {
        CO co = new CO();
        h(2500, 0, "bufferForPlaybackMs", "0");
        h(DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT, 0, "bufferForPlaybackAfterRebufferMs", "0");
        h(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        h(50000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        h(50000, 50000, "maxBufferMs", "minBufferMs");
        h(0, 0, "backBufferDurationMs", "0");
        this.f18925a = co;
        long jT = Et.t(50000L);
        this.f18926b = jT;
        this.f18927c = jT;
        this.f18928d = Et.t(2500L);
        this.f18929e = Et.t(5000L);
        this.f18930f = Et.t(0L);
        this.f18931g = new HashMap();
        this.f18932h = -1L;
    }

    public static void h(int i8, int i9, String str, String str2) {
        p113o3.r.L(i8 >= i9, com.google.protobuf.U2.l(str, " cannot be less than ", str2));
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final void a(C2344zL c2344zL) {
        long id = Thread.currentThread().getId();
        long j8 = this.f18932h;
        boolean z7 = true;
        if (j8 != -1 && j8 != id) {
            z7 = false;
        }
        if (!z7) {
            throw new IllegalStateException("Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        }
        this.f18932h = id;
        HashMap map = this.f18931g;
        if (!map.containsKey(c2344zL)) {
            map.put(c2344zL, new C1306fK());
        }
        C1306fK c1306fK = (C1306fK) map.get(c2344zL);
        c1306fK.getClass();
        c1306fK.f18746b = 13107200;
        c1306fK.f18745a = false;
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final void b(C2344zL c2344zL, AbstractC1048aK[] abstractC1048aKArr, InterfaceC2087uO[] interfaceC2087uOArr) {
        C1306fK c1306fK = (C1306fK) this.f18931g.get(c2344zL);
        c1306fK.getClass();
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int length = abstractC1048aKArr.length;
            if (i8 >= 2) {
                break;
            }
            if (interfaceC2087uOArr[i8] != null) {
                i9 += abstractC1048aKArr[i8].f17867b != 1 ? 131072000 : 13107200;
            }
            i8++;
        }
        c1306fK.f18746b = Math.max(13107200, i9);
        boolean zIsEmpty = this.f18931g.isEmpty();
        CO co = this.f18925a;
        if (!zIsEmpty) {
            co.M(g());
        } else {
            synchronized (co) {
                co.M(0);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final boolean c(CK ck) {
        int i8;
        boolean z7 = ck.f12617d;
        long jRound = ck.f12615b;
        float f8 = ck.f12616c;
        int i9 = Et.f13234a;
        if (f8 != 1.0f) {
            jRound = Math.round(jRound / ((double) f8));
        }
        long jMin = z7 ? this.f18929e : this.f18928d;
        long j8 = ck.f12618e;
        if (j8 != -9223372036854775807L) {
            jMin = Math.min(j8 / 2, jMin);
        }
        if (jMin <= 0 || jRound >= jMin) {
            return true;
        }
        CO co = this.f18925a;
        synchronized (co) {
            i8 = co.f12629b * 65536;
        }
        return i8 >= g();
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final void d(C2344zL c2344zL) {
        if (this.f18931g.remove(c2344zL) != null) {
            boolean zIsEmpty = this.f18931g.isEmpty();
            CO co = this.f18925a;
            if (!zIsEmpty) {
                co.M(g());
            } else {
                synchronized (co) {
                    co.M(0);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final void e(C2344zL c2344zL) {
        if (this.f18931g.remove(c2344zL) != null) {
            boolean zIsEmpty = this.f18931g.isEmpty();
            CO co = this.f18925a;
            if (zIsEmpty) {
                synchronized (co) {
                    co.M(0);
                }
            } else {
                co.M(g());
            }
        }
        if (this.f18931g.isEmpty()) {
            this.f18932h = -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final boolean f(CK ck) {
        int i8;
        C1306fK c1306fK = (C1306fK) this.f18931g.get(ck.f12614a);
        c1306fK.getClass();
        CO co = this.f18925a;
        synchronized (co) {
            i8 = co.f12629b * 65536;
        }
        int iG = g();
        long j8 = this.f18927c;
        long jMin = this.f18926b;
        float f8 = ck.f12616c;
        if (f8 > 1.0f) {
            jMin = Math.min(Et.s(jMin, f8), j8);
        }
        long jMax = Math.max(jMin, 500000L);
        long j9 = ck.f12615b;
        if (j9 < jMax) {
            boolean z7 = i8 < iG;
            c1306fK.f18745a = z7;
            if (!z7 && j9 < 500000) {
                Zo.f("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j9 >= j8 || i8 >= iG) {
            c1306fK.f18745a = false;
        }
        return c1306fK.f18745a;
    }

    public final int g() {
        Iterator it = this.f18931g.values().iterator();
        int i8 = 0;
        while (it.hasNext()) {
            i8 += ((C1306fK) it.next()).f18746b;
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final long zzb() {
        return this.f18930f;
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final CO zzj() {
        return this.f18925a;
    }
}
