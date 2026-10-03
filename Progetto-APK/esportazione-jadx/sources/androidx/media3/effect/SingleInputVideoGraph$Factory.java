package androidx.media3.effect;

import A0.Y;
import U0.ExecutorC0348n;
import U0.x;
import android.content.Context;
import p094m0.C3126i;
import p094m0.q0;
import p094m0.t0;
import p094m0.v0;

/* JADX INFO: loaded from: classes.dex */
public final class SingleInputVideoGraph$Factory implements t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0 f9452a;

    public SingleInputVideoGraph$Factory(q0 q0Var) {
        this.f9452a = q0Var;
    }

    @Override // p094m0.t0
    public final v0 a(Context context, C3126i c3126i, x xVar, ExecutorC0348n executorC0348n) {
        return new Y(context, this.f9452a, c3126i, xVar, executorC0348n);
    }
}
