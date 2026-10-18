package Z6;

import java.io.IOException;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class z implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8556b;

    public /* synthetic */ z(int i8, int i9) {
        this.f8555a = i9;
        this.f8556b = i8;
    }

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) throws IOException {
        int i8 = this.f8555a;
        int i9 = this.f8556b;
        switch (i8) {
            case 0:
                c(sb, calendar.get(i9));
                break;
            default:
                c(sb, calendar.get(i9));
                break;
        }
    }

    @Override // Z6.s
    public final int b() {
        switch (this.f8555a) {
            case 0:
                return 2;
            default:
                return 4;
        }
    }

    @Override // Z6.q
    public final void c(Appendable appendable, int i8) throws IOException {
        switch (this.f8555a) {
            case 0:
                if (i8 >= 100) {
                    C.b(appendable, i8, 2);
                } else {
                    C.a(appendable, i8);
                }
                break;
            default:
                if (i8 < 10) {
                    appendable.append((char) (i8 + 48));
                } else if (i8 >= 100) {
                    C.b(appendable, i8, 1);
                } else {
                    C.a(appendable, i8);
                }
                break;
        }
    }
}
