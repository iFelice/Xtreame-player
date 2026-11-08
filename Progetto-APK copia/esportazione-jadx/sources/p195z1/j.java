package p195z1;

import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p110o0.a;
import p110o0.b;
import p117p0.M;
import p126q1.d;

/* JADX INFO: loaded from: classes.dex */
public final class j implements d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f31750G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long[] f31751H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long[] f31752I;

    public j(ArrayList arrayList) {
        this.f31750G = Collections.unmodifiableList(new ArrayList(arrayList));
        this.f31751H = new long[arrayList.size() * 2];
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            c cVar = (c) arrayList.get(i8);
            int i9 = i8 * 2;
            long[] jArr = this.f31751H;
            jArr[i9] = cVar.f31723b;
            jArr[i9 + 1] = cVar.f31724c;
        }
        long[] jArr2 = this.f31751H;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f31752I = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    @Override // p126q1.d
    public final int a(long j8) {
        long[] jArr = this.f31752I;
        int iA = M.a(jArr, j8, false);
        if (iA < jArr.length) {
            return iA;
        }
        return -1;
    }

    @Override // p126q1.d
    public final long b(int i8) {
        H1.d(i8 >= 0);
        long[] jArr = this.f31752I;
        H1.d(i8 < jArr.length);
        return jArr[i8];
    }

    @Override // p126q1.d
    public final List c(long j8) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i8 = 0;
        while (true) {
            List list = this.f31750G;
            if (i8 >= list.size()) {
                break;
            }
            int i9 = i8 * 2;
            long[] jArr = this.f31751H;
            if (jArr[i9] <= j8 && j8 < jArr[i9 + 1]) {
                c cVar = (c) list.get(i8);
                b bVar = cVar.f31722a;
                if (bVar.f27639e == -3.4028235E38f) {
                    arrayList2.add(cVar);
                } else {
                    arrayList.add(bVar);
                }
            }
            i8++;
        }
        Collections.sort(arrayList2, new K.b(20));
        for (int i10 = 0; i10 < arrayList2.size(); i10++) {
            a aVarA = ((c) arrayList2.get(i10)).f31722a.a();
            aVarA.f27601e = (-1) - i10;
            aVarA.f27602f = 1;
            arrayList.add(aVarA.a());
        }
        return arrayList;
    }

    @Override // p126q1.d
    public final int d() {
        return this.f31752I.length;
    }
}
