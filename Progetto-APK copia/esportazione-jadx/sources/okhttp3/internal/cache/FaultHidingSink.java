package okhttp3.internal.cache;

import C6.l;
import Q6.B;
import Q6.j;
import Q6.o;
import java.io.EOFException;
import java.io.IOException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class FaultHidingSink extends o {
    private boolean hasErrors;
    private final l onException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaultHidingSink(B b8, l lVar) {
        super(b8);
        q0.h(b8, "delegate");
        q0.h(lVar, "onException");
        this.onException = lVar;
    }

    @Override // Q6.o, Q6.B, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e8) {
            this.hasErrors = true;
            this.onException.invoke(e8);
        }
    }

    @Override // Q6.o, Q6.B, java.io.Flushable
    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e8) {
            this.hasErrors = true;
            this.onException.invoke(e8);
        }
    }

    public final l getOnException() {
        return this.onException;
    }

    @Override // Q6.o, Q6.B
    public void write(j jVar, long j8) throws EOFException {
        q0.h(jVar, "source");
        if (this.hasErrors) {
            jVar.b(j8);
            return;
        }
        try {
            super.write(jVar, j8);
        } catch (IOException e8) {
            this.hasErrors = true;
            this.onException.invoke(e8);
        }
    }
}
