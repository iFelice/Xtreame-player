package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Q2 implements InterfaceC1031a3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final F2 f15546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1286f0 f15547b = new C1286f0(new byte[10], 10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15548c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f15549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Ys f15550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f15551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f15552g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f15553h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15554i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15555j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f15556k;

    public Q2(F2 f8) {
        this.f15546a = f8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1031a3
    public final void a(Ys ys, N n7, A1.I i8) {
        this.f15550e = ys;
        this.f15546a.c(n7, i8);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 4911. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.google.android.gms.internal.ads.InterfaceC1031a3
    public final void b(int r22, com.google.android.gms.internal.ads.C1534jr r23) {
        /*
            Method dump skipped, instruction units count: 491
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.Q2.b(int, com.google.android.gms.internal.ads.jr):void");
    }

    public final boolean c(C1534jr c1534jr, byte[] bArr, int i8) {
        int iMin = Math.min(c1534jr.o(), i8 - this.f15549d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            c1534jr.k(iMin);
        } else {
            c1534jr.f(this.f15549d, bArr, iMin);
        }
        int i9 = this.f15549d + iMin;
        this.f15549d = i9;
        return i9 == i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1031a3
    public final void zzc() {
        this.f15548c = 0;
        this.f15549d = 0;
        this.f15553h = false;
        this.f15546a.zze();
    }
}
