package C4;

import java.io.Serializable;
import okhttp3.HttpUrl;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Serializable {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final a f1627I = new a(new int[0]);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int[] f1628G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f1629H;

    public a(int[] iArr) {
        int length = iArr.length;
        this.f1628G = iArr;
        this.f1629H = length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int i8 = aVar.f1629H;
        int i9 = this.f1629H;
        if (i9 != i8) {
            return false;
        }
        for (int i10 = 0; i10 < i9; i10++) {
            k.r(i10, i9);
            int i11 = this.f1628G[i10];
            k.r(i10, aVar.f1629H);
            if (i11 != aVar.f1628G[i10]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i8 = 1;
        for (int i9 = 0; i9 < this.f1629H; i9++) {
            i8 = (i8 * 31) + this.f1628G[i9];
        }
        return i8;
    }

    public final String toString() {
        int i8 = this.f1629H;
        if (i8 == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(i8 * 5);
        sb.append('[');
        int[] iArr = this.f1628G;
        sb.append(iArr[0]);
        for (int i9 = 1; i9 < i8; i9++) {
            sb.append(", ");
            sb.append(iArr[i9]);
        }
        sb.append(']');
        return sb.toString();
    }
}
