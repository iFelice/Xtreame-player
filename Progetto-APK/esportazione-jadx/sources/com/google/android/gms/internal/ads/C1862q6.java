package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.q6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1862q6 extends C2040te {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f20532H = 0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f20533I;

    public C1862q6(C2222x3 c2222x3) {
        this.f20533I = c2222x3;
    }

    @Override // com.google.android.gms.internal.ads.C2040te, java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        int i8 = this.f20532H;
        C1816pC c1816pC = this.f21082G;
        switch (i8) {
            case 0:
                C2222x3.d((C2222x3) this.f20533I);
                break;
        }
        return c1816pC.cancel(z7);
    }

    public final void d() {
        b(this.f20533I);
    }

    public C1862q6(Object obj) {
        this.f20533I = obj;
    }
}
