package p023c6;

import Q6.D;
import Q6.G;
import Q6.j;
import Q6.l;
import Q6.x;
import com.google.android.gms.common.api.d;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final l f11460G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f11461H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public byte f11462I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f11463J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f11464K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public short f11465L;

    public f(x xVar) {
        this.f11460G = xVar;
    }

    @Override // Q6.D
    public final long read(j jVar, long j8) throws IOException {
        int i8;
        int i9;
        do {
            int i10 = this.f11464K;
            l lVar = this.f11460G;
            if (i10 != 0) {
                long j9 = lVar.read(jVar, Math.min(j8, i10));
                if (j9 == -1) {
                    return -1L;
                }
                this.f11464K -= (int) j9;
                return j9;
            }
            lVar.b(this.f11465L);
            this.f11465L = (short) 0;
            if ((this.f11462I & 4) != 0) {
                return -1L;
            }
            i8 = this.f11463J;
            int iA = i.a(lVar);
            this.f11464K = iA;
            this.f11461H = iA;
            byte b8 = (byte) (lVar.readByte() & 255);
            this.f11462I = (byte) (lVar.readByte() & 255);
            Logger logger = i.f11472a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(g.a(true, this.f11463J, this.f11461H, b8, this.f11462I));
            }
            i9 = lVar.readInt() & d.API_PRIORITY_OTHER;
            this.f11463J = i9;
            if (b8 != 9) {
                i.c("%s != TYPE_CONTINUATION", Byte.valueOf(b8));
                throw null;
            }
        } while (i9 == i8);
        i.c("TYPE_CONTINUATION streamId changed", new Object[0]);
        throw null;
    }

    @Override // Q6.D
    public final G timeout() {
        return this.f11460G.timeout();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
