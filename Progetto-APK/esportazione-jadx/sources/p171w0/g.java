package p171w0;

import java.nio.ByteBuffer;
import p094m0.C3136t;
import p094m0.J;

/* JADX INFO: loaded from: classes.dex */
public class g extends a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public C3136t f30902G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final c f30903H = new c(0);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ByteBuffer f30904I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f30905J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f30906K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ByteBuffer f30907L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f30908M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f30909N;

    static {
        J.a("media3.decoder");
    }

    public g(int i8, int i9) {
        this.f30908M = i8;
        this.f30909N = i9;
    }

    @Override // p171w0.a
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.f30904I;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f30907L;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f30905J = false;
    }

    public final ByteBuffer e(int i8) {
        int i9 = this.f30908M;
        if (i9 == 1) {
            return ByteBuffer.allocate(i8);
        }
        if (i9 == 2) {
            return ByteBuffer.allocateDirect(i8);
        }
        ByteBuffer byteBuffer = this.f30904I;
        throw new f("Buffer too small (" + (byteBuffer == null ? 0 : byteBuffer.capacity()) + " < " + i8 + ")");
    }

    public final void f(int i8) {
        int i9 = i8 + this.f30909N;
        ByteBuffer byteBuffer = this.f30904I;
        if (byteBuffer == null) {
            this.f30904I = e(i9);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i10 = i9 + iPosition;
        if (iCapacity >= i10) {
            this.f30904I = byteBuffer;
            return;
        }
        ByteBuffer byteBufferE = e(i10);
        byteBufferE.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferE.put(byteBuffer);
        }
        this.f30904I = byteBufferE;
    }

    public final void g() {
        ByteBuffer byteBuffer = this.f30904I;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f30907L;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
