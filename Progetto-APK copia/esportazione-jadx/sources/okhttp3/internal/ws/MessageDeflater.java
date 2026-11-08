package okhttp3.internal.ws;

import Q6.AbstractC0329b;
import Q6.h;
import Q6.j;
import Q6.m;
import Q6.n;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class MessageDeflater implements Closeable {
    private final j deflatedBytes;
    private final Deflater deflater;
    private final n deflaterSink;
    private final boolean noContextTakeover;

    public MessageDeflater(boolean z7) {
        this.noContextTakeover = z7;
        j jVar = new j();
        this.deflatedBytes = jVar;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new n(jVar, deflater);
    }

    private final boolean endsWith(j jVar, m mVar) {
        return jVar.s(jVar.f6064H - ((long) mVar.c()), mVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        this.deflaterSink.close();
    }

    public final void deflate(j jVar) throws IOException {
        q0.h(jVar, "buffer");
        if (this.deflatedBytes.f6064H != 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.noContextTakeover) {
            this.deflater.reset();
        }
        this.deflaterSink.write(jVar, jVar.f6064H);
        this.deflaterSink.flush();
        if (endsWith(this.deflatedBytes, MessageDeflaterKt.EMPTY_DEFLATE_BLOCK)) {
            j jVar2 = this.deflatedBytes;
            long j8 = jVar2.f6064H - ((long) 4);
            h hVarE0 = jVar2.e0(AbstractC0329b.f6047a);
            try {
                hVarE0.k(j8);
                q0.k(hVarE0, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    q0.k(hVarE0, th);
                    throw th2;
                }
            }
        } else {
            this.deflatedBytes.o0(0);
        }
        j jVar3 = this.deflatedBytes;
        jVar.write(jVar3, jVar3.f6064H);
    }
}
