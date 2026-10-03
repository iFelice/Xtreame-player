package p104n2;

import androidx.work.impl.WorkDatabase;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WorkDatabase f27448a;

    public i(WorkDatabase workDatabase, int i8) {
        if (i8 == 1) {
            this.f27448a = workDatabase;
        } else {
            q0.h(workDatabase, "workDatabase");
            this.f27448a = workDatabase;
        }
    }
}
