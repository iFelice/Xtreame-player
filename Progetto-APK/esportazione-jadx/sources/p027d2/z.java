package p027d2;

import A0.O;
import android.content.Context;
import androidx.work.WorkerParameters;

/* JADX INFO: loaded from: classes.dex */
public abstract class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f24653a = n.f("WorkerFactory");

    public final m a(Context context, String str, WorkerParameters workerParameters) {
        Class clsAsSubclass;
        String str2 = f24653a;
        m mVar = null;
        try {
            clsAsSubclass = Class.forName(str).asSubclass(m.class);
        } catch (Throwable th) {
            n.d().c(str2, "Invalid class: " + str, th);
            clsAsSubclass = null;
        }
        if (clsAsSubclass != null) {
            try {
                mVar = (m) clsAsSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Throwable th2) {
                n.d().c(str2, "Could not instantiate " + str, th2);
            }
        }
        if (mVar == null || !mVar.isUsed()) {
            return mVar;
        }
        throw new IllegalStateException(O.C("WorkerFactory (", getClass().getName(), ") returned an instance of a ListenableWorker (", str, ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker."));
    }
}
