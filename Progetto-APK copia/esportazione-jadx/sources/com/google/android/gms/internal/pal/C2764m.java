package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2764m extends AbstractC2780o {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f23949G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f23950H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ r f23951I;

    public C2764m(r rVar) {
        this.f23951I = rVar;
        this.f23950H = rVar.i();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23949G < this.f23950H;
    }
}
