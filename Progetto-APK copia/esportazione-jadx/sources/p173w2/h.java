package p173w2;

import F2.j;
import F2.k;
import com.bumptech.glide.load.data.g;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class h implements k, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteBuffer f30993a;

    @Override // com.bumptech.glide.load.data.g
    public final Object a() {
        ByteBuffer byteBuffer = this.f30993a;
        byteBuffer.position(0);
        return byteBuffer;
    }

    @Override // F2.k
    public final long b(long j8) {
        ByteBuffer byteBuffer = this.f30993a;
        int iMin = (int) Math.min(byteBuffer.remaining(), j8);
        byteBuffer.position(byteBuffer.position() + iMin);
        return iMin;
    }

    @Override // F2.k
    public final int d() {
        return (e() << 8) | e();
    }

    @Override // F2.k
    public final short e() throws j {
        ByteBuffer byteBuffer = this.f30993a;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & 255);
        }
        throw new j();
    }

    @Override // F2.k
    public final int f(int i8, byte[] bArr) {
        ByteBuffer byteBuffer = this.f30993a;
        int iMin = Math.min(i8, byteBuffer.remaining());
        if (iMin == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, iMin);
        return iMin;
    }

    public final short g(int i8) {
        ByteBuffer byteBuffer = this.f30993a;
        if (byteBuffer.remaining() - i8 >= 2) {
            return byteBuffer.getShort(i8);
        }
        return (short) -1;
    }

    public h(byte[] bArr, int i8) {
        this.f30993a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i8);
    }

    public h(ByteBuffer byteBuffer) {
        this.f30993a = byteBuffer;
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
    }

    @Override // com.bumptech.glide.load.data.g
    public final void c() {
    }
}
