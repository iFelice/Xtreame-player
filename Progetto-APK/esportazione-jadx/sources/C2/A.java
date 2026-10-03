package C2;

import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public final class A {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ArrayDeque f1343d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f1346c;

    static {
        char[] cArr = P2.o.f5906a;
        f1343d = new ArrayDeque(0);
    }

    public static A a(Object obj) {
        A a8;
        ArrayDeque arrayDeque = f1343d;
        synchronized (arrayDeque) {
            a8 = (A) arrayDeque.poll();
        }
        if (a8 == null) {
            a8 = new A();
        }
        a8.f1346c = obj;
        a8.f1345b = 0;
        a8.f1344a = 0;
        return a8;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof A)) {
            return false;
        }
        A a8 = (A) obj;
        return this.f1345b == a8.f1345b && this.f1344a == a8.f1344a && this.f1346c.equals(a8.f1346c);
    }

    public final int hashCode() {
        return this.f1346c.hashCode() + (((this.f1344a * 31) + this.f1345b) * 31);
    }
}
