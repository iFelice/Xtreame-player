package C2;

import android.content.res.AssetManager;
import android.net.Uri;

/* JADX INFO: renamed from: C2.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0087c implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetManager f1381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC0085a f1382b;

    public C0087c(AssetManager assetManager, InterfaceC0085a interfaceC0085a) {
        this.f1381a = assetManager;
        this.f1382b = interfaceC0085a;
    }

    @Override // C2.C
    public final boolean a(Object obj) {
        Uri uri = (Uri) obj;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, p173w2.l lVar) {
        com.bumptech.glide.load.data.k kVar;
        Uri uri = (Uri) obj;
        String strSubstring = uri.toString().substring(22);
        O2.d dVar = new O2.d(uri);
        int i10 = ((C0086b) this.f1382b).f1379a;
        AssetManager assetManager = this.f1381a;
        switch (i10) {
            case 0:
                kVar = new com.bumptech.glide.load.data.k(assetManager, strSubstring, 0);
                break;
            default:
                kVar = new com.bumptech.glide.load.data.k(assetManager, strSubstring, 1);
                break;
        }
        return new B(dVar, kVar);
    }
}
