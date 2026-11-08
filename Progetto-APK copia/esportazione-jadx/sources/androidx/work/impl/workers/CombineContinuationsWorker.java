package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import p027d2.k;
import p027d2.l;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class CombineContinuationsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineContinuationsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        q0.h(context, "context");
        q0.h(workerParameters, "workerParams");
    }

    @Override // androidx.work.Worker
    public final l doWork() {
        return new k(getInputData());
    }
}
