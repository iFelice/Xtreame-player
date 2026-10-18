package C2;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: C2.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0093i implements com.bumptech.glide.load.data.e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1390G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f1391H;

    public /* synthetic */ C0093i(Object obj, int i8) {
        this.f1390G = i8;
        this.f1391H = obj;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f1390G) {
            case 0:
                return ByteBuffer.class;
            default:
                return this.f1391H.getClass();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30981G;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        int i8 = this.f1390G;
        Object obj = this.f1391H;
        switch (i8) {
            case 0:
                try {
                    dVar.f(P2.c.a((File) obj));
                } catch (IOException e8) {
                    if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                        Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e8);
                    }
                    dVar.b(e8);
                    return;
                }
                break;
            default:
                dVar.f(obj);
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
