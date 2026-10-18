package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1586kr implements InterfaceC1195dC {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ long f19648G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Qv f19649H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Ov f19650I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ String f19651J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ C1438hx f19652K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Tv f19653L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ C1690mr f19654M;

    public C1586kr(C1690mr c1690mr, long j8, Qv qv, Ov ov, String str, C1438hx c1438hx, Tv tv) {
        this.f19648G = j8;
        this.f19649H = qv;
        this.f19650I = ov;
        this.f19651J = str;
        this.f19652K = c1438hx;
        this.f19653L = tv;
        this.f19654M = c1690mr;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0071 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:32:0x006b, B:34:0x0071, B:36:0x007b, B:40:0x0083, B:41:0x008b, B:43:0x009d, B:44:0x00b0, B:46:0x00b6, B:48:0x00b8, B:56:0x00f4, B:57:0x0100, B:51:0x00d9, B:53:0x00dd, B:55:0x00e7), top: B:61:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007b A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:32:0x006b, B:34:0x0071, B:36:0x007b, B:40:0x0083, B:41:0x008b, B:43:0x009d, B:44:0x00b0, B:46:0x00b6, B:48:0x00b8, B:56:0x00f4, B:57:0x0100, B:51:0x00d9, B:53:0x00dd, B:55:0x00e7), top: B:61:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009d A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:32:0x006b, B:34:0x0071, B:36:0x007b, B:40:0x0083, B:41:0x008b, B:43:0x009d, B:44:0x00b0, B:46:0x00b6, B:48:0x00b8, B:56:0x00f4, B:57:0x0100, B:51:0x00d9, B:53:0x00dd, B:55:0x00e7), top: B:61:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b6 A[Catch: all -> 0x0080, DONT_GENERATE, TryCatch #0 {all -> 0x0080, blocks: (B:32:0x006b, B:34:0x0071, B:36:0x007b, B:40:0x0083, B:41:0x008b, B:43:0x009d, B:44:0x00b0, B:46:0x00b6, B:48:0x00b8, B:56:0x00f4, B:57:0x0100, B:51:0x00d9, B:53:0x00dd, B:55:0x00e7), top: B:61:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b8 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:32:0x006b, B:34:0x0071, B:36:0x007b, B:40:0x0083, B:41:0x008b, B:43:0x009d, B:44:0x00b0, B:46:0x00b6, B:48:0x00b8, B:56:0x00f4, B:57:0x0100, B:51:0x00d9, B:53:0x00dd, B:55:0x00e7), top: B:61:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:61:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        Integer numValueOf;
        int i8;
        C3117z0 c3117z0;
        C1690mr c1690mr;
        C1690mr c1690mr2;
        C3117z0 c3117z0O;
        int i9;
        C3117z0 c3117z1;
        ((P3.b) this.f19654M.f20004a).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f19648G;
        if (!(th instanceof TimeoutException)) {
            if (th instanceof C1070ar) {
                numValueOf = null;
                i8 = 3;
            } else if (th instanceof CancellationException) {
                i8 = 4;
            } else if (th instanceof C1075aw) {
                i8 = 5;
            } else {
                if (th instanceof C0679Bo) {
                    int i10 = p113o3.r.o(th).f26629G == 3 ? 1 : 6;
                    numValueOf = (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15948u1)).booleanValue() && (th instanceof C2052tq) && (c3117z0 = ((C2052tq) th).f21151H) != null) ? Integer.valueOf(c3117z0.f26629G) : null;
                    i8 = i10;
                } else {
                    numValueOf = null;
                    i8 = 6;
                }
            }
            synchronized (this.f19654M) {
                try {
                    c1690mr = this.f19654M;
                    if (c1690mr.f20008e) {
                        c1690mr.f20005b.a(this.f19649H, this.f19650I, i8, th instanceof C2052tq ? (C2052tq) th : null, jElapsedRealtime);
                    }
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.G7)).booleanValue()) {
                        C1488ix c1488ix = this.f19654M.f20006c;
                        C1438hx c1438hx = this.f19652K;
                        Tv tv = this.f19653L;
                        Ov ov = this.f19650I;
                        c1488ix.b(c1438hx.a(tv, ov, ov.f15272n));
                    }
                    c1690mr2 = this.f19654M;
                    if (c1690mr2.f20010g) {
                        return;
                    }
                    LinkedHashMap linkedHashMap = c1690mr2.f20007d;
                    Ov ov2 = this.f19650I;
                    linkedHashMap.put(ov2, new C1638lr(this.f19651J, ov2.f15257f0, i8, jElapsedRealtime, numValueOf));
                    c3117z0O = p113o3.r.o(th);
                    i9 = c3117z0O.f26629G;
                    if ((i9 != 3 || i9 == 0) && (c3117z1 = c3117z0O.f26632J) != null && !c3117z1.f26631I.equals("com.google.android.gms.ads")) {
                    }
                    this.f19654M.f20009f.d(this.f19650I, jElapsedRealtime, c3117z0O, false);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        i8 = 2;
        numValueOf = null;
        synchronized (this.f19654M) {
            c1690mr = this.f19654M;
            if (c1690mr.f20008e) {
                c1690mr.f20005b.a(this.f19649H, this.f19650I, i8, th instanceof C2052tq ? (C2052tq) th : null, jElapsedRealtime);
            }
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.G7)).booleanValue()) {
                C1488ix c1488ix2 = this.f19654M.f20006c;
                C1438hx c1438hx2 = this.f19652K;
                Tv tv2 = this.f19653L;
                Ov ov3 = this.f19650I;
                c1488ix2.b(c1438hx2.a(tv2, ov3, ov3.f15272n));
            }
            c1690mr2 = this.f19654M;
            if (c1690mr2.f20010g) {
                return;
            }
            LinkedHashMap linkedHashMap2 = c1690mr2.f20007d;
            Ov ov4 = this.f19650I;
            linkedHashMap2.put(ov4, new C1638lr(this.f19651J, ov4.f15257f0, i8, jElapsedRealtime, numValueOf));
            c3117z0O = p113o3.r.o(th);
            i9 = c3117z0O.f26629G;
            c3117z0O = i9 != 3 ? p113o3.r.o(new C2052tq(13, c3117z0O.f26632J)) : p113o3.r.o(new C2052tq(13, c3117z0O.f26632J));
            this.f19654M.f20009f.d(this.f19650I, jElapsedRealtime, c3117z0O, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        ((P3.b) this.f19654M.f20004a).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f19648G;
        synchronized (this.f19654M) {
            try {
                C1690mr c1690mr = this.f19654M;
                if (c1690mr.f20008e) {
                    c1690mr.f20005b.a(this.f19649H, this.f19650I, 0, null, jElapsedRealtime);
                }
                C1690mr c1690mr2 = this.f19654M;
                if (c1690mr2.f20010g) {
                    return;
                }
                if (C1690mr.h(c1690mr2, this.f19650I)) {
                    ((C1638lr) this.f19654M.f20007d.get(this.f19650I)).f19862d = jElapsedRealtime;
                } else {
                    LinkedHashMap linkedHashMap = this.f19654M.f20007d;
                    Ov ov = this.f19650I;
                    linkedHashMap.put(ov, new C1638lr(this.f19651J, ov.f15257f0, 0, jElapsedRealtime, null));
                }
                this.f19654M.f20009f.d(this.f19650I, jElapsedRealtime, null, true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
