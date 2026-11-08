package p074j2;

import android.os.Build;
import p082k2.f;
import p096m2.q;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f25687f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(p082k2.a aVar) {
        super(aVar);
        this.f25687f = 1;
        q0.h(aVar, "tracker");
    }

    @Override // p074j2.b
    public final boolean a(q qVar) {
        switch (this.f25687f) {
            case 0:
                q0.h(qVar, "workSpec");
                return qVar.f27251j.f24621b;
            case 1:
                q0.h(qVar, "workSpec");
                return qVar.f27251j.f24623d;
            case 2:
                q0.h(qVar, "workSpec");
                return qVar.f27251j.f24620a == 2;
            case 3:
                q0.h(qVar, "workSpec");
                int i8 = qVar.f27251j.f24620a;
                if (i8 != 3) {
                    return Build.VERSION.SDK_INT >= 30 && i8 == 6;
                }
                return true;
            default:
                q0.h(qVar, "workSpec");
                return qVar.f27251j.f24624e;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0025. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0031. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000b. Please report as an issue. */
    @Override // p074j2.b
    public final boolean b(Object obj) {
        int i8 = this.f25687f;
        switch (i8) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                switch (i8) {
                }
                return !zBooleanValue;
            case 1:
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                switch (i8) {
                }
                return !zBooleanValue2;
            case 2:
                return e((p066i2.a) obj);
            case 3:
                return e((p066i2.a) obj);
            default:
                boolean zBooleanValue3 = ((Boolean) obj).booleanValue();
                switch (i8) {
                }
                return !zBooleanValue3;
        }
    }

    public final boolean e(p066i2.a aVar) {
        switch (this.f25687f) {
            case 2:
                q0.h(aVar, "value");
                int i8 = Build.VERSION.SDK_INT;
                boolean z7 = aVar.f25553a;
                if (i8 >= 26) {
                    if (!z7 || !aVar.f25554b) {
                        return true;
                    }
                } else if (!z7) {
                    return true;
                }
                return false;
            default:
                q0.h(aVar, "value");
                return !aVar.f25553a || aVar.f25555c;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(f fVar, int i8) {
        super(fVar);
        this.f25687f = i8;
        if (i8 == 2) {
            q0.h(fVar, "tracker");
            super(fVar);
        } else if (i8 == 3) {
            q0.h(fVar, "tracker");
            super(fVar);
        } else if (i8 != 4) {
            q0.h(fVar, "tracker");
        } else {
            q0.h(fVar, "tracker");
            super(fVar);
        }
    }
}
