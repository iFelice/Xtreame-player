package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2897f1 implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC2937p1 f24425G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f24426H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final S2 f24427I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f24428J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f24429K;

    public C2897f1(InterfaceC2937p1 interfaceC2937p1, int i8, S2 s7, boolean z7, boolean z8) {
        this.f24425G = interfaceC2937p1;
        this.f24426H = i8;
        this.f24427I = s7;
        this.f24428J = z7;
        this.f24429K = z8;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f24426H - ((C2897f1) obj).f24426H;
    }
}
