package C2;

import android.content.res.AssetManager;

/* JADX INFO: renamed from: C2.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0086b implements D, InterfaceC0085a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetManager f1380b;

    public /* synthetic */ C0086b(AssetManager assetManager, int i8) {
        this.f1379a = i8;
        this.f1380b = assetManager;
    }

    @Override // C2.D
    public final C a(H h8) {
        int i8 = this.f1379a;
        AssetManager assetManager = this.f1380b;
        switch (i8) {
            case 0:
                break;
        }
        return new C0087c(assetManager, this);
    }
}
