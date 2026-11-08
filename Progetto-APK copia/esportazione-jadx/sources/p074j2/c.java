package p074j2;

import android.os.Build;
import p027d2.n;
import p066i2.a;
import p096m2.q;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c extends b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f25693f;

    static {
        String strF = n.f("NetworkMeteredCtrlr");
        q0.g(strF, "tagWithPrefix(\"NetworkMeteredCtrlr\")");
        f25693f = strF;
    }

    @Override // p074j2.b
    public final boolean a(q qVar) {
        q0.h(qVar, "workSpec");
        return qVar.f27251j.f24620a == 5;
    }

    @Override // p074j2.b
    public final boolean b(Object obj) {
        a aVar = (a) obj;
        q0.h(aVar, "value");
        int i8 = Build.VERSION.SDK_INT;
        boolean z7 = aVar.f25553a;
        if (i8 < 26) {
            n.d().a(f25693f, "Metered network constraint is not supported before API 26, only checking for connected state.");
            if (z7) {
                return false;
            }
        } else if (z7 && aVar.f25555c) {
            return false;
        }
        return true;
    }
}
