package G0;

import B0.C0041c;
import B0.C0073x;
import C0.I;
import F2.D;
import N.C0260i;
import O0.C0292p;
import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.decoder.CryptoConfig;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import p094m0.AbstractC3124g;
import p117p0.C3173k;
import p117p0.InterfaceC3172j;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class d implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f3309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f3310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p096m2.u f3311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f3312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3314f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f3315g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f3316h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C3173k f3317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final U4.b f3318j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final I f3319k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0041c f3320l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final UUID f3321m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Looper f3322n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final HandlerC0201c f3323o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3324p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3325q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public HandlerThread f3326r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public HandlerC0199a f3327s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public CryptoConfig f3328t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public k f3329u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public byte[] f3330v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public byte[] f3331w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public u f3332x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public v f3333y;

    public d(UUID uuid, w wVar, p096m2.u uVar, e eVar, List list, int i8, boolean z7, boolean z8, byte[] bArr, HashMap map, C0041c c0041c, Looper looper, U4.b bVar, I i9) {
        if (i8 == 1 || i8 == 3) {
            bArr.getClass();
        }
        this.f3321m = uuid;
        this.f3311c = uVar;
        this.f3312d = eVar;
        this.f3310b = wVar;
        this.f3313e = i8;
        this.f3314f = z7;
        this.f3315g = z8;
        if (bArr != null) {
            this.f3331w = bArr;
            this.f3309a = null;
        } else {
            list.getClass();
            this.f3309a = Collections.unmodifiableList(list);
        }
        this.f3316h = map;
        this.f3320l = c0041c;
        this.f3317i = new C3173k();
        this.f3318j = bVar;
        this.f3319k = i9;
        this.f3324p = 2;
        this.f3322n = looper;
        this.f3323o = new HandlerC0201c(this, looper);
    }

    @Override // G0.l
    public final UUID a() {
        p();
        return this.f3321m;
    }

    @Override // G0.l
    public final boolean b() {
        p();
        return this.f3314f;
    }

    @Override // G0.l
    public final void c(o oVar) {
        p();
        int i8 = this.f3325q;
        if (i8 <= 0) {
            p117p0.x.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i9 = i8 - 1;
        this.f3325q = i9;
        if (i9 == 0) {
            this.f3324p = 0;
            HandlerC0201c handlerC0201c = this.f3323o;
            String str = M.f28050a;
            handlerC0201c.removeCallbacksAndMessages(null);
            HandlerC0199a handlerC0199a = this.f3327s;
            synchronized (handlerC0199a) {
                handlerC0199a.removeCallbacksAndMessages(null);
                handlerC0199a.f3302a = true;
            }
            this.f3327s = null;
            this.f3326r.quit();
            this.f3326r = null;
            this.f3328t = null;
            this.f3329u = null;
            this.f3332x = null;
            this.f3333y = null;
            byte[] bArr = this.f3330v;
            if (bArr != null) {
                this.f3310b.i(bArr);
                this.f3330v = null;
            }
        }
        if (oVar != null) {
            this.f3317i.c(oVar);
            if (this.f3317i.b(oVar) == 0) {
                oVar.f();
            }
        }
        e eVar = this.f3312d;
        int i10 = this.f3325q;
        i iVar = eVar.f3334a;
        if (i10 == 1 && iVar.f3354U > 0 && iVar.f3350Q != -9223372036854775807L) {
            iVar.f3353T.add(this);
            Handler handler = iVar.f3359Z;
            handler.getClass();
            handler.postAtTime(new p000a.b(this, 17), this, SystemClock.uptimeMillis() + iVar.f3350Q);
        } else if (i10 == 0) {
            iVar.f3351R.remove(this);
            if (iVar.f3356W == this) {
                iVar.f3356W = null;
            }
            if (iVar.f3357X == this) {
                iVar.f3357X = null;
            }
            p096m2.u uVar = iVar.f3347N;
            ((Set) uVar.f27278H).remove(this);
            if (((d) uVar.f27279I) == this) {
                uVar.f27279I = null;
                if (!((Set) uVar.f27278H).isEmpty()) {
                    d dVar = (d) ((Set) uVar.f27278H).iterator().next();
                    uVar.f27279I = dVar;
                    v vVarC = dVar.f3310b.c();
                    dVar.f3333y = vVarC;
                    HandlerC0199a handlerC0199a2 = dVar.f3327s;
                    String str2 = M.f28050a;
                    vVarC.getClass();
                    handlerC0199a2.getClass();
                    handlerC0199a2.obtainMessage(1, new C0200b(C0292p.f5227c.getAndIncrement(), true, SystemClock.elapsedRealtime(), vVarC)).sendToTarget();
                }
            }
            if (iVar.f3350Q != -9223372036854775807L) {
                Handler handler2 = iVar.f3359Z;
                handler2.getClass();
                handler2.removeCallbacksAndMessages(this);
                iVar.f3353T.remove(this);
            }
        }
        iVar.g();
    }

    @Override // G0.l
    public final void d(o oVar) {
        p();
        if (this.f3325q < 0) {
            p117p0.x.c("DefaultDrmSession", "Session reference count less than zero: " + this.f3325q);
            this.f3325q = 0;
        }
        if (oVar != null) {
            C3173k c3173k = this.f3317i;
            synchronized (c3173k.f28090G) {
                try {
                    ArrayList arrayList = new ArrayList(c3173k.f28093J);
                    arrayList.add(oVar);
                    c3173k.f28093J = Collections.unmodifiableList(arrayList);
                    Integer num = (Integer) c3173k.f28091H.get(oVar);
                    if (num == null) {
                        HashSet hashSet = new HashSet(c3173k.f28092I);
                        hashSet.add(oVar);
                        c3173k.f28092I = Collections.unmodifiableSet(hashSet);
                    }
                    c3173k.f28091H.put(oVar, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i8 = this.f3325q + 1;
        this.f3325q = i8;
        if (i8 == 1) {
            H1.i(this.f3324p == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f3326r = handlerThread;
            handlerThread.start();
            this.f3327s = new HandlerC0199a(this, this.f3326r.getLooper());
            if (l()) {
                h(true);
            }
        } else if (oVar != null && i() && this.f3317i.b(oVar) == 1) {
            oVar.d(this.f3324p);
        }
        i iVar = this.f3312d.f3334a;
        if (iVar.f3350Q != -9223372036854775807L) {
            iVar.f3353T.remove(this);
            Handler handler = iVar.f3359Z;
            handler.getClass();
            handler.removeCallbacksAndMessages(this);
        }
    }

    @Override // G0.l
    public final boolean e(String str) {
        p();
        byte[] bArr = this.f3330v;
        H1.j(bArr);
        return this.f3310b.g(bArr, str);
    }

    @Override // G0.l
    public final CryptoConfig f() {
        p();
        return this.f3328t;
    }

    public final void g(InterfaceC3172j interfaceC3172j) {
        Set set;
        C3173k c3173k = this.f3317i;
        synchronized (c3173k.f28090G) {
            set = c3173k.f28092I;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            interfaceC3172j.accept((o) it.next());
        }
    }

    @Override // G0.l
    public final k getError() {
        p();
        if (this.f3324p == 1) {
            return this.f3329u;
        }
        return null;
    }

    @Override // G0.l
    public final int getState() {
        p();
        return this.f3324p;
    }

    public final void h(boolean z7) {
        long j8;
        Pair pair;
        long jMin;
        if (this.f3315g) {
            return;
        }
        byte[] bArr = this.f3330v;
        String str = M.f28050a;
        int i8 = this.f3313e;
        if (i8 != 0 && i8 != 1) {
            if (i8 == 2) {
                if (this.f3331w == null || o()) {
                    m(bArr, 2, z7);
                    return;
                }
                return;
            }
            if (i8 != 3) {
                return;
            }
            this.f3331w.getClass();
            this.f3330v.getClass();
            m(this.f3331w, 3, z7);
            return;
        }
        if (this.f3331w == null) {
            m(bArr, 1, z7);
            return;
        }
        if (this.f3324p == 4 || o()) {
            if (AbstractC3124g.f26855d.equals(this.f3321m)) {
                Map mapN = n();
                if (mapN == null) {
                    pair = null;
                } else {
                    long j9 = -9223372036854775807L;
                    try {
                        String str2 = (String) mapN.get("LicenseDurationRemaining");
                        j8 = str2 != null ? Long.parseLong(str2) : -9223372036854775807L;
                    } catch (NumberFormatException unused) {
                    }
                    Long lValueOf = Long.valueOf(j8);
                    try {
                        String str3 = (String) mapN.get("PlaybackDurationRemaining");
                        if (str3 != null) {
                            j9 = Long.parseLong(str3);
                        }
                    } catch (NumberFormatException unused2) {
                    }
                    pair = new Pair(lValueOf, Long.valueOf(j9));
                }
                pair.getClass();
                jMin = Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
            } else {
                jMin = Long.MAX_VALUE;
            }
            if (i8 == 0 && jMin <= 60) {
                p117p0.x.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jMin);
                m(bArr, 2, z7);
                return;
            }
            if (jMin <= 0) {
                j(2, new A());
            } else {
                this.f3324p = 4;
                g(new C0260i(12));
            }
        }
    }

    public final boolean i() {
        int i8 = this.f3324p;
        return i8 == 3 || i8 == 4;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0025  */
    public final void j(int i8, Throwable th) {
        int iW;
        if (th instanceof MediaDrm.MediaDrmStateException) {
            iW = M.w(M.x(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        } else if (Build.VERSION.SDK_INT >= 23 && D.x(th)) {
            iW = 6006;
        } else if ((th instanceof NotProvisionedException) || Q3.b.n(th)) {
            iW = 6002;
        } else if (th instanceof DeniedByServerException) {
            iW = 6007;
        } else if (th instanceof C) {
            iW = 6001;
        } else if (th instanceof g) {
            iW = 6003;
        } else if (th instanceof A) {
            iW = 6008;
        } else if (i8 == 1) {
            iW = 6006;
        } else if (i8 == 2) {
            iW = 6004;
        } else {
            if (i8 != 3) {
                throw new IllegalArgumentException();
            }
            iW = 6002;
        }
        this.f3329u = new k(iW, th);
        p117p0.x.d("DefaultDrmSession", "DRM session error", th);
        if (th instanceof Exception) {
            g(new C0073x(th, 17));
        } else {
            if (!(th instanceof Error)) {
                throw new IllegalStateException("Unexpected Throwable subclass", th);
            }
            if (!Q3.b.o(th) && !Q3.b.n(th)) {
                throw ((Error) th);
            }
        }
        if (this.f3324p != 4) {
            this.f3324p = 1;
        }
    }

    public final void k(boolean z7, Throwable th) {
        if ((th instanceof NotProvisionedException) || Q3.b.n(th)) {
            this.f3311c.O(this);
        } else {
            j(z7 ? 1 : 2, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0053  */
    /* JADX WARN: Code duplicated, block: B:25:0x0059  */
    public final boolean l() {
        Set set;
        if (i()) {
            return true;
        }
        try {
            byte[] bArrE = this.f3310b.e();
            this.f3330v = bArrE;
            this.f3310b.b(bArrE, this.f3319k);
            this.f3328t = this.f3310b.d(this.f3330v);
            this.f3324p = 3;
            C3173k c3173k = this.f3317i;
            synchronized (c3173k.f28090G) {
                set = c3173k.f28092I;
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                ((o) it.next()).d(3);
            }
            this.f3330v.getClass();
            return true;
        } catch (NotProvisionedException unused) {
            this.f3311c.O(this);
            return false;
        } catch (Exception e8) {
            e = e8;
            if (Q3.b.n(e)) {
                this.f3311c.O(this);
                return false;
            }
            j(1, e);
            return false;
        } catch (NoSuchMethodError e9) {
            e = e9;
            if (Q3.b.n(e)) {
                this.f3311c.O(this);
                return false;
            }
            j(1, e);
            return false;
        }
    }

    public final void m(byte[] bArr, int i8, boolean z7) {
        try {
            u uVarL = this.f3310b.l(bArr, this.f3309a, i8, this.f3316h);
            this.f3332x = uVarL;
            HandlerC0199a handlerC0199a = this.f3327s;
            String str = M.f28050a;
            uVarL.getClass();
            handlerC0199a.getClass();
            handlerC0199a.obtainMessage(2, new C0200b(C0292p.f5227c.getAndIncrement(), z7, SystemClock.elapsedRealtime(), uVarL)).sendToTarget();
        } catch (Exception | NoSuchMethodError e8) {
            k(true, e8);
        }
    }

    public final Map n() {
        p();
        byte[] bArr = this.f3330v;
        if (bArr == null) {
            return null;
        }
        return this.f3310b.a(bArr);
    }

    public final boolean o() {
        try {
            this.f3310b.h(this.f3330v, this.f3331w);
            return true;
        } catch (Exception | NoSuchMethodError e8) {
            j(1, e8);
            return false;
        }
    }

    public final void p() {
        Thread threadCurrentThread = Thread.currentThread();
        Looper looper = this.f3322n;
        if (threadCurrentThread != looper.getThread()) {
            p117p0.x.g("DefaultDrmSession", "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + looper.getThread().getName(), new IllegalStateException());
        }
    }
}
