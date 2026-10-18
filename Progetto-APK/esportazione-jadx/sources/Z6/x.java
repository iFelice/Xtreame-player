package Z6;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class x implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f8551b = new x(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final x f8552c = new x(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f8553a;

    public x(boolean z7) {
        this.f8553a = z7;
    }

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) {
        int i8 = calendar.get(16) + calendar.get(15);
        if (i8 < 0) {
            sb.append('-');
            i8 = -i8;
        } else {
            sb.append('+');
        }
        int i9 = i8 / 3600000;
        C.a(sb, i9);
        if (this.f8553a) {
            sb.append(':');
        }
        C.a(sb, (i8 / 60000) - (i9 * 60));
    }

    @Override // Z6.s
    public final int b() {
        return 5;
    }
}
