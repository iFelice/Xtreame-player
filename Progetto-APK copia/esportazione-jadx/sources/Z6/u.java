package Z6;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f8543b;

    public u(int i8, String[] strArr) {
        this.f8542a = i8;
        this.f8543b = strArr;
    }

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) {
        sb.append((CharSequence) this.f8543b[calendar.get(this.f8542a)]);
    }

    @Override // Z6.s
    public final int b() {
        String[] strArr = this.f8543b;
        int length = strArr.length;
        int i8 = 0;
        while (true) {
            length--;
            if (length < 0) {
                return i8;
            }
            int length2 = strArr[length].length();
            if (length2 > i8) {
                i8 = length2;
            }
        }
    }
}
