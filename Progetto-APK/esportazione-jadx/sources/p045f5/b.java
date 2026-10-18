package p045f5;

import A0.O;
import G4.a;
import P3.c;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f25218a = new Object();

    static {
        new AtomicInteger(1);
    }

    public static void a() {
        synchronized (a.f3403a) {
            O.I(a.f3404b.get("[DEFAULT]"));
            throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + c.c() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
        }
    }
}
