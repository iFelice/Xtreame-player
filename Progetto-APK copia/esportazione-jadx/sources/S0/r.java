package S0;

import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final K.b f6378h = new K.b(15);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final K.b f6379i = new K.b(16);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6380a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6384e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6385f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6386g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q[] f6382c = new q[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f6381b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6383d = -1;

    public r(int i8) {
        this.f6380a = i8;
    }

    public final void a(int i8, float f8) {
        q qVar;
        int i9 = this.f6383d;
        ArrayList arrayList = this.f6381b;
        if (i9 != 1) {
            Collections.sort(arrayList, f6378h);
            this.f6383d = 1;
        }
        int i10 = this.f6386g;
        q[] qVarArr = this.f6382c;
        if (i10 > 0) {
            int i11 = i10 - 1;
            this.f6386g = i11;
            qVar = qVarArr[i11];
        } else {
            qVar = new q();
        }
        int i12 = this.f6384e;
        this.f6384e = i12 + 1;
        qVar.f6375a = i12;
        qVar.f6376b = i8;
        qVar.f6377c = f8;
        arrayList.add(qVar);
        this.f6385f += i8;
        while (true) {
            int i13 = this.f6385f;
            int i14 = this.f6380a;
            if (i13 <= i14) {
                return;
            }
            int i15 = i13 - i14;
            q qVar2 = (q) arrayList.get(0);
            int i16 = qVar2.f6376b;
            if (i16 <= i15) {
                this.f6385f -= i16;
                arrayList.remove(0);
                int i17 = this.f6386g;
                if (i17 < 5) {
                    this.f6386g = i17 + 1;
                    qVarArr[i17] = qVar2;
                }
            } else {
                qVar2.f6376b = i16 - i15;
                this.f6385f -= i15;
            }
        }
    }

    public final float b() {
        int i8 = this.f6383d;
        ArrayList arrayList = this.f6381b;
        if (i8 != 0) {
            Collections.sort(arrayList, f6379i);
            this.f6383d = 0;
        }
        float f8 = 0.5f * this.f6385f;
        int i9 = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            q qVar = (q) arrayList.get(i10);
            i9 += qVar.f6376b;
            if (i9 >= f8) {
                return qVar.f6377c;
            }
        }
        if (arrayList.isEmpty()) {
            return Float.NaN;
        }
        return ((q) U2.g(arrayList, 1)).f6377c;
    }
}
