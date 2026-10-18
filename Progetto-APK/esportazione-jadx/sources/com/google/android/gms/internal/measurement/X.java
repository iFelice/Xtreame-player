package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class X extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f23035K = 1;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ String f23036L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ String f23037M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ boolean f23038N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f23039O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final /* synthetic */ Object f23040P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X(C2598m0 c2598m0, String str, String str2, boolean z7, H h8) {
        super(c2598m0, true);
        this.f23036L = str;
        this.f23037M = str2;
        this.f23038N = z7;
        this.f23040P = h8;
        this.f23039O = c2598m0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        switch (this.f23035K) {
            case 0:
                K k8 = this.f23039O.f23206f;
                com.bumptech.glide.c.h(k8);
                k8.setUserProperty(this.f23036L, this.f23037M, new R3.b(this.f23040P), this.f23038N, this.f23160G);
                break;
            default:
                K k9 = this.f23039O.f23206f;
                com.bumptech.glide.c.h(k9);
                k9.getUserProperties(this.f23036L, this.f23037M, this.f23038N, (H) this.f23040P);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void b() {
        switch (this.f23035K) {
            case 1:
                ((H) this.f23040P).V0(null);
                break;
        }
    }
}
