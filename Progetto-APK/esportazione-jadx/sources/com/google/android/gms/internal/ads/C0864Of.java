package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import android.media.AudioAttributes;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Pair;
import android.view.View;
import com.google.api.Service;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.regex.Matcher;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.C3099q;
import p090l3.C3117z0;
import p113o3.C3158p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Of, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0864Of implements InterfaceC1195dC, InterfaceC1942rk, p083k3.h, InterfaceC1430hp, InterfaceC2121v6, Dw, p083k3.e, InterfaceC1743ns, InterfaceC1746nv {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15179G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f15180H;

    public /* synthetic */ C0864Of(int i8, Object obj) {
        this.f15179G = i8;
        this.f15180H = obj;
    }

    private final void c() {
        synchronized (((BinderC1329fs) this.f15180H)) {
            ((BinderC1329fs) this.f15180H).f18820O = null;
        }
    }

    private final void d() {
        synchronized (((BinderC1587ks) this.f15180H)) {
            ((BinderC1587ks) this.f15180H).f19664P = null;
        }
    }

    private final void e(Object obj) {
        String str = (String) obj;
        synchronized (this) {
            Object obj2 = this.f15180H;
            ((C1273eo) obj2).f18589c = true;
            p083k3.l.f25980A.f25990j.getClass();
            ((C1273eo) obj2).d("com.google.android.gms.ads.MobileAds", (int) (SystemClock.elapsedRealtime() - ((C1273eo) this.f15180H).f18590d), HttpUrl.FRAGMENT_ENCODE_SET, true);
            ((C1273eo) this.f15180H).f18595i.execute(new RunnableC1170co(0, this, str));
        }
    }

    private final void m(Object obj) {
        Tv tv = (Tv) obj;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15651J5)).booleanValue()) {
            ((C0844Mo) this.f15180H).f14802e.f(((Qv) tv.f16755b.f21883I).f16154f);
            Up up = ((C0844Mo) this.f15180H).f14802e;
            long j8 = ((Qv) tv.f16755b.f21883I).f16155g;
            synchronized (up.f16894h) {
                up.f16889c = j8;
            }
        }
    }

    private final void n(Object obj) {
        AbstractC0852Nh abstractC0852Nh = (AbstractC0852Nh) obj;
        synchronized (((BinderC1329fs) this.f15180H)) {
            AbstractC0852Nh abstractC0852Nh2 = ((BinderC1329fs) this.f15180H).f18820O;
            if (abstractC0852Nh2 != null) {
                C0689Cj c0689Cj = abstractC0852Nh2.f21914c;
                c0689Cj.getClass();
                c0689Cj.Z0(new I7(null, 3));
            }
            Object obj2 = this.f15180H;
            ((BinderC1329fs) obj2).f18820O = abstractC0852Nh;
            ((BinderC1329fs) obj2).f18820O.a();
        }
    }

    private final /* bridge */ /* synthetic */ void o(Object obj) {
        C0967Vk c0967Vk = (C0967Vk) obj;
        synchronized (((BinderC1587ks) this.f15180H)) {
            Object obj2 = this.f15180H;
            ((BinderC1587ks) obj2).f19664P = c0967Vk;
            ((BinderC1587ks) obj2).f19664P.a();
        }
    }

    @Override // p083k3.h
    public final void a() {
        C0966Vj c0966Vj = ((C1428hn) this.f15180H).f19139g;
        synchronized (c0966Vj) {
            try {
                if (c0966Vj.f17090N) {
                    if (c0966Vj.f17088L > 0 && c0966Vj.f17091O.isCancelled()) {
                        c0966Vj.c1(c0966Vj.f17088L);
                    }
                    if (c0966Vj.f17089M > 0 && c0966Vj.f17092P.isCancelled()) {
                        c0966Vj.d1(c0966Vj.f17089M);
                    }
                    c0966Vj.f17090N = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1430hp
    public final D4.b b(C0973Wc c0973Wc) {
        D4.b bVarH1;
        Wo wo = (Wo) this.f15180H;
        synchronized (wo.f16527b) {
            try {
                int i8 = wo.f17322h;
                if (i8 != 1 && i8 != 2) {
                    bVarH1 = Cw.H1(new C1274ep(2));
                } else if (wo.f16528c) {
                    bVarH1 = wo.f16526a;
                } else {
                    wo.f17322h = 2;
                    wo.f16528c = true;
                    wo.f16530e = c0973Wc;
                    wo.f16531f.checkAvailabilityAndConnect();
                    wo.f16526a.a(new Vo(wo, 0), AbstractC1988se.f20911f);
                    bVarH1 = wo.f16526a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVarH1;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2121v6
    public final void g(C7 c8) {
        int i8 = this.f15179G;
        Object obj = this.f15180H;
        switch (i8) {
            case 20:
                c8.d();
                D7.H((D7) c8.f20255H, (M6) obj);
                break;
            default:
                C2226x7 c2226x7 = (C2226x7) ((D7) c8.f20255H).K().o();
                c2226x7.d();
                C2278y7.A((C2278y7) c2226x7.f20255H, (T6) obj);
                c8.d();
                D7.D((D7) c8.f20255H, (C2278y7) c2226x7.b());
                break;
        }
    }

    @Override // p083k3.h
    public final void i() {
        C0966Vj c0966Vj = ((C1428hn) this.f15180H).f19139g;
        synchronized (c0966Vj) {
            try {
                if (!c0966Vj.f17090N) {
                    ScheduledFuture scheduledFuture = c0966Vj.f17091O;
                    if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                        c0966Vj.f17088L = -1L;
                    } else {
                        c0966Vj.f17091O.cancel(false);
                        long j8 = c0966Vj.f17086J;
                        ((P3.b) c0966Vj.f17085I).getClass();
                        c0966Vj.f17088L = j8 - SystemClock.elapsedRealtime();
                    }
                    ScheduledFuture scheduledFuture2 = c0966Vj.f17092P;
                    if (scheduledFuture2 == null || scheduledFuture2.isCancelled()) {
                        c0966Vj.f17089M = -1L;
                    } else {
                        c0966Vj.f17092P.cancel(false);
                        long j9 = c0966Vj.f17087K;
                        ((P3.b) c0966Vj.f17085I).getClass();
                        c0966Vj.f17089M = j9 - SystemClock.elapsedRealtime();
                    }
                    c0966Vj.f17090N = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.Dw
    public final Object zza(Object obj) {
        C1172cq.O((SQLiteDatabase) obj, (p120p3.k) this.f15180H);
        return null;
    }

    @Override // p083k3.e
    public final void zzb() {
        int i8 = this.f15179G;
        Object obj = this.f15180H;
        switch (i8) {
            case 13:
                C0734Fj c0734Fj = ((C1376gn) obj).f18979c;
                c0734Fj.getClass();
                c0734Fj.Z0(new F2.G(0));
                break;
            default:
                ((C1734nj) ((C0836Mg) obj).f14765k0.zzb()).x();
                break;
        }
    }

    @Override // p083k3.e
    public final void zzc() {
        int i8 = this.f15179G;
        Object obj = this.f15180H;
        switch (i8) {
            case 13:
                ((C1376gn) obj).f18989m.zza();
                break;
            default:
                C0836Mg c0836Mg = (C0836Mg) obj;
                ((C2357zj) c0836Mg.f14761g0.zzb()).zza();
                ((C0883Pk) c0836Mg.f14767m0.zzb()).zza();
                break;
        }
    }

    public /* synthetic */ C0864Of(C1269ek c1269ek) {
        this.f15179G = 6;
        this.f15180H = c1269ek;
    }

    @Override // p083k3.e
    public final void zza(View view) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        int i8 = this.f15179G;
        Object obj2 = this.f15180H;
        switch (i8) {
            case 3:
                ((InterfaceC0824Lj) obj).v((AbstractC2252xi) obj2);
                break;
            case 4:
                ((InterfaceC0924Sj) obj).e(((C0910Rj) obj2).f16335H.f15255e0);
                break;
            case 5:
                ((InterfaceC1022Zj) obj).z((C0973Wc) obj2);
                break;
            case 6:
            default:
                Pair pair = (Pair) obj2;
                ((p090l3.U) obj).G2((String) pair.first, (String) pair.second);
                break;
            case 7:
                ((G5) obj).F((F5) obj2);
                break;
            case 8:
                ((X9) obj).G((C1624ld) obj2);
                break;
            case 9:
                ((InterfaceC0925Sk) obj).c((p167v3.r) obj2);
                break;
        }
    }

    public /* synthetic */ C0864Of(Object obj, int i8) {
        this.f15179G = i8;
        this.f15180H = obj;
    }

    public /* synthetic */ C0864Of() {
        this.f15179G = 29;
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
        int i8 = Et.f13234a;
        if (i8 >= 29) {
            AbstractC1471ie.a(usage, 1);
        }
        if (i8 >= 32) {
            AbstractC0882Pj.a(usage, 0);
        }
        this.f15180H = usage.build();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        switch (this.f15179G) {
            case 1:
                C2095uh c2095uh = (C2095uh) this.f15180H;
                String str = (String) obj;
                C1127bw c1127bw = c2095uh.f21353N;
                Ov ov = c2095uh.f21351L;
                c1127bw.c(true == p083k3.l.f25980A.f25987g.a(c2095uh.f21346G) ? 2 : 1, c2095uh.f21352M.b(c2095uh.f21350K, ov, false, HttpUrl.FRAGMENT_ENCODE_SET, str, ov.f15250c));
                return;
            case 2:
                ((C0979Wi) this.f15180H).f17297G.zza();
                return;
            case 11:
                try {
                    InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) ((List) obj).get(0);
                    if (interfaceC0715Ef != null) {
                        C1271em c1271em = (C1271em) this.f15180H;
                        c1271em.getClass();
                        c1271em.f18584I.execute(new RunnableC0850Nf(interfaceC0715Ef, 4));
                        return;
                    }
                    return;
                } catch (ClassCastException | IndexOutOfBoundsException e8) {
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15705Q4)).booleanValue()) {
                        p083k3.l.f25980A.f25987g.i("omid native display exp", e8);
                        return;
                    }
                    return;
                }
            case 14:
                e(obj);
                return;
            case 15:
                m(obj);
                return;
            case 16:
                ((C1120bp) this.f15180H).f18098c.C((Tv) obj);
                return;
            case 18:
                ((C1999sp) this.f15180H).f20984a.C((Tv) obj);
                return;
            case 19:
                try {
                    ((InterfaceC0875Pc) this.f15180H).F((ParcelFileDescriptor) obj);
                    return;
                } catch (RemoteException e9) {
                    p113o3.I.l("Ad service can't call client", e9);
                    return;
                }
            case 23:
                ((AbstractC0852Nh) obj).a();
                return;
            case 25:
                n(obj);
                return;
            case 27:
                o(obj);
                return;
            default:
                AbstractC2252xi abstractC2252xi = (AbstractC2252xi) obj;
                synchronized (((C1639ls) this.f15180H)) {
                    ((C1639ls) this.f15180H).f19866c = abstractC2252xi.f21917f;
                    abstractC2252xi.a();
                    break;
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1743ns
    public final void zza() {
        switch (this.f15179G) {
            case 25:
                c();
                return;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
            default:
                synchronized (((C1639ls) this.f15180H)) {
                    break;
                }
                return;
            case 27:
                d();
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        String message;
        switch (this.f15179G) {
            case 1:
            case 2:
                return;
            case 11:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15705Q4)).booleanValue()) {
                    p083k3.l.f25980A.f25987g.i("omid native display exp", th);
                    return;
                }
                return;
            case 14:
                synchronized (this) {
                    Object obj = this.f15180H;
                    ((C1273eo) obj).f18589c = true;
                    p083k3.l.f25980A.f25990j.getClass();
                    ((C1273eo) obj).d("com.google.android.gms.ads.MobileAds", (int) (SystemClock.elapsedRealtime() - ((C1273eo) this.f15180H).f18590d), "Internal Error.", false);
                    ((C1273eo) this.f15180H).f18591e.c(new Exception());
                    break;
                }
                return;
            case 15:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15651J5)).booleanValue()) {
                    Matcher matcher = C0844Mo.f14797h.matcher(th.getMessage());
                    if (matcher.matches()) {
                        ((C0844Mo) this.f15180H).f14802e.f(Integer.parseInt(matcher.group(1)));
                        return;
                    }
                    return;
                }
                return;
            case 16:
            case 18:
                return;
            case 19:
                try {
                    InterfaceC0875Pc interfaceC0875Pc = (InterfaceC0875Pc) this.f15180H;
                    C3117z0 c3117z0O = p113o3.r.o(th);
                    if (AbstractC2987b.j0(th.getMessage())) {
                        message = c3117z0O.f26630H;
                    } else {
                        message = th.getMessage();
                    }
                    interfaceC0875Pc.w(new C3158p(message, c3117z0O.f26629G));
                    return;
                } catch (RemoteException e8) {
                    p113o3.I.l("Ad service can't call client", e8);
                    return;
                }
            default:
                Lq lq = (Lq) this.f15180H;
                C3117z0 c3117z0V = p113o3.r.v(th, ((C0823Li) ((C0776Ig) lq.f14559a).f13974i0.zzb()).f14542l);
                lq.f14562d.y(c3117z0V);
                AbstractC2987b.s0("DelayedBannerAd.onFailure", c3117z0V.f26629G, th);
                return;
        }
    }
}
