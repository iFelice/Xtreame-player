package Z6;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8540b;

    public r(int i8, int i9) {
        if (i9 < 3) {
            throw new IllegalArgumentException();
        }
        this.f8539a = i8;
        this.f8540b = i9;
    }

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) {
        c(sb, calendar.get(this.f8539a));
    }

    @Override // Z6.s
    public final int b() {
        return this.f8540b;
    }

    @Override // Z6.q
    public final void c(Appendable appendable, int i8) {
        C.b(appendable, i8, this.f8540b);
    }
}
