package p032e0;

import N.N;
import T.c;
import Z5.G;
import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class F implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24723G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f24724H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f24725I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f24726J;

    public /* synthetic */ F(Object obj, Object obj2, boolean z7, int i8) {
        this.f24723G = i8;
        this.f24726J = obj;
        this.f24725I = obj2;
        this.f24724H = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f24723G;
        Object obj = this.f24725I;
        Object obj2 = this.f24726J;
        switch (i8) {
            case 0:
                if (this.f24724H) {
                    return;
                }
                ((o) obj).f((EnumC2981i) obj2);
                this.f24724H = true;
                return;
            case 1:
                c cVar = ((SwipeDismissBehavior) obj2).f24105a;
                if (cVar == null || !cVar.f()) {
                    return;
                }
                WeakHashMap weakHashMap = N.f4843a;
                ((View) obj).postOnAnimation(this);
                return;
            default:
                ((G) obj2).getClass();
                throw null;
        }
    }

    public F(o oVar, EnumC2981i enumC2981i) {
        this.f24723G = 0;
        q0.h(oVar, "registry");
        q0.h(enumC2981i, "event");
        this.f24725I = oVar;
        this.f24726J = enumC2981i;
    }
}
