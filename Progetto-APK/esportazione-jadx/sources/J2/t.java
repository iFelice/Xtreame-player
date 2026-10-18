package J2;

import B0.C0041c;
import B0.K;
import D0.U;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import com.google.android.gms.internal.ads.BM;
import com.google.android.gms.internal.ads.C0717Eh;
import com.google.android.gms.internal.ads.C2000sq;
import com.google.android.gms.internal.ads.C2040te;
import com.google.android.gms.internal.ads.C2052tq;
import com.google.android.gms.internal.ads.CM;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.KM;
import com.google.android.gms.internal.ads.LM;
import com.google.android.gms.internal.ads.MM;
import com.google.android.gms.internal.ads.N5;
import com.google.android.gms.internal.ads.O5;
import com.google.android.gms.internal.ads.Ow;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.RunnableC0755Ha;
import com.google.android.gms.internal.ads.Tw;
import com.google.android.gms.internal.ads.U3;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashSet;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import p086l.C3061x;
import p090l3.C3099q;
import p090l3.C3117z0;
import p094m0.C3136t;
import p094m0.O;

/* JADX INFO: loaded from: classes.dex */
public class t implements K0.k, InterfaceC1195dC, LM {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static volatile t f4123K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4124G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f4125H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f4126I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f4127J;

    public t(int i8) {
        this.f4124G = i8;
        if (i8 == 3) {
            this.f4127J = Collections.newSetFromMap(new WeakHashMap());
            this.f4126I = new HashSet();
            return;
        }
        if (i8 == 10) {
            this.f4126I = new Object();
            return;
        }
        if (i8 == 5) {
            this.f4126I = new Object();
            this.f4127J = null;
            this.f4125H = false;
        } else {
            if (i8 == 6) {
                this.f4127J = p120p3.b.f28201a;
                return;
            }
            this.f4126I = null;
            this.f4125H = false;
            this.f4127J = null;
        }
    }

