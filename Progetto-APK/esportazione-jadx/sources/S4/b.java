package S4;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class b extends OutputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public long f6436G;

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i8, int i9) {
        int i10;
        if (i8 < 0 || i8 > bArr.length || i9 < 0 || (i10 = i8 + i9) > bArr.length || i10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f6436G += (long) i9;
    }

    @Override // java.io.OutputStream
    public final void write(int i8) {
        this.f6436G++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f6436G += (long) bArr.length;
    }
}
