package B0;

import O1.AbstractC0326z;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class U {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f833e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f834f;

    public /* synthetic */ U(Object obj, int i8) {
        this.f829a = i8;
        this.f834f = obj;
    }

    public final void a() {
        this.f831c = this.f832d ? ((AbstractC0326z) this.f834f).f() : ((AbstractC0326z) this.f834f).h();
    }

    public final void b(View view, int i8) {
        if (this.f832d) {
            this.f831c = ((AbstractC0326z) this.f834f).j() + ((AbstractC0326z) this.f834f).b(view);
        } else {
            this.f831c = ((AbstractC0326z) this.f834f).d(view);
        }
        this.f830b = i8;
    }

    public final void c(View view, int i8) {
        int iJ = ((AbstractC0326z) this.f834f).j();
        if (iJ >= 0) {
            b(view, i8);
            return;
        }
        this.f830b = i8;
        if (!this.f832d) {
            int iD = ((AbstractC0326z) this.f834f).d(view);
            int iH = iD - ((AbstractC0326z) this.f834f).h();
            this.f831c = iD;
            if (iH > 0) {
                int iF = (((AbstractC0326z) this.f834f).f() - Math.min(0, (((AbstractC0326z) this.f834f).f() - iJ) - ((AbstractC0326z) this.f834f).b(view))) - (((AbstractC0326z) this.f834f).c(view) + iD);
                if (iF < 0) {
                    this.f831c -= Math.min(iH, -iF);
                    return;
                }
                return;
            }
            return;
        }
        int iF2 = (((AbstractC0326z) this.f834f).f() - iJ) - ((AbstractC0326z) this.f834f).b(view);
        this.f831c = ((AbstractC0326z) this.f834f).f() - iF2;
        if (iF2 > 0) {
            int iC = this.f831c - ((AbstractC0326z) this.f834f).c(view);
            int iH2 = ((AbstractC0326z) this.f834f).h();
            int iMin = iC - (Math.min(((AbstractC0326z) this.f834f).d(view) - iH2, 0) + iH2);
            if (iMin < 0) {
                this.f831c = Math.min(iF2, -iMin) + this.f831c;
            }
        }
    }

    public final void d(int i8) {
        this.f832d |= i8 > 0;
        this.f830b += i8;
    }

    public final void e() {
        this.f830b = -1;
        this.f831c = Integer.MIN_VALUE;
        this.f832d = false;
        this.f833e = false;
    }

    public final void f(int i8) {
        this.f832d = 1 == ((this.f832d ? 1 : 0) | i8);
        this.f830b += i8;
    }

    public final String toString() {
        switch (this.f829a) {
            case 1:
                return "AnchorInfo{mPosition=" + this.f830b + ", mCoordinate=" + this.f831c + ", mLayoutFromEnd=" + this.f832d + ", mValid=" + this.f833e + '}';
            default:
                return super.toString();
        }
    }

    public U() {
        this.f829a = 1;
        e();
    }
}
