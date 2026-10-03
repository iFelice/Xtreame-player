package A1;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f434f = {0, 0, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f439e;

    public final void a(int i8, byte[] bArr, int i9) {
        if (this.f435a) {
            int i10 = i9 - i8;
            byte[] bArr2 = this.f439e;
            int length = bArr2.length;
            int i11 = this.f437c;
            if (length < i11 + i10) {
                this.f439e = Arrays.copyOf(bArr2, (i11 + i10) * 2);
            }
            System.arraycopy(bArr, i8, this.f439e, this.f437c, i10);
            this.f437c += i10;
        }
    }
}
