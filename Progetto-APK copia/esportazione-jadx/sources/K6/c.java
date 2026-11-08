package K6;

import J6.AbstractC0225y;
import J6.C0215n;
import J6.InterfaceC0223w;
import J6.J;
import J6.Q;
import J6.S;
import N6.p;
import O6.e;
import android.os.Handler;
import android.os.Looper;
import com.google.protobuf.U2;
import java.util.concurrent.CancellationException;
import p185x6.j;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends S implements InterfaceC0223w {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Handler f4595I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f4596J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f4597K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final c f4598L;

    public c(Handler handler) {
        this(handler, null, false);
    }

    @Override // J6.AbstractC0214m
    public final void a0(j jVar, Runnable runnable) {
        if (this.f4595I.post(runnable)) {
            return;
        }
        CancellationException cancellationException = new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        J j8 = (J) jVar.k(C0215n.f4245H);
        if (j8 != null) {
            ((Q) j8).e(cancellationException);
        }
        e eVar = AbstractC0225y.f4262a;
        O6.d.f5671I.a0(jVar, runnable);
    }

    @Override // J6.AbstractC0214m
    public final boolean b0(j jVar) {
        return (this.f4597K && q0.c(Looper.myLooper(), this.f4595I.getLooper())) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (cVar.f4595I == this.f4595I && cVar.f4597K == this.f4597K) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f4595I) ^ (this.f4597K ? 1231 : 1237);
    }

    @Override // J6.AbstractC0214m
    public final String toString() {
        c cVar;
        String str;
        e eVar = AbstractC0225y.f4262a;
        S s7 = p.f4994a;
        if (this == s7) {
            str = "Dispatchers.Main";
        } else {
            try {
                cVar = ((c) s7).f4598L;
            } catch (UnsupportedOperationException unused) {
                cVar = null;
            }
            str = this == cVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.f4596J;
        if (string == null) {
            string = this.f4595I.toString();
        }
        return this.f4597K ? U2.A(string, ".immediate") : string;
    }

    public c(Handler handler, String str, boolean z7) {
        this.f4595I = handler;
        this.f4596J = str;
        this.f4597K = z7;
        this.f4598L = z7 ? this : new c(handler, str, true);
    }
}
