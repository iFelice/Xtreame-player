package F6;

import java.util.Iterator;
import p190y4.k;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Iterable, E6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f3265G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f3266H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f3267I;

    public a(int i8, int i9, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i10 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f3265G = i8;
        this.f3266H = k.I(i8, i9, i10);
        this.f3267I = i10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            if (!isEmpty() || !((a) obj).isEmpty()) {
                a aVar = (a) obj;
                if (this.f3265G != aVar.f3265G || this.f3266H != aVar.f3266H || this.f3267I != aVar.f3267I) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f3265G * 31) + this.f3266H) * 31) + this.f3267I;
    }

    public boolean isEmpty() {
        int i8 = this.f3267I;
        int i9 = this.f3266H;
        int i10 = this.f3265G;
        if (i8 > 0) {
            if (i10 <= i9) {
                return false;
            }
        } else if (i10 >= i9) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new b(this.f3265G, this.f3266H, this.f3267I);
    }

    public String toString() {
        StringBuilder sb;
        int i8 = this.f3266H;
        int i9 = this.f3265G;
        int i10 = this.f3267I;
        if (i10 > 0) {
            sb = new StringBuilder();
            sb.append(i9);
            sb.append("..");
            sb.append(i8);
            sb.append(" step ");
            sb.append(i10);
        } else {
            sb = new StringBuilder();
            sb.append(i9);
            sb.append(" downTo ");
            sb.append(i8);
            sb.append(" step ");
            sb.append(-i10);
        }
        return sb.toString();
    }
}
