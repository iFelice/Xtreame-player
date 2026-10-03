package Z6;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class A implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final A f8472a = new A();

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) {
        C.a(sb, (calendar.get(1) % 100) % 100);
    }

    @Override // Z6.s
    public final int b() {
        return 2;
    }

    @Override // Z6.q
    public final void c(Appendable appendable, int i8) {
        C.a(appendable, i8 % 100);
    }
}
