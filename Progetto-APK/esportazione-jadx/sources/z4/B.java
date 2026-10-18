package z4;

import com.google.android.gms.internal.ads.Cw;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class B extends Q3.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f31794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f31795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f31796e;

    public B(int i8) {
        Cw.g(i8, "initialCapacity");
        this.f31794c = new Object[i8];
        this.f31795d = 0;
    }

    public final void g0(Object obj) {
        obj.getClass();
        l0(1);
        Object[] objArr = this.f31794c;
        int i8 = this.f31795d;
        this.f31795d = i8 + 1;
        objArr[i8] = obj;
    }

    public final void h0(Object... objArr) {
        int length = objArr.length;
        Cw.d(length, objArr);
        l0(length);
        System.arraycopy(objArr, 0, this.f31794c, this.f31795d, length);
        this.f31795d += length;
    }

    public void i0(Object obj) {
        g0(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final B j0(List list) {
        if (list instanceof Collection) {
            l0(list.size());
            if (list instanceof C) {
                this.f31795d = ((C) list).c(this.f31795d, this.f31794c);
                return this;
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    public void k0(H h8) {
        j0(h8);
    }

    public final void l0(int i8) {
        Object[] objArr = this.f31794c;
        int iF = Q3.b.f(objArr.length, this.f31795d + i8);
        if (iF > objArr.length || this.f31796e) {
            this.f31794c = Arrays.copyOf(this.f31794c, iF);
            this.f31796e = false;
        }
    }
}
