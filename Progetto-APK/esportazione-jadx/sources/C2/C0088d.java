package C2;

import D0.U;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* JADX INFO: renamed from: C2.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0088d implements D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1383a;

    public /* synthetic */ C0088d(int i8) {
        this.f1383a = i8;
    }

    @Override // C2.D
    public final C a(H h8) {
        int i8 = 0;
        switch (this.f1383a) {
            case 0:
                return new C0092h(new U(this, 29), i8);
            case 1:
                return new C0092h(new C0091g(this, i8), i8);
            case 2:
                return new C0094j(0);
            case 3:
                return new J(h8.c(Uri.class, AssetFileDescriptor.class), 0);
            case 4:
                return new J(h8.c(Uri.class, ParcelFileDescriptor.class), 0);
            case 5:
                return new J(h8.c(Uri.class, InputStream.class), 0);
            case 6:
                return new P(h8.c(t.class, InputStream.class));
            default:
                return new J(h8.c(t.class, InputStream.class), 1);
        }
    }
}
