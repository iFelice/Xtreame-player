package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.RemoteException;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p090l3.C3099q;
import p090l3.C3117z0;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2095uh implements InterfaceC1838pj, InterfaceC0779Ij, InterfaceC0659Aj, InterfaceC3067a, InterfaceC2305yj, InterfaceC0810Kk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f21346G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f21347H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Executor f21348I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ScheduledExecutorService f21349J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Tv f21350K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Ov f21351L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final C1438hx f21352M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C1127bw f21353N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final H4 f21354O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final C1242e8 f21355P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final WeakReference f21356Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final WeakReference f21357R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final C1021Zi f21358S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f21359T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final AtomicBoolean f21360U = new AtomicBoolean();

    public C2095uh(Context context, C1936re c1936re, Executor executor, ScheduledExecutorService scheduledExecutorService, Tv tv, Ov ov, C1438hx c1438hx, C1127bw c1127bw, View view, InterfaceC0715Ef interfaceC0715Ef, H4 h8, C1242e8 c1242e8, C1021Zi c1021Zi) {
        this.f21346G = context;
        this.f21347H = c1936re;
        this.f21348I = executor;
        this.f21349J = scheduledExecutorService;
        this.f21350K = tv;
        this.f21351L = ov;
        this.f21352M = c1438hx;
        this.f21353N = c1127bw;
        this.f21354O = h8;
        this.f21356Q = new WeakReference(view);
        this.f21357R = new WeakReference(interfaceC0715Ef);
        this.f21355P = c1242e8;
        this.f21358S = c1021Zi;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void a() {
        Ov ov = this.f21351L;
        this.f21353N.a(this.f21352M.a(this.f21350K, ov, ov.f15258g));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void b() {
        Ov ov = this.f21351L;
        this.f21353N.a(this.f21352M.a(this.f21350K, ov, ov.f15262i));
    }

    public final List c() {
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.Ia)).booleanValue();
        Ov ov = this.f21351L;
        if (zBooleanValue) {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            Context context = this.f21346G;
            if (p113o3.O.b(context)) {
                Object systemService = context.getSystemService("display");
                Integer numValueOf = systemService instanceof DisplayManager ? Integer.valueOf(((DisplayManager) systemService).getDisplays().length) : null;
                if (numValueOf != null) {
                    int iMin = Math.min(numValueOf.intValue(), 20);
                    ArrayList arrayList = new ArrayList();
                    Iterator it = ov.f15252d.iterator();
                    while (it.hasNext()) {
                        arrayList.add(Uri.parse((String) it.next()).buildUpon().appendQueryParameter("dspct", Integer.toString(iMin)).toString());
                    }
                    return arrayList;
                }
            }
        }
        return ov.f15252d;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2305yj
    public final void d(C3117z0 c3117z0) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15893n1)).booleanValue()) {
            int i8 = c3117z0.f26629G;
            Ov ov = this.f21351L;
            List list = ov.f15274o;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(C1438hx.c((String) it.next(), "@gw_mpe@", "2." + i8));
            }
            this.f21353N.a(this.f21352M.a(this.f21350K, ov, arrayList));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractCollection, java.util.List] */
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
    @Override // com.google.android.gms.internal.ads.InterfaceC0810Kk
    public final void e() {
        Ov ov = this.f21351L;
        this.f21353N.a(this.f21352M.a(this.f21350K, ov, ov.f15287u0));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void g(InterfaceC1211dd interfaceC1211dd, String str, String str2) {
        Uv uv;
        Ov ov = this.f21351L;
        List list = ov.f15260h;
        C1438hx c1438hx = this.f21352M;
        c1438hx.getClass();
        ArrayList arrayList = new ArrayList();
        ((P3.b) c1438hx.f19196h).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            String str3 = ((BinderC1108bd) interfaceC1211dd).f18055G;
            String string = Integer.toString(((BinderC1108bd) interfaceC1211dd).f18056H);
            boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15887m3)).booleanValue();
            AbstractC2217wz az = C1957rz.f20814G;
            if (zBooleanValue) {
                Vv vv = c1438hx.f19195g;
                if (vv != null && (uv = vv.f17128a) != null) {
                    az = new Az(uv);
                }
            } else {
                Uv uv2 = c1438hx.f19194f;
                if (uv2 != null) {
                    az = new Az(uv2);
                }
            }
            String str4 = (String) az.a(new C2064u1(20)).b();
            String str5 = (String) az.a(new C2064u1(21)).b();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(com.bumptech.glide.c.D(C1438hx.c(C1438hx.c(C1438hx.c(C1438hx.c(C1438hx.c(C1438hx.c((String) it.next(), "@gw_rwd_userid@", Uri.encode(str4)), "@gw_rwd_custom_data@", Uri.encode(str5)), "@gw_tmstmp@", Long.toString(jCurrentTimeMillis)), "@gw_rwd_itm@", Uri.encode(str3)), "@gw_rwd_amt@", string), "@gw_sdkver@", c1438hx.f19190b), c1438hx.f19193e, ov.f15242W, ov.f15291w0));
            }
        } catch (RemoteException e8) {
            p120p3.h.e("Unable to determine award type and amount.", e8);
        }
        this.f21353N.a(arrayList);
    }

    public final void i() {
        String strZzh;
        int i8;
        Ov ov = this.f21351L;
        List list = ov.f15252d;
        if (list == null || list.isEmpty()) {
            return;
        }
        J7 j8 = Q7.f15879l3;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            strZzh = this.f21354O.f13700b.zzh(this.f21346G, (View) this.f21356Q.get(), null);
        } else {
            strZzh = null;
        }
        J7 j9 = Q7.f15884m0;
        O7 o7 = c3099q.f26627c;
        if ((((Boolean) o7.a(j9)).booleanValue() && ((Qv) this.f21350K.f16755b.f21883I).f16156h) || !((Boolean) AbstractC1864q8.f20554h.l()).booleanValue()) {
            this.f21353N.a(this.f21352M.b(this.f21350K, this.f21351L, false, strZzh, null, c()));
            return;
        }
        if (((Boolean) AbstractC1864q8.f20553g.l()).booleanValue() && ((i8 = ov.f15248b) == 1 || i8 == 2 || i8 == 5)) {
        }
        Cw.h2((AbstractC1040aC) Cw.e2(AbstractC1040aC.r(Cw.N1(null)), ((Long) o7.a(Q7.f15685O0)).longValue(), TimeUnit.MILLISECONDS, this.f21349J), new C2218x(this, strZzh, 19, 0), this.f21347H);
    }

    public final void m(int i8, int i9) {
        View view;
        if (i8 <= 0 || !((view = (View) this.f21356Q.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            i();
        } else {
            this.f21349J.schedule(new RunnableC1991sh(this, i8, i9, 1), i9, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final synchronized void n() {
        C1021Zi c1021Zi;
        try {
            if (this.f21359T) {
                ArrayList arrayList = new ArrayList(c());
                arrayList.addAll(this.f21351L.f15256f);
                this.f21353N.a(this.f21352M.b(this.f21350K, this.f21351L, true, null, null, arrayList));
            } else {
                C1127bw c1127bw = this.f21353N;
                C1438hx c1438hx = this.f21352M;
                Tv tv = this.f21350K;
                Ov ov = this.f21351L;
                c1127bw.a(c1438hx.a(tv, ov, ov.f15270m));
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15918q3)).booleanValue() && (c1021Zi = this.f21358S) != null) {
                    List list = c1021Zi.f17790b.f15270m;
                    String strC = c1021Zi.f17791c.c();
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(C1438hx.c((String) it.next(), "@gw_adnetstatus@", strC));
                    }
                    long jA = this.f21358S.f17791c.a();
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(C1438hx.c((String) it2.next(), "@gw_ttr@", Long.toString(jA, 10)));
                    }
                    C1127bw c1127bw2 = this.f21353N;
                    C1438hx c1438hx2 = this.f21352M;
                    C1021Zi c1021Zi2 = this.f21358S;
                    c1127bw2.a(c1438hx2.a(c1021Zi2.f17789a, c1021Zi2.f17790b, arrayList3));
                }
                C1127bw c1127bw3 = this.f21353N;
                C1438hx c1438hx3 = this.f21352M;
                Tv tv2 = this.f21350K;
                Ov ov2 = this.f21351L;
                c1127bw3.a(c1438hx3.a(tv2, ov2, ov2.f15256f));
            }
            this.f21359T = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15884m0)).booleanValue();
        Tv tv = this.f21350K;
        if (!(zBooleanValue && ((Qv) tv.f16755b.f21883I).f16156h) && ((Boolean) AbstractC1864q8.f20550d.l()).booleanValue()) {
            C1242e8 c1242e8 = this.f21355P;
            c1242e8.getClass();
            Cw.h2(Cw.w1(AbstractC1040aC.r((AbstractC1040aC) Cw.e2(AbstractC1040aC.r(Cw.N1(null)), ((Long) AbstractC1864q8.f20549c.l()).longValue(), TimeUnit.MILLISECONDS, c1242e8.f18486c)), Throwable.class, new C2064u1(4), AbstractC1988se.f20911f), new C0864Of(this, 1), this.f21347H);
        } else {
            Ov ov = this.f21351L;
            this.f21353N.c(true == p083k3.l.f25980A.f25987g.a(this.f21346G) ? 2 : 1, this.f21352M.a(tv, ov, ov.f15250c));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        if (this.f21360U.compareAndSet(false, true)) {
            J7 j8 = Q7.f15950u3;
            C3099q c3099q = C3099q.f26624d;
            int iIntValue = ((Integer) c3099q.f26627c.a(j8)).intValue();
            O7 o7 = c3099q.f26627c;
            if (iIntValue > 0) {
                m(iIntValue, ((Integer) o7.a(Q7.f15958v3)).intValue());
            } else if (!((Boolean) o7.a(Q7.f15942t3)).booleanValue()) {
                i();
            } else {
                this.f21348I.execute(new RunnableC1939rh(this, 0));
            }
        }
    }
}
