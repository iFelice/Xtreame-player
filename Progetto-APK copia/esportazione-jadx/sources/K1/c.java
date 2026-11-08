package K1;

import A0.F;
import android.adservices.measurement.MeasurementManager;
import android.content.Context;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c extends e {
    /* JADX WARN: Illegal instructions before constructor call */
    public c(Context context, int i8) {
        if (i8 != 1) {
            q0.h(context, "context");
            MeasurementManager measurementManager = MeasurementManager.get(context);
            q0.g(measurementManager, "get(context)");
            super(measurementManager);
            return;
        }
        q0.h(context, "context");
        Object systemService = context.getSystemService((Class<Object>) F.o());
        q0.g(systemService, "context.getSystemService…ementManager::class.java)");
        super(F.e(systemService));
    }
}
