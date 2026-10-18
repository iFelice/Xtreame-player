package p117p0;

import N.N;
import android.view.View;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.InterfaceC1857q1;
import com.google.android.gms.internal.measurement.H1;
import java.util.NoSuchElementException;
import p111o1.d;

/* JADX INFO: loaded from: classes.dex */
public final class z implements d, InterfaceC1857q1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f28129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f28130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f28131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f28132d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f28133e;

    public z(int i8) {
        H1.d(i8 >= 0 && i8 <= 1073741824);
        i8 = i8 == 0 ? 1 : i8;
        i8 = Integer.bitCount(i8) != 1 ? Integer.highestOneBit(i8 - 1) << 1 : i8;
        this.f28129a = 0;
        this.f28130b = -1;
        this.f28131c = 0;
        this.f28133e = new long[i8];
        this.f28132d = i8 - 1;
    }

    @Override // p111o1.d
    public final int a() {
        return -1;
    }

    @Override // p111o1.d
    public final int b() {
        return this.f28129a;
    }

    @Override // p111o1.d
    public final int c() {
        int i8 = this.f28130b;
        if (i8 == 8) {
            return ((E) this.f28133e).z();
        }
        if (i8 == 16) {
            return ((E) this.f28133e).F();
        }
        int i9 = this.f28131c;
        this.f28131c = i9 + 1;
        if (i9 % 2 != 0) {
            return this.f28132d & 15;
        }
        int iZ = ((E) this.f28133e).z();
        this.f28132d = iZ;
        return (iZ & 240) >> 4;
    }

    public final void d(long j8) {
        int i8 = this.f28131c;
        Object obj = this.f28133e;
        if (i8 == ((long[]) obj).length) {
            long[] jArr = (long[]) obj;
            int length = jArr.length << 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
            long[] jArr2 = new long[length];
            int length2 = jArr.length;
            int i9 = this.f28129a;
            int i10 = length2 - i9;
            System.arraycopy(jArr, i9, jArr2, 0, i10);
            System.arraycopy((long[]) this.f28133e, 0, jArr2, i10, i9);
            this.f28129a = 0;
            this.f28130b = this.f28131c - 1;
            this.f28133e = jArr2;
            this.f28132d = length - 1;
        }
        int i11 = (this.f28130b + 1) & this.f28132d;
        this.f28130b = i11;
        ((long[]) this.f28133e)[i11] = j8;
        this.f28131c++;
    }

    public final long e() {
        int i8 = this.f28131c;
        if (i8 == 0) {
            throw new NoSuchElementException();
        }
        long[] jArr = (long[]) this.f28133e;
        int i9 = this.f28129a;
        long j8 = jArr[i9];
        this.f28129a = this.f28132d & (i9 + 1);
        this.f28131c = i8 - 1;
        return j8;
    }

    public final void f() {
        Object obj = this.f28133e;
        N.i((View) obj, this.f28131c - (((View) obj).getTop() - this.f28129a));
        Object obj2 = this.f28133e;
        N.h((View) obj2, this.f28132d - (((View) obj2).getLeft() - this.f28130b));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1857q1
    public final int zza() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1857q1
    public final int zzb() {
        return this.f28129a;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1857q1
    public final int zzc() {
        int i8 = this.f28130b;
        if (i8 == 8) {
            return ((C1534jr) this.f28133e).w();
        }
        if (i8 == 16) {
            return ((C1534jr) this.f28133e).A();
        }
        int i9 = this.f28131c;
        this.f28131c = i9 + 1;
        if (i9 % 2 != 0) {
            return this.f28132d & 15;
        }
        int iW = ((C1534jr) this.f28133e).w();
        this.f28132d = iW;
        return (iW & 240) >> 4;
    }
}
