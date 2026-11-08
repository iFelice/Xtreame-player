package A1;

import java.util.Arrays;

/* JADX INFO: renamed from: A1.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0036k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f411e = {0, 0, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f415d;

    public final void a(int i8, byte[] bArr, int i9) {
        if (this.f412a) {
            int i10 = i9 - i8;
            byte[] bArr2 = this.f415d;
            int length = bArr2.length;
            int i11 = this.f413b;
            if (length < i11 + i10) {
                this.f415d = Arrays.copyOf(bArr2, (i11 + i10) * 2);
            }
            System.arraycopy(bArr, i8, this.f415d, this.f413b, i10);
            this.f413b += i10;
        }
    }
}
