package Z6;

import java.io.IOException;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class B implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final B f8473a = new B();

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) throws IOException {
        c(sb, calendar.get(2) + 1);
    }

    @Override // Z6.s
    public final int b() {
        return 2;
    }

    @Override // Z6.q
    public final void c(Appendable appendable, int i8) throws IOException {
        if (i8 < 10) {
            appendable.append((char) (i8 + 48));
        } else {
            C.a(appendable, i8);
        }
    }
}
