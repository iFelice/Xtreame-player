package p120p3;

import com.google.android.gms.common.api.d;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p093m.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f28201a;

    static {
        new ThreadPoolExecutor(2, d.API_PRIORITY_OTHER, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new c("ClientDefault"));
        f28201a = Executors.newSingleThreadExecutor(new c("ClientSingle"));
    }
}
