package Z6;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f8541a;

    public t(String str) {
        this.f8541a = str;
    }

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) {
        sb.append((CharSequence) this.f8541a);
    }

    @Override // Z6.s
    public final int b() {
        return this.f8541a.length();
    }
}
