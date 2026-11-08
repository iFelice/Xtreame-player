package p143s2;

import B.f;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f f30062e = new f(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f30063a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f30064b = new ArrayList(64);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30065c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f30066d = 4096;

    public final synchronized byte[] a(int i8) {
        for (int i9 = 0; i9 < this.f30064b.size(); i9++) {
            byte[] bArr = (byte[]) this.f30064b.get(i9);
            if (bArr.length >= i8) {
                this.f30065c -= bArr.length;
                this.f30064b.remove(i9);
                this.f30063a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i8];
    }

    public final synchronized void b(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f30066d) {
                this.f30063a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f30064b, bArr, f30062e);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f30064b.add(iBinarySearch, bArr);
                this.f30065c += bArr.length;
                c();
            }
        }
    }

    public final synchronized void c() {
        while (this.f30065c > this.f30066d) {
            byte[] bArr = (byte[]) this.f30063a.remove(0);
            this.f30064b.remove(bArr);
            this.f30065c -= bArr.length;
        }
    }
}
