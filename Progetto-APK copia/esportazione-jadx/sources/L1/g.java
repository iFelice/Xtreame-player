package L1;

import android.adservices.topics.TopicsManager;
import android.content.Context;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class g extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4624b;

    /* JADX WARN: Illegal instructions before constructor call */
    public g(Context context, int i8) {
        this.f4624b = i8;
        if (i8 == 1) {
            q0.h(context, "context");
            TopicsManager topicsManager = TopicsManager.get(context);
            q0.g(topicsManager, "get(context)");
            super(topicsManager);
            return;
        }
        if (i8 == 2) {
            q0.h(context, "context");
            Object systemService = context.getSystemService((Class<Object>) d.q());
            q0.g(systemService, "context.getSystemService…opicsManager::class.java)");
            super(d.e(systemService));
            return;
        }
        if (i8 == 3) {
            q0.h(context, "context");
            Object systemService2 = context.getSystemService((Class<Object>) d.q());
            q0.g(systemService2, "context.getSystemService…opicsManager::class.java)");
            super(d.e(systemService2));
            return;
        }
        if (i8 != 4) {
            q0.h(context, "context");
            TopicsManager topicsManager2 = TopicsManager.get(context);
            q0.g(topicsManager2, "get(context)");
            super(topicsManager2);
            return;
        }
        q0.h(context, "context");
        Object systemService3 = context.getSystemService((Class<Object>) d.q());
        q0.g(systemService3, "context.getSystemService…opicsManager::class.java)");
        super(d.e(systemService3));
    }
}