    public static t d(Context context) {
        if (f4123K == null) {
            synchronized (t.class) {
                try {
                    if (f4123K == null) {
                        f4123K = new t(context.getApplicationContext(), 0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4123K;
    }

    @Override // com.google.android.gms.internal.ads.LM
    public final /* bridge */ /* synthetic */ MM a(KM km) {
        throw null;
    }

    public final boolean b(L2.c cVar) {
        boolean z7 = true;
        if (cVar == null) {
            return true;
        }
        boolean zRemove = ((Set) this.f4127J).remove(cVar);
        if (!((Set) this.f4126I).remove(cVar) && !zRemove) {
            z7 = false;
        }
        if (z7) {
            cVar.clear();
        }
        return z7;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0040 A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:4:0x001c, B:6:0x0022, B:10:0x002f, B:12:0x0037, B:16:0x0050, B:15:0x0040), top: B:35:0x001c }] */
    @Override // K0.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final K0.b y(C3061x c3061x) throws Exception {
        MediaCodec mediaCodecCreateByCodecName;
        K0.m dVar;
        int i8;
        String str = ((K0.o) c3061x.f26410G).f4355a;
        K0.b bVar = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            try {
                if (this.f4125H) {
                    C3136t c3136t = (C3136t) c3061x.f26412I;
                    int i9 = Build.VERSION.SDK_INT;
                    if (i9 >= 34 && (i9 >= 35 || O.o(c3136t.f27041o))) {
                        i8 = 4;
                        dVar = new U(mediaCodecCreateByCodecName, i8);
                    } else {
                        dVar = new K0.d(mediaCodecCreateByCodecName, (HandlerThread) ((p190y4.t) this.f4127J).get());
                        i8 = 0;
                    }
                } else {
                    dVar = new K0.d(mediaCodecCreateByCodecName, (HandlerThread) ((p190y4.t) this.f4127J).get());
                    i8 = 0;
                }
                K0.b bVar2 = new K0.b(mediaCodecCreateByCodecName, (HandlerThread) ((p190y4.t) this.f4126I).get(), dVar, (K0.i) c3061x.f26415L);
                try {
                    Trace.endSection();
                    Object obj = c3061x.f26413J;
                    if (((Surface) obj) == null && ((K0.o) c3061x.f26410G).f4364j && Build.VERSION.SDK_INT >= 35) {
                        i8 |= 8;
                    }
                    K0.b.a(bVar2, (MediaFormat) c3061x.f26411H, (Surface) obj, (MediaCrypto) c3061x.f26414K, i8);
                    return bVar2;
                } catch (Exception e8) {
                    e = e8;
                    bVar = bVar2;
                    if (bVar != null) {
                        bVar.release();
                    } else if (mediaCodecCreateByCodecName != null) {
                        mediaCodecCreateByCodecName.release();
                    }
                    throw e;
                }
            } catch (Exception e9) {
                e = e9;
            }
        } catch (Exception e10) {
            e = e10;
            mediaCodecCreateByCodecName = null;
        }
    }

    public final void e() {
        for (L2.c cVar : P2.o.e((Set) this.f4127J)) {
            if (!cVar.isComplete() && !cVar.f()) {
                cVar.clear();
                if (this.f4125H) {
                    ((Set) this.f4126I).add(cVar);
                } else {
                    cVar.g();
                }
            }
        }
    }

    public final void f() {
        this.f4125H = false;
        for (L2.c cVar : P2.o.e((Set) this.f4127J)) {
            if (!cVar.isComplete() && !cVar.isRunning()) {
                cVar.g();
            }
        }
        ((Set) this.f4126I).clear();
    }

    public final Activity g() {
        synchronized (this.f4126I) {
            try {
                N5 n7 = (N5) this.f4127J;
                if (n7 == null) {
                    return null;
                }
                return n7.f14880G;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void h(int i8) {
        if (this.f4125H) {
            return;
        }
        this.f4125H = true;
        r(new C3117z0(i8, "Error from: " + ((C2000sq) this.f4126I).f20993a + ", code: " + i8, "undefined", null, null));
    }

    public final void i(p052g4.p pVar) {
        synchronized (this.f4126I) {
            try {
                if (((Queue) this.f4127J) == null) {
                    this.f4127J = new ArrayDeque();
                }
                ((Queue) this.f4127J).add(pVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Application j() {
        synchronized (this.f4126I) {
            try {
                N5 n7 = (N5) this.f4127J;
                if (n7 == null) {
                    return null;
                }
                return n7.f14881H;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(p052g4.h hVar) {
        p052g4.p pVar;
        synchronized (this.f4126I) {
            if (((Queue) this.f4127J) != null && !this.f4125H) {
                this.f4125H = true;
                while (true) {
                    synchronized (this.f4126I) {
                        try {
                            pVar = (p052g4.p) ((Queue) this.f4127J).poll();
                            if (pVar == null) {
                                this.f4125H = false;
                                return;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    pVar.a(hVar);
                }
            }
        }
    }

    public final synchronized void l(C3117z0 c3117z0) {
        if (this.f4125H) {
            return;
        }
        this.f4125H = true;
        r(c3117z0);
    }

    public final synchronized void m(int i8, String str) {
        try {
            if (this.f4125H) {
                return;
            }
            this.f4125H = true;
            if (str == null) {
                str = "Error from: " + ((C2000sq) this.f4126I).f20993a + ", code: " + i8;
            }
            r(new C3117z0(i8, str, "undefined", null, null));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void n(O5 o7) {
        synchronized (this.f4126I) {
            try {
                if (((N5) this.f4127J) == null) {
                    this.f4127J = new N5();
                }
                ((N5) this.f4127J).a(o7);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void o() {
        ((C2040te) this.f4127J).b(null);
    }

    public final void p(Context context) {
        synchronized (this.f4126I) {
            try {
                if (!this.f4125H) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        applicationContext = context;
                    }
                    Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                    if (application == null) {
                        p120p3.h.g("Can not cast Context to Application");
                        return;
                    }
                    if (((N5) this.f4127J) == null) {
                        this.f4127J = new N5();
                    }
                    N5 n7 = (N5) this.f4127J;
                    if (!n7.f14888O) {
                        application.registerActivityLifecycleCallbacks(n7);
                        if (context instanceof Activity) {
                            n7.c((Activity) context);
                        }
                        n7.f14881H = application;
                        n7.f14889P = ((Long) C3099q.f26624d.f26627c.a(Q7.f15661L0)).longValue();
                        n7.f14888O = true;
                    }
                    this.f4125H = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void q(C0717Eh c0717Eh) {
        synchronized (this.f4126I) {
            try {
                N5 n7 = (N5) this.f4127J;
                if (n7 == null) {
                    return;
                }
                n7.b(c0717Eh);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void r(C3117z0 c3117z0) {
        int i8 = 1;
        if (true == ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15767Y4)).booleanValue()) {
            i8 = 3;
        }
        ((C2040te) this.f4127J).c(new C2052tq(i8, c3117z0));
    }

    public final String toString() {
        switch (this.f4124G) {
            case 3:
                return super.toString() + "{numRequests=" + ((Set) this.f4127J).size() + ", isPaused=" + this.f4125H + "}";
            default:
                return super.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        Ow ow = (Ow) this.f4127J;
        if (ow.zzk()) {
            Tw tw = (Tw) this.f4126I;
            ow.d(th);
            ow.e(false);
            tw.a(ow);
            if (this.f4125H) {
                ((Tw) this.f4126I).h();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        Ow ow = (Ow) this.f4127J;
        ow.e(true);
        ((Tw) this.f4126I).a(ow);
        if (this.f4125H) {
            ((Tw) this.f4126I).h();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public t(int i8, int i9) {
        this.f4124G = i9;
        int i10 = 1;
        if (i9 != 9) {
            this(new K(i8, 0), new K(i8, i10));
            return;
        }
        BM bm = new BM(i8);
        CM cm = new CM(i8);
        this.f4126I = bm;
        this.f4127J = cm;
        this.f4125H = true;
    }

    public t(Context context, int i8) {
        Object sVar;
        this.f4124G = i8;
        if (i8 != 6) {
            this.f4127J = new HashSet();
            J3.k kVar = new J3.k(new l(this, context));
            p pVar = new p(this);
            if (Build.VERSION.SDK_INT >= 24) {
                sVar = new C0041c(kVar, pVar);
            } else {
                sVar = new s(context, kVar, pVar);
            }
            this.f4126I = sVar;
            return;
        }
        ExecutorService executorService = p120p3.b.f28201a;
        this.f4127J = executorService;
        executorService.execute(new RunnableC0755Ha(8, this, context));
    }

    public t(C2000sq c2000sq, C2040te c2040te) {
        this.f4124G = 7;
        this.f4126I = c2000sq;
        this.f4127J = c2040te;
        this.f4125H = false;
    }

    public /* synthetic */ t(Object obj, Object obj2, boolean z7, int i8) {
        this.f4124G = i8;
        this.f4126I = obj;
        this.f4127J = obj2;
        this.f4125H = z7;
    }

    public t(String str, boolean z7) {
        this.f4124G = 4;
        this.f4126I = str;
        this.f4125H = z7;
        this.f4127J = U3.A();
    }

    public t(p190y4.t tVar, p190y4.t tVar2) {
        this.f4124G = 2;
        this.f4126I = tVar;
        this.f4127J = tVar2;
        this.f4125H = false;
    }
}
