package okhttp3.internal.ws;

import Q6.j;
import Q6.s;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import okhttp3.internal.http2.Settings;
import p113o3.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class MessageInflater implements Closeable {
    private final j deflatedBytes;
    private final Inflater inflater;
    private final s inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z7) {
        this.noContextTakeover = z7;
        j jVar = new j();
        this.deflatedBytes = jVar;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new s(r.c(jVar), inflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }

    public final void inflate(j jVar) throws IOException {
        q0.h(jVar, "buffer");
        if (this.deflatedBytes.f6064H != 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.noContextTakeover) {
            this.inflater.reset();
        }
        this.deflatedBytes.H(jVar);
        this.deflatedBytes.r0(Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        long bytesRead = this.inflater.getBytesRead() + this.deflatedBytes.f6064H;
        do {
            this.inflaterSource.k(jVar, Long.MAX_VALUE);
        } while (this.inflater.getBytesRead() < bytesRead);
    }
}
