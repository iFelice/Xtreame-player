package p048g0;

import U4.b;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.Fw;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f25292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f25293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f25294c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f25295d;

    public a(Fw fw, C1936re c1936re, ScheduledExecutorService scheduledExecutorService) {
        this.f25292a = true;
        this.f25293b = c1936re;
        this.f25294c = scheduledExecutorService;
        this.f25295d = fw;
    }

    public a() {
        this.f25293b = new b(18);
        this.f25294c = new LinkedHashMap();
        this.f25295d = new LinkedHashSet();
    }
}
