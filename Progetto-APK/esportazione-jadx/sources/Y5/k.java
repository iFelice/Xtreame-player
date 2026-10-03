package Y5;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Logger f8165d = Logger.getLogger(k.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentSkipListMap f8166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f8167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f8168c;

    static {
        new k();
    }

    public k() {
        new ConcurrentSkipListMap();
        this.f8166a = new ConcurrentSkipListMap();
        this.f8167b = new ConcurrentHashMap();
        this.f8168c = new ConcurrentHashMap();
        new ConcurrentHashMap();
    }
}
