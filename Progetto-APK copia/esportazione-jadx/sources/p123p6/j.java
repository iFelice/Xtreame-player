package p123p6;

import com.google.android.gms.internal.measurement.T1;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f28252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f28253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference f28254c = new AtomicReference();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f28255d = new ConcurrentHashMap();

    static {
        int i8;
        Properties properties = System.getProperties();
        boolean z7 = properties.containsKey("rx2.purge-enabled") ? Boolean.parseBoolean(properties.getProperty("rx2.purge-enabled")) : true;
        if (z7 && properties.containsKey("rx2.purge-period-seconds")) {
            try {
                i8 = Integer.parseInt(properties.getProperty("rx2.purge-period-seconds"));
            } catch (NumberFormatException unused) {
                i8 = 1;
            }
        } else {
            i8 = 1;
        }
        f28252a = z7;
        f28253b = i8;
        if (!z7) {
            return;
        }
        while (true) {
            AtomicReference atomicReference = f28254c;
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new i("RxSchedulerPurge"));
            do {
                if (atomicReference.compareAndSet(scheduledExecutorService, scheduledExecutorServiceNewScheduledThreadPool)) {
                    T1 t7 = new T1(3);
                    long j8 = f28253b;
                    scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(t7, j8, j8, TimeUnit.SECONDS);
                    return;
                }
            } while (atomicReference.get() == scheduledExecutorService);
            scheduledExecutorServiceNewScheduledThreadPool.shutdownNow();
        }
    }
}
