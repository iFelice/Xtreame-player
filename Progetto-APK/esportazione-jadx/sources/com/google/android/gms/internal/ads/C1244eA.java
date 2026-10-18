package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1244eA extends AbstractC1400hA {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ int f18487L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ C1502jA f18488M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1244eA(C1502jA c1502jA, int i8) {
        super(c1502jA);
        this.f18487L = i8;
        this.f18488M = c1502jA;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1400hA
    public final Object b(int i8) {
        int i9 = this.f18487L;
        C1502jA c1502jA = this.f18488M;
        switch (i9) {
            case 0:
                Object obj = C1502jA.f19434P;
                return c1502jA.b()[i8];
            case 1:
                return new C1452iA(c1502jA, i8);
            default:
                Object obj2 = C1502jA.f19434P;
                return c1502jA.c()[i8];
        }
    }
}
