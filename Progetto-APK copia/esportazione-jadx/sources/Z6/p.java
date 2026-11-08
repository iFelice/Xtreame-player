package Z6;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class p implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p f8535b = new p(3);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p f8536c = new p(5);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p f8537d = new p(6);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8538a;

    public p(int i8) {
        this.f8538a = i8;
    }

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) {
        int i8 = calendar.get(16) + calendar.get(15);
        if (i8 == 0) {
            sb.append("Z");
            return;
        }
        if (i8 < 0) {
            sb.append('-');
            i8 = -i8;
        } else {
            sb.append('+');
        }
        int i9 = i8 / 3600000;
        C.a(sb, i9);
        int i10 = this.f8538a;
        if (i10 < 5) {
            return;
        }
        if (i10 == 6) {
            sb.append(':');
        }
        C.a(sb, (i8 / 60000) - (i9 * 60));
    }

    @Override // Z6.s
    public final int b() {
        return this.f8538a;
    }
}
