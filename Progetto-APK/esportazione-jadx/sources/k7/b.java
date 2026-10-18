package k7;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends Thread {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static int f26024K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f26025G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f26026H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public double f26027I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f26028J;

    public final double a() {
        try {
            new BigDecimal(f26024K);
            if (f26024K < 0) {
                return 0.0d;
            }
            return new BigDecimal(((((double) f26024K) / 1000.0d) * 8.0d) / ((System.currentTimeMillis() - this.f26028J) / 1000.0d)).setScale(2, RoundingMode.HALF_UP).doubleValue();
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            URL url = new URL(this.f26025G);
            f26024K = 0;
            this.f26028J = System.currentTimeMillis();
            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(4);
            for (int i8 = 0; i8 < 4; i8++) {
                executorServiceNewFixedThreadPool.execute(new p171w0.j(url));
            }
            executorServiceNewFixedThreadPool.shutdown();
            while (!executorServiceNewFixedThreadPool.isTerminated()) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
            }
            this.f26027I = ((((double) f26024K) / 1000.0d) * 8.0d) / ((System.currentTimeMillis() - this.f26028J) / 1000.0d);
        } catch (Exception e8) {
            e8.printStackTrace();
        }
        this.f26026H = true;
    }
}
