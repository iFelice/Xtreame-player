package p094m0;

import android.net.Uri;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.util.Arrays;
import p117p0.M;

/* JADX INFO: renamed from: m0.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3119b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Uri[] f26808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final I[] f26809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f26810f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long[] f26811g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String[] f26812h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f26813i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f26814j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f26815k;

    static {
        U2.r(0, 1, 2, 3, 4);
        U2.r(5, 6, 7, 8, 9);
        M.L(10);
    }

    public C3119b(long j8, int i8, int i9, int[] iArr, I[] iArr2, long[] jArr, long j9, boolean z7, String[] strArr, boolean z8) {
        Uri uri;
        int i10 = 0;
        H1.d(iArr.length == iArr2.length);
        this.f26805a = j8;
        this.f26806b = i8;
        this.f26807c = i9;
        this.f26810f = iArr;
        this.f26809e = iArr2;
        this.f26811g = jArr;
        this.f26813i = j9;
        this.f26814j = z7;
        this.f26808d = new Uri[iArr2.length];
        while (true) {
            Uri[] uriArr = this.f26808d;
            if (i10 >= uriArr.length) {
                this.f26812h = strArr;
                this.f26815k = z8;
                return;
            }
            I i11 = iArr2[i10];
            if (i11 == null) {
                uri = null;
            } else {
                E e8 = i11.f26702b;
                e8.getClass();
                uri = e8.f26675a;
            }
            uriArr[i10] = uri;
            i10++;
        }
    }

    public final int a(int i8) {
        int i9;
        int i10 = i8 + 1;
        while (true) {
            int[] iArr = this.f26810f;
            if (i10 >= iArr.length || this.f26814j || (i9 = iArr[i10]) == 0 || i9 == 1) {
                break;
            }
            i10++;
        }
        return i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3119b.class != obj.getClass()) {
            return false;
        }
        C3119b c3119b = (C3119b) obj;
        return this.f26805a == c3119b.f26805a && this.f26806b == c3119b.f26806b && this.f26807c == c3119b.f26807c && Arrays.equals(this.f26809e, c3119b.f26809e) && Arrays.equals(this.f26810f, c3119b.f26810f) && Arrays.equals(this.f26811g, c3119b.f26811g) && this.f26813i == c3119b.f26813i && this.f26814j == c3119b.f26814j && Arrays.equals(this.f26812h, c3119b.f26812h) && this.f26815k == c3119b.f26815k;
    }

    public final int hashCode() {
        int i8 = ((this.f26806b * 31) + this.f26807c) * 31;
        long j8 = this.f26805a;
        int iHashCode = (Arrays.hashCode(this.f26811g) + ((Arrays.hashCode(this.f26810f) + ((Arrays.hashCode(this.f26809e) + ((i8 + ((int) (j8 ^ (j8 >>> 32)))) * 31)) * 31)) * 31)) * 31;
        long j9 = this.f26813i;
        return ((((((iHashCode + ((int) ((j9 >>> 32) ^ j9))) * 31) + (this.f26814j ? 1 : 0)) * 31) + Arrays.hashCode(this.f26812h)) * 31) + (this.f26815k ? 1 : 0);
    }
}
