package C2;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class I implements D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f1368b;

    public /* synthetic */ I(Resources resources, int i8) {
        this.f1367a = i8;
        this.f1368b = resources;
    }

    @Override // C2.D
    public final C a(H h8) {
        int i8 = this.f1367a;
        Resources resources = this.f1368b;
        switch (i8) {
            case 0:
                return new C0100p(resources, h8.c(Uri.class, AssetFileDescriptor.class));
            case 1:
                return new C0100p(resources, h8.c(Uri.class, InputStream.class));
            default:
                return new C0100p(resources, L.f1372a);
        }
    }
}
