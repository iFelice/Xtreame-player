package Q0;

import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import p190y4.k;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f6009a = new ArrayList();

    @Override // Q0.a
    public final long a(long j8) {
        ArrayList arrayList = this.f6009a;
        if (arrayList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j8 < ((p126q1.a) arrayList.get(0)).f29532b) {
            return ((p126q1.a) arrayList.get(0)).f29532b;
        }
        for (int i8 = 1; i8 < arrayList.size(); i8++) {
            p126q1.a aVar = (p126q1.a) arrayList.get(i8);
            if (j8 < aVar.f29532b) {
                long j9 = ((p126q1.a) arrayList.get(i8 - 1)).f29534d;
                long j10 = aVar.f29532b;
                return (j9 == -9223372036854775807L || j9 <= j8 || j9 >= j10) ? j10 : j9;
            }
        }
        long j11 = ((p126q1.a) k.G(arrayList)).f29534d;
        if (j11 == -9223372036854775807L || j8 >= j11) {
            return Long.MIN_VALUE;
        }
        return j11;
    }

    @Override // Q0.a
    public final H b(long j8) {
        int iF = f(j8);
        if (iF == 0) {
            F f8 = H.f31804H;
            return d0.f31844K;
        }
        p126q1.a aVar = (p126q1.a) this.f6009a.get(iF - 1);
        long j9 = aVar.f29534d;
        if (j9 == -9223372036854775807L || j8 < j9) {
            return aVar.f29531a;
        }
        F f9 = H.f31804H;
        return d0.f31844K;
    }

    @Override // Q0.a
    public final long c(long j8) {
        ArrayList arrayList = this.f6009a;
        if (arrayList.isEmpty() || j8 < ((p126q1.a) arrayList.get(0)).f29532b) {
            return -9223372036854775807L;
        }
        for (int i8 = 1; i8 < arrayList.size(); i8++) {
            long j9 = ((p126q1.a) arrayList.get(i8)).f29532b;
            if (j8 == j9) {
                return j9;
            }
            if (j8 < j9) {
                p126q1.a aVar = (p126q1.a) arrayList.get(i8 - 1);
                long j10 = aVar.f29534d;
                return (j10 == -9223372036854775807L || j10 > j8) ? aVar.f29532b : j10;
            }
        }
        p126q1.a aVar2 = (p126q1.a) k.G(arrayList);
        long j11 = aVar2.f29534d;
        return (j11 == -9223372036854775807L || j8 < j11) ? aVar2.f29532b : j11;
    }

    @Override // Q0.a
    public final void clear() {
        this.f6009a.clear();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    @Override // Q0.a
    public final boolean d(p126q1.a aVar, long j8) {
        boolean z7;
        long j9 = aVar.f29532b;
        H1.d(j9 != -9223372036854775807L);
        if (j9 <= j8) {
            long j10 = aVar.f29534d;
            if (j10 == -9223372036854775807L || j8 < j10) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = false;
        }
        ArrayList arrayList = this.f6009a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (j9 >= ((p126q1.a) arrayList.get(size)).f29532b) {
                arrayList.add(size + 1, aVar);
                return z7;
            }
            if (((p126q1.a) arrayList.get(size)).f29532b <= j8) {
                z7 = false;
            }
        }
        arrayList.add(0, aVar);
        return z7;
    }

    @Override // Q0.a
    public final void e(long j8) {
        int iF = f(j8);
        if (iF == 0) {
            return;
        }
        ArrayList arrayList = this.f6009a;
        long j9 = ((p126q1.a) arrayList.get(iF - 1)).f29534d;
        if (j9 == -9223372036854775807L || j9 >= j8) {
            iF--;
        }
        arrayList.subList(0, iF).clear();
    }

    public final int f(long j8) {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f6009a;
            if (i8 >= arrayList.size()) {
                return arrayList.size();
            }
            if (j8 < ((p126q1.a) arrayList.get(i8)).f29532b) {
                return i8;
            }
            i8++;
        }
    }
}
