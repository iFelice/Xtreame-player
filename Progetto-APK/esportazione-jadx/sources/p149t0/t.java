package p149t0;

import com.google.android.gms.internal.measurement.H1;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class t extends BufferedOutputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f30239G;

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        this.f30239G = true;
        flush();
        th = null;
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        if (th == null) {
            return;
        }
        String str = M.f28050a;
        throw th;
    }

    public final void k(OutputStream outputStream) {
        H1.i(this.f30239G);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f30239G = false;
    }
}
