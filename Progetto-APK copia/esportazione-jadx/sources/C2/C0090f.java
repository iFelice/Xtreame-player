package C2;

/* JADX INFO: renamed from: C2.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0090f implements com.bumptech.glide.load.data.e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final byte[] f1384G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC0089e f1385H;

    public C0090f(byte[] bArr, InterfaceC0089e interfaceC0089e) {
        this.f1384G = bArr;
        this.f1385H = interfaceC0089e;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return this.f1385H.a();
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30981G;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        dVar.f(this.f1385H.A(this.f1384G));
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
