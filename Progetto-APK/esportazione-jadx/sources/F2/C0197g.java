package F2;

import android.graphics.ImageDecoder;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: F2.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0197g implements p173w2.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0193c f3138b;

    public C0197g(int i8) {
        this.f3137a = i8;
        if (i8 != 1) {
            this.f3138b = new C0193c();
        } else {
            this.f3138b = new C0193c();
        }
    }

    @Override // p173w2.n
    public final /* bridge */ /* synthetic */ boolean a(Object obj, p173w2.l lVar) {
        switch (this.f3137a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }

    @Override // p173w2.n
    public final y2.D b(Object obj, int i8, int i9, p173w2.l lVar) {
        int i10 = this.f3137a;
        C0193c c0193c = this.f3138b;
        switch (i10) {
            case 0:
                return c0193c.c(ImageDecoder.createSource((ByteBuffer) obj), i8, i9, lVar);
            default:
                return c0193c.c(ImageDecoder.createSource(P2.c.b((InputStream) obj)), i8, i9, lVar);
        }
    }
}
