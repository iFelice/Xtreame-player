package Z6;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q f8534b;

    public /* synthetic */ o(q qVar, int i8) {
        this.f8533a = i8;
        this.f8534b = qVar;
    }

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) {
        int i8 = this.f8533a;
        q qVar = this.f8534b;
        switch (i8) {
            case 0:
                int i9 = calendar.get(7);
                qVar.c(sb, i9 != 1 ? i9 - 1 : 7);
                break;
            case 1:
                int leastMaximum = calendar.get(10);
                if (leastMaximum == 0) {
                    leastMaximum = calendar.getLeastMaximum(10) + 1;
                }
                qVar.c(sb, leastMaximum);
                break;
            case 2:
                int maximum = calendar.get(11);
                if (maximum == 0) {
                    maximum = calendar.getMaximum(11) + 1;
                }
                qVar.c(sb, maximum);
                break;
            default:
                qVar.c(sb, calendar.getWeekYear());
                break;
        }
    }

    @Override // Z6.s
    public final int b() {
        int i8 = this.f8533a;
        q qVar = this.f8534b;
        switch (i8) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return qVar.b();
    }

    @Override // Z6.q
    public final void c(Appendable appendable, int i8) {
        int i9 = this.f8533a;
        q qVar = this.f8534b;
        switch (i9) {
            case 0:
                qVar.c(appendable, i8);
                break;
            case 1:
                qVar.c(appendable, i8);
                break;
            case 2:
                qVar.c(appendable, i8);
                break;
            default:
                qVar.c(appendable, i8);
                break;
        }
    }
}
