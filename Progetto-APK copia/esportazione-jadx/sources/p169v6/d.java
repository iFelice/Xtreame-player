package p169v6;

import E6.a;
import N.B;
import java.io.Serializable;
import java.util.Iterator;
import java.util.NoSuchElementException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends B implements Iterator, a {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f30739K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(f fVar, int i8) {
        super(fVar);
        this.f30739K = i8;
        if (i8 == 1) {
            q0.h(fVar, "map");
            super(fVar);
        } else if (i8 != 2) {
            q0.h(fVar, "map");
        } else {
            q0.h(fVar, "map");
            super(fVar);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i8 = this.f30739K;
        Serializable serializable = this.f4835J;
        switch (i8) {
            case 0:
                a();
                int i9 = this.f4832G;
                f fVar = (f) serializable;
                if (i9 >= fVar.f30749L) {
                    throw new NoSuchElementException();
                }
                this.f4832G = i9 + 1;
                this.f4833H = i9;
                e eVar = new e(fVar, i9);
                e();
                return eVar;
            case 1:
                a();
                int i10 = this.f4832G;
                f fVar2 = (f) serializable;
                if (i10 >= fVar2.f30749L) {
                    throw new NoSuchElementException();
                }
                this.f4832G = i10 + 1;
                this.f4833H = i10;
                Object obj = fVar2.f30744G[i10];
                e();
                return obj;
            default:
                a();
                int i11 = this.f4832G;
                f fVar3 = (f) serializable;
                if (i11 >= fVar3.f30749L) {
                    throw new NoSuchElementException();
                }
                this.f4832G = i11 + 1;
                this.f4833H = i11;
                Object[] objArr = fVar3.f30745H;
                q0.e(objArr);
                Object obj2 = objArr[this.f4833H];
                e();
                return obj2;
        }
    }
}
