package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2919l extends AbstractC2923m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f24465G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f24466H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ r f24467I;

    public C2919l(r rVar) {
        this.f24467I = rVar;
        this.f24466H = rVar.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f24465G < this.f24466H;
    }
}
