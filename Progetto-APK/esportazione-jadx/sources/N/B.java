package N;

import android.os.Build;
import android.view.View;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class B {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f4832G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4833H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f4834I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Serializable f4835J;

    public B(p169v6.f fVar) {
        q0.h(fVar, "map");
        this.f4835J = fVar;
        this.f4833H = -1;
        this.f4834I = fVar.f30751N;
        e();
    }

    public final void a() {
        if (((p169v6.f) this.f4835J).f30751N != this.f4834I) {
            throw new ConcurrentModificationException();
        }
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public final Object d(View view) {
        if (Build.VERSION.SDK_INT >= this.f4833H) {
            return b(view);
        }
        Object tag = view.getTag(this.f4832G);
        if (((Class) this.f4835J).isInstance(tag)) {
            return tag;
        }
        return null;
    }

    public final void e() {
        while (true) {
            int i8 = this.f4832G;
            Serializable serializable = this.f4835J;
            if (i8 >= ((p169v6.f) serializable).f30749L || ((p169v6.f) serializable).f30746I[i8] >= 0) {
                return;
            } else {
                this.f4832G = i8 + 1;
            }
        }
    }

    public final void f(View view, Object obj) {
        C0253b c0253b;
        if (Build.VERSION.SDK_INT >= this.f4833H) {
            c(view, obj);
            return;
        }
        if (g(d(view), obj)) {
            View.AccessibilityDelegate accessibilityDelegateD = N.d(view);
            if (accessibilityDelegateD == null) {
                c0253b = null;
            } else {
                c0253b = accessibilityDelegateD instanceof C0252a ? ((C0252a) accessibilityDelegateD).f4875a : new C0253b(accessibilityDelegateD);
            }
            if (c0253b == null) {
                c0253b = new C0253b();
            }
            N.m(view, c0253b);
            view.setTag(this.f4832G, obj);
            N.g(view, this.f4834I);
        }
    }

    public abstract boolean g(Object obj, Object obj2);

    public final boolean hasNext() {
        return this.f4832G < ((p169v6.f) this.f4835J).f30749L;
    }

    public final void remove() {
        a();
        if (this.f4833H == -1) {
            throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
        }
        Serializable serializable = this.f4835J;
        ((p169v6.f) serializable).c();
        ((p169v6.f) serializable).l(this.f4833H);
        this.f4833H = -1;
        this.f4834I = ((p169v6.f) serializable).f30751N;
    }

    public B(int i8, Class cls, int i9, int i10) {
        this.f4832G = i8;
        this.f4835J = cls;
        this.f4834I = i9;
        this.f4833H = i10;
    }
}
