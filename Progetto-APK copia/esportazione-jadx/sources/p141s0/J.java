package p141s0;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class J implements InterfaceC3184i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final J f29901a = new J();

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return null;
    }

    @Override // p141s0.InterfaceC3184i
    public final Map k() {
        return Collections.emptyMap();
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
    }

    @Override // p141s0.InterfaceC3184i
    public final void p(O o4) {
    }
}
