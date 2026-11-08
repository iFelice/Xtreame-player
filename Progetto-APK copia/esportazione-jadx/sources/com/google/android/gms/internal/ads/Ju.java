package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Ju implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f14234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f14235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f14236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C2272y1 f14238f;

    public Ju(C2272y1 c2272y1, Context context, ScheduledExecutorService scheduledExecutorService, C1936re c1936re, int i8, boolean z7, boolean z8) {
        this.f14238f = c2272y1;
        this.f14233a = context;
        this.f14234b = scheduledExecutorService;
        this.f14235c = c1936re;
        this.f14236d = z7;
        this.f14237e = z8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 40;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        J7 j8 = Q7.f15677N0;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            return Cw.H1(new Exception("Did not ad Ad ID into query param."));
        }
        this.f14238f.getClass();
        C2040te c2040te = new C2040te();
        p120p3.d dVar = C3097p.f26618f.f26619a;
        J3.f fVar = J3.f.f4145b;
        Context context = this.f14233a;
        int iC = fVar.c(context, 12451000);
        if (iC == 0 || iC == 2) {
            AbstractC1988se.f20906a.execute(new RunnableC0755Ha(context, c2040te));
        }
        AbstractC1040aC abstractC1040aCR = AbstractC1040aC.r(c2040te);
        final int i8 = 0;
        InterfaceC2165vz interfaceC2165vz = new InterfaceC2165vz(this) { // from class: com.google.android.gms.internal.ads.Iu

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Ju f14065b;

            {
                this.f14065b = this;
            }

            /* JADX WARN: Code duplicated, block: B:14:0x0051  */
            /* JADX WARN: Code duplicated, block: B:16:0x0055  */
            /* JADX WARN: Code duplicated, block: B:32:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:34:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
            public final Object apply(Object obj) {
                Ty tyF;
                String str;
                String packageName;
                long jLongValue;
                boolean z7;
                switch (i8) {
                    case 0:
                        Ju ju = this.f14065b;
                        p075j3.a aVar = (p075j3.a) obj;
                        ju.getClass();
                        C0871Om c0871Om = new C0871Om(21);
                        if (!ju.f14236d) {
                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15711R2)).booleanValue()) {
                                tyF = Ty.f(ju.f14233a);
                                Objects.requireNonNull(aVar);
                                str = aVar.f25695a;
                                Objects.requireNonNull(str);
                                packageName = ju.f14233a.getPackageName();
                                jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.f15758X2)).longValue();
                                z7 = ju.f14237e;
                                tyF.getClass();
                                synchronized (Ty.class) {
                                    c0871Om = tyF.a(jLongValue, str, packageName, z7);
                                }
                            } else if (ju.f14236d) {
                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15719S2)).booleanValue()) {
                                    try {
                                        tyF = Ty.f(ju.f14233a);
                                        Objects.requireNonNull(aVar);
                                        str = aVar.f25695a;
                                        Objects.requireNonNull(str);
                                        packageName = ju.f14233a.getPackageName();
                                        jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.f15758X2)).longValue();
                                        z7 = ju.f14237e;
                                        tyF.getClass();
                                        synchronized (Ty.class) {
                                            c0871Om = tyF.a(jLongValue, str, packageName, z7);
                                        }
                                    } catch (IOException | IllegalArgumentException e8) {
                                        p083k3.l.f25980A.f25987g.i("AdIdInfoSignalSource.getPaidV1", e8);
                                        c0871Om = new C0871Om(21);
                                    }
                                }
                            }
                            break;
                        } else if (ju.f14236d) {
                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15719S2)).booleanValue()) {
                                tyF = Ty.f(ju.f14233a);
                                Objects.requireNonNull(aVar);
                                str = aVar.f25695a;
                                Objects.requireNonNull(str);
                                packageName = ju.f14233a.getPackageName();
                                jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.f15758X2)).longValue();
                                z7 = ju.f14237e;
                                tyF.getClass();
                                synchronized (Ty.class) {
                                    c0871Om = tyF.a(jLongValue, str, packageName, z7);
                                }
                            }
                        }
                        return new C2262xs(aVar, null, c0871Om, 2);
                    default:
                        Ju ju2 = this.f14065b;
                        ju2.getClass();
                        p120p3.d dVar2 = C3097p.f26618f.f26619a;
                        ContentResolver contentResolver = ju2.f14233a.getContentResolver();
                        return new C2262xs(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"), new C0871Om(21), 2);
                }
            }
        };
        Executor executor = this.f14235c;
        KB kbB2 = Cw.b2(abstractC1040aCR, interfaceC2165vz, executor);
        final int i9 = 1;
        return Cw.w1((AbstractC1040aC) Cw.e2(kbB2, ((Long) c3099q.f26627c.a(Q7.f15685O0)).longValue(), TimeUnit.MILLISECONDS, this.f14234b), Throwable.class, new InterfaceC2165vz(this) { // from class: com.google.android.gms.internal.ads.Iu

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Ju f14065b;

            {
                this.f14065b = this;
            }

            /* JADX WARN: Code duplicated, block: B:14:0x0051  */
            /* JADX WARN: Code duplicated, block: B:16:0x0055  */
            /* JADX WARN: Code duplicated, block: B:32:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:34:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
            public final Object apply(Object obj) {
                Ty tyF;
                String str;
                String packageName;
                long jLongValue;
                boolean z7;
                switch (i9) {
                    case 0:
                        Ju ju = this.f14065b;
                        p075j3.a aVar = (p075j3.a) obj;
                        ju.getClass();
                        C0871Om c0871Om = new C0871Om(21);
                        if (!ju.f14236d) {
                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15711R2)).booleanValue()) {
                                tyF = Ty.f(ju.f14233a);
                                Objects.requireNonNull(aVar);
                                str = aVar.f25695a;
                                Objects.requireNonNull(str);
                                packageName = ju.f14233a.getPackageName();
                                jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.f15758X2)).longValue();
                                z7 = ju.f14237e;
                                tyF.getClass();
                                synchronized (Ty.class) {
                                    c0871Om = tyF.a(jLongValue, str, packageName, z7);
                                }
                            } else if (ju.f14236d) {
                                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15719S2)).booleanValue()) {
                                    try {
                                        tyF = Ty.f(ju.f14233a);
                                        Objects.requireNonNull(aVar);
                                        str = aVar.f25695a;
                                        Objects.requireNonNull(str);
                                        packageName = ju.f14233a.getPackageName();
                                        jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.f15758X2)).longValue();
                                        z7 = ju.f14237e;
                                        tyF.getClass();
                                        synchronized (Ty.class) {
                                            c0871Om = tyF.a(jLongValue, str, packageName, z7);
                                        }
                                    } catch (IOException | IllegalArgumentException e8) {
                                        p083k3.l.f25980A.f25987g.i("AdIdInfoSignalSource.getPaidV1", e8);
                                        c0871Om = new C0871Om(21);
                                    }
                                }
                            }
                            break;
                        } else if (ju.f14236d) {
                            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15719S2)).booleanValue()) {
                                tyF = Ty.f(ju.f14233a);
                                Objects.requireNonNull(aVar);
                                str = aVar.f25695a;
                                Objects.requireNonNull(str);
                                packageName = ju.f14233a.getPackageName();
                                jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.f15758X2)).longValue();
                                z7 = ju.f14237e;
                                tyF.getClass();
                                synchronized (Ty.class) {
                                    c0871Om = tyF.a(jLongValue, str, packageName, z7);
                                }
                            }
                        }
                        return new C2262xs(aVar, null, c0871Om, 2);
                    default:
                        Ju ju2 = this.f14065b;
                        ju2.getClass();
                        p120p3.d dVar2 = C3097p.f26618f.f26619a;
                        ContentResolver contentResolver = ju2.f14233a.getContentResolver();
                        return new C2262xs(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"), new C0871Om(21), 2);
                }
            }
        }, executor);
    }
}
