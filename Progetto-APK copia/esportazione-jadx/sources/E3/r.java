package E3;

import A0.O;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class r extends BasePendingResult {

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public q f2922W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final boolean f2923X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final /* synthetic */ j f2924Y;

    public r(j jVar, boolean z7) {
        this.f2924Y = jVar;
        this.f2923X = z7;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ o H0(Status status) {
        return new o(status, 1);
    }

    public abstract void Q0();

    public final H3.o R0() {
        if (this.f2922W == null) {
            this.f2922W = new q(this);
        }
        return this.f2922W;
    }

    public final void S0() {
        if (!this.f2923X) {
            Iterator it = this.f2924Y.f2909h.iterator();
            if (it.hasNext()) {
                O.I(it.next());
                throw null;
            }
            Iterator it2 = this.f2924Y.f2910i.iterator();
            while (it2.hasNext()) {
                ((h) it2.next()).getClass();
            }
        }
        try {
            synchronized (this.f2924Y.f2902a) {
                Q0();
            }
        } catch (H3.l unused) {
            L0(new o(new Status(2100, null, null, null), 1));
        }
    }
}
