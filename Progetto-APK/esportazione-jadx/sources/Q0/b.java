package Q0;

import java.nio.ByteBuffer;
import p126q1.i;
import p126q1.j;
import p126q1.m;
import p171w0.k;

/* JADX INFO: loaded from: classes.dex */
public final class b extends k implements p126q1.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f6006b;

    public b(String str, m mVar) {
        super(new i[2], new j[2]);
        this.f6005a = str;
        setInitialInputBufferSize(1024);
        this.f6006b = mVar;
    }

    @Override // p171w0.k
    public final p171w0.g createInputBuffer() {
        return new i();
    }

    @Override // p171w0.k
    public final p171w0.i createOutputBuffer() {
        return new p126q1.c(this);
    }

    @Override // p171w0.k
    public final p171w0.e createUnexpectedDecodeException(Throwable th) {
        return new p126q1.f("Unexpected decode error", th);
    }

    @Override // p171w0.k
    public final p171w0.e decode(p171w0.g gVar, p171w0.i iVar, boolean z7) {
        i iVar2 = (i) gVar;
        j jVar = (j) iVar;
        try {
            ByteBuffer byteBuffer = iVar2.f30904I;
            byteBuffer.getClass();
            byte[] bArrArray = byteBuffer.array();
            int iLimit = byteBuffer.limit();
            m mVar = this.f6006b;
            if (z7) {
                mVar.a();
            }
            p126q1.d dVarC = mVar.c(0, bArrArray, iLimit);
            long j8 = iVar2.f30906K;
            long j9 = iVar2.f29552O;
            jVar.timeUs = j8;
            jVar.f29553G = dVarC;
            if (j9 != Long.MAX_VALUE) {
                j8 = j9;
            }
            jVar.f29554H = j8;
            jVar.shouldBeSkipped = false;
            return null;
        } catch (p126q1.f e8) {
            return e8;
        }
    }

    @Override // p171w0.d
    public final String getName() {
        return this.f6005a;
    }

    @Override // p126q1.e
    public final /* bridge */ /* synthetic */ void a(long j8) {
    }
}
