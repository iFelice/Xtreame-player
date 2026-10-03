package p151t2;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public final class e extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ f f30290G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar, int i8) {
        super(i8);
        this.f30290G = fVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public final String toString() {
        int i8 = ((ByteArrayOutputStream) this).count;
        if (i8 > 0 && ((ByteArrayOutputStream) this).buf[i8 - 1] == 13) {
            i8--;
        }
        try {
            return new String(((ByteArrayOutputStream) this).buf, 0, i8, this.f30290G.f30292H.name());
        } catch (UnsupportedEncodingException e8) {
            throw new AssertionError(e8);
        }
    }
}
